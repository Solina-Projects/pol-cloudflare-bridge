// src/worker.js
import { connect } from "cloudflare:sockets";

// src/core.js
var PROTOCOL = 1;
var DEFAULT_HOSTS = "muse.ai,*.muse.ai,*.fbcdn.net,*.fbsbx.com,www.google.com,recaptcha.google.com,www.gstatic.com,www.recaptcha.net,hcaptcha.com,*.hcaptcha.com,challenges.cloudflare.com";
var MAX_FRAME = 128 * 1024;
var MAX_QUEUED = 1024 * 1024;
var MAX_BYTES = 64 * 1024 * 1024;
var MAX_LIFETIME_MS = 10 * 60 * 1e3;
var CONNECT_TIMEOUT_MS = 1e4;
var securityHeaders = {
  "Cache-Control": "no-store",
  "X-Content-Type-Options": "nosniff",
  "Referrer-Policy": "no-referrer",
  "Content-Security-Policy": "default-src 'none'; style-src 'unsafe-inline'; frame-ancestors 'none'; base-uri 'none'",
  "Strict-Transport-Security": "max-age=31536000"
};
function json(data, status = 200, extra = {}) {
  return new Response(JSON.stringify(data), {
    status,
    headers: { ...securityHeaders, "Content-Type": "application/json; charset=utf-8", ...extra }
  });
}
function validHostname(host) {
  if (typeof host !== "string" || host.length > 253 || host.length < 4) return false;
  if (host !== host.toLowerCase() || host.endsWith(".") || !host.includes(".")) return false;
  if (/^\d+(\.\d+){3}$/.test(host)) return false;
  return host.split(".").every(
    (label) => label.length > 0 && label.length <= 63 && /^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/.test(label)
  );
}
function hostAllowed(host, list = DEFAULT_HOSTS) {
  if (!validHostname(host)) return false;
  return true;
}
async function authorized(request, secret) {
  const value = request.headers.get("Authorization") || "";
  if (!value.startsWith("Bearer ") || value.length > 280) return false;
  const encoder = new TextEncoder();
  const [a, b] = await Promise.all([
    crypto.subtle.digest("SHA-256", encoder.encode(value.slice(7))),
    crypto.subtle.digest("SHA-256", encoder.encode(secret))
  ]);
  const aa = new Uint8Array(a), bb = new Uint8Array(b);
  let difference = 0;
  for (let i = 0; i < aa.length; i++) difference |= aa[i] ^ bb[i];
  return difference === 0;
}
async function withTimeout(promise, milliseconds) {
  let timer;
  try {
    return await Promise.race([
      promise,
      new Promise((_, reject) => {
        timer = setTimeout(() => reject(new Error("TIMEOUT")), milliseconds);
      })
    ]);
  } finally {
    clearTimeout(timer);
  }
}
function page() {
  return new Response(`<!doctype html><html lang="fa" dir="rtl"><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>\u067E\u0644 \xB7 Cloudflare Bridge</title><style>body{background:#0a101d;color:#edf2fa;font-family:system-ui,sans-serif;line-height:1.9;margin:0;padding:10vh 7vw}main{max-width:680px;margin:auto}small{color:#9cabbf}h1{font-size:48px;margin:14px 0;color:#b8f87a}section{background:#111c2b;border:1px solid #29374b;border-radius:22px;padding:24px;margin:25px 0}code{direction:ltr;display:inline-block;color:#b8f87a}b{color:#fff}</style><main><small>PERSONAL CLOUDFLARE BRIDGE \xB7 v0.2 AUTO TEST</small><h1>\u067E\u0644 \u0622\u0645\u0627\u062F\u0647\u0654 \u062A\u0646\u0638\u06CC\u0645 \u0627\u0633\u062A.</h1><section>\u0627\u06CC\u0646 Worker \u06CC\u06A9 \u062A\u0648\u0646\u0644 \u0634\u062E\u0635\u06CC \u0627\u0633\u062A\u060C \u0646\u0647 \u0635\u0641\u062D\u0647\u0654 \u0648\u0631\u0648\u062F Muse.<br>\u0628\u0631\u0627\u06CC \u0627\u062A\u0635\u0627\u0644\u060C \u0622\u062F\u0631\u0633 \u0647\u0645\u06CC\u0646 Worker \u0648 \u06A9\u0644\u06CC\u062F <code>BRIDGE_TOKEN</code> \u0631\u0627 \u062F\u0631 \u0627\u067E \u067E\u0644 \u0648\u0627\u0631\u062F \u06A9\u0646\u06CC\u062F.<br><br><b>\u0631\u0645\u0632 \u0627\u06CC\u0645\u06CC\u0644 \u06CC\u0627 \u0631\u0645\u0632 Muse \u0631\u0627 \u0627\u06CC\u0646\u062C\u0627 \u0648\u0627\u0631\u062F \u0646\u06A9\u0646\u06CC\u062F.</b> \u0627\u06CC\u0646 \u0635\u0641\u062D\u0647 \u0647\u06CC\u0686 \u0641\u0631\u0645 \u0648\u0631\u0648\u062F \u0648 \u0647\u06CC\u0686 \u0627\u0633\u06A9\u0631\u06CC\u067E\u062A\u06CC \u0646\u062F\u0627\u0631\u062F.</section><p>\u0645\u0642\u0635\u062F\u060C \u0627\u062A\u0635\u0627\u0644 TLS \u0627\u0635\u0644\u06CC \u0631\u0627 \u062F\u0631\u06CC\u0627\u0641\u062A \u0645\u06CC\u200C\u06A9\u0646\u062F. \u0627\u06CC\u0646 \u067E\u0644 TLS \u0648\u0628\u200C\u0633\u0627\u06CC\u062A \u0631\u0627 \u0628\u0627\u0632 \u0646\u0645\u06CC\u200C\u06A9\u0646\u062F\u060C \u0633\u0634\u0646 \u062A\u062D\u0648\u06CC\u0644 \u0646\u0645\u06CC\u200C\u062F\u0647\u062F \u0648 \u062D\u0633\u0627\u0628 \u0646\u0645\u06CC\u200C\u0633\u0627\u0632\u062F.</p><small>\u06A9\u0634\u0648\u0631 \u062E\u0631\u0648\u062C\u06CC \u0648 \u0645\u0648\u0641\u0642\u06CC\u062A \u062B\u0628\u062A\u200C\u0646\u0627\u0645 \u062A\u0636\u0645\u06CC\u0646 \u0646\u0634\u062F\u0647\u200C\u0627\u0646\u062F. \u0627\u06CC\u0646 \u067E\u0631\u0648\u0698\u0647 \u0645\u0633\u062A\u0642\u0644 \u0627\u0633\u062A \u0648 \u0648\u0627\u0628\u0633\u062A\u0647 \u0628\u0647 Muse\u060C Meta \u06CC\u0627 Cloudflare \u0646\u06CC\u0633\u062A.</small></main></html>`, {
    headers: { ...securityHeaders, "Content-Type": "text/html; charset=utf-8" }
  });
}
async function probe(connect2) {
  let socket;
  try {
    socket = connect2({ hostname: "muse.ai", port: 443 }, { secureTransport: "on", allowHalfOpen: false });
    socket.closed.catch(() => {
    });
    await withTimeout(socket.opened, CONNECT_TIMEOUT_MS);
    const writer = socket.writable.getWriter();
    await writer.write(new TextEncoder().encode("HEAD / HTTP/1.1\r\nHost: muse.ai\r\nConnection: close\r\nUser-Agent: Pol-Bridge-Network-Probe/0.2\r\n\r\n"));
    const reader = socket.readable.getReader();
    const decoder = new TextDecoder();
    let head = "";
    while (head.length < 8192 && !head.includes("\r\n\r\n")) {
      const { done, value } = await withTimeout(reader.read(), CONNECT_TIMEOUT_MS);
      if (done) break;
      head += decoder.decode(value, { stream: true });
    }
    const match = /^HTTP\/\d(?:\.\d)?\s+(\d{3})/.exec(head);
    return json({
      ok: true,
      protocol: PROTOCOL,
      networkReachable: true,
      websiteHttpStatus: match ? Number(match[1]) : null,
      registrationTested: false,
      exitCountryVerified: false,
      note: "A TCP/TLS connection or HTTP response is NOT proof of signup eligibility."
    });
  } catch {
    return json({
      ok: false,
      code: "TCP_EGRESS_FAILED",
      networkReachable: false,
      registrationTested: false,
      exitCountryVerified: false,
      note: "The Worker could not complete the network probe. No account action was attempted."
    }, 502);
  } finally {
    if (socket) await socket.close().catch(() => {
    });
  }
}
function startTunnel(server, host, connect2) {
  let socket, writer;
  let ended = false, ready = false, queued = 0, total = 0;
  let writes = Promise.resolve();
  let lifetime;
  const finish = (code = 1e3, reason = "Closed") => {
    if (ended) return;
    ended = true;
    clearTimeout(lifetime);
    try {
      server.close(code, reason);
    } catch {
    }
    if (socket) void socket.close().catch(() => {
    });
  };
  const fail = (code) => {
    if (!ended) {
      try {
        server.send(JSON.stringify({ type: "error", code }));
      } catch {
      }
      finish(4001, code);
    }
  };
  server.binaryType = "arraybuffer";
  server.accept();
  server.addEventListener("close", () => finish());
  server.addEventListener("error", () => finish(4001, "WebSocket error"));
  server.addEventListener("message", (event) => {
    if (ended) return;
    if (!ready || typeof event.data === "string") {
      fail("PROTOCOL_ERROR");
      return;
    }
    let bytes;
    if (event.data instanceof ArrayBuffer) bytes = new Uint8Array(event.data);
    else if (ArrayBuffer.isView(event.data)) bytes = new Uint8Array(event.data.buffer, event.data.byteOffset, event.data.byteLength);
    else {
      fail("PROTOCOL_ERROR");
      return;
    }
    if (!bytes.byteLength) return;
    total += bytes.byteLength;
    queued += bytes.byteLength;
    if (bytes.byteLength > MAX_FRAME || queued > MAX_QUEUED || total > MAX_BYTES) {
      fail("LIMIT_REACHED");
      return;
    }
    writes = writes.then(async () => {
      try {
        if (!ended) await writer.write(bytes);
      } finally {
        queued -= bytes.byteLength;
      }
    }).catch(() => fail("UPSTREAM_WRITE_FAILED"));
  });
  lifetime = setTimeout(() => finish(1e3, "Session time limit; reconnect"), MAX_LIFETIME_MS);
  void (async () => {
    try {
      socket = connect2({ hostname: host, port: 443 }, { secureTransport: "off", allowHalfOpen: false });
      socket.closed.catch(() => {
      });
      await withTimeout(socket.opened, CONNECT_TIMEOUT_MS);
      if (ended) {
        await socket.close();
        return;
      }
      writer = socket.writable.getWriter();
      ready = true;
      server.send(JSON.stringify({ type: "ready", protocol: PROTOCOL }));
      const reader = socket.readable.getReader();
      try {
        while (!ended) {
          const { done, value } = await reader.read();
          if (done) break;
          total += value.byteLength;
          if (total > MAX_BYTES) {
            fail("LIMIT_REACHED");
            break;
          }
          for (let offset = 0; offset < value.byteLength && !ended; offset += 32768) {
            server.send(value.subarray(offset, offset + 32768));
          }
        }
      } finally {
        reader.releaseLock();
      }
      finish();
    } catch {
      fail("TCP_EGRESS_FAILED");
    }
  })();
}
function makeWorker({
  connect: connect2,
  createWebSocketPair = () => new WebSocketPair(),
  upgradeResponse = (client) => new Response(null, { status: 101, webSocket: client })
}) {
  return {
    async fetch(request, env = {}) {
      const url = new URL(request.url);
      if (request.method !== "GET") return json({ ok: false, code: "METHOD_NOT_ALLOWED" }, 405, { Allow: "GET" });
      if (url.pathname === "/") return page();
      if (!["/health", "/probe", "/tunnel"].includes(url.pathname)) return json({ ok: false, code: "NOT_FOUND" }, 404);
      const secret = env.BRIDGE_TOKEN;
      if (typeof secret !== "string" || secret.length < 24 || secret.length > 256) {
        return json({ ok: false, code: "CONFIG_REQUIRED" }, 503);
      }
      if (!await authorized(request, secret)) return json({ ok: false, code: "UNAUTHORIZED" }, 401, { "WWW-Authenticate": "Bearer" });
      if (url.pathname === "/health") return json({
        ok: true,
        protocol: PROTOCOL,
        transport: "tls-passthrough-over-websocket",
        ingressColo: request.cf?.colo || null,
        placementHeader: request.headers.get("cf-placement") || null,
        configuredPlacementHint: env.PLACEMENT_HINT || null,
        exitCountryVerified: false,
        registrationTested: false
      });
      if (url.pathname === "/probe") return probe(connect2);
      const host = url.searchParams.get("host") || "";
      if (url.searchParams.getAll("host").length !== 1 || !hostAllowed(host, env.ALLOWED_HOSTS || DEFAULT_HOSTS)) {
        return json({ ok: false, code: "TARGET_NOT_ALLOWED" }, 403);
      }
      if ((request.headers.get("Upgrade") || "").toLowerCase() !== "websocket") {
        return json({ ok: false, code: "WEBSOCKET_REQUIRED" }, 426, { Upgrade: "websocket" });
      }
      const pair = createWebSocketPair();
      startTunnel(pair[1], host, connect2);
      return upgradeResponse(pair[0]);
    }
  };
}

// src/worker.js
var worker_default = makeWorker({ connect });
export {
  worker_default as default
};
