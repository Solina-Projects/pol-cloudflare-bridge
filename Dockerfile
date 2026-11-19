# syntax=docker/dockerfile:1
FROM node:20-alpine AS worker-env

LABEL maintainer="Guts <imgutss@users.noreply.github.com>"
LABEL description="Pol Cloudflare Bridge Edge Worker Local Emulation & Development"

WORKDIR /app

# Copy worker manifests and source
COPY worker/package*.json ./worker/
COPY worker/wrangler.toml ./worker/
COPY worker/src ./worker/src
COPY web-ui ./web-ui

WORKDIR /app/worker

RUN npm install

EXPOSE 8787

# Run local worker dev server via Miniflare/Wrangler
CMD ["npx", "wrangler", "dev", "--ip", "0.0.0.0", "--port", "8787"]
