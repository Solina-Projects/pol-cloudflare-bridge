.class public final Lapp/pol/bridge/LocalBridgeProxy;
.super Ljava/lang/Object;
.source "LocalBridgeProxy.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/pol/bridge/LocalBridgeProxy$Events;,
        Lapp/pol/bridge/LocalBridgeProxy$Target;,
        Lapp/pol/bridge/LocalBridgeProxy$Channel;
    }
.end annotation


# static fields
.field private static final END:[B


# instance fields
.field private final browsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final capacity:Ljava/util/concurrent/Semaphore;

.field private final client:Lokhttp3/OkHttpClient;

.field private final endpoint:Lokhttp3/HttpUrl;

.field private final events:Lapp/pol/bridge/LocalBridgeProxy$Events;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private listener:Ljava/net/ServerSocket;

.field private volatile running:Z

.field private final token:Ljava/lang/String;

.field private final websockets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lokhttp3/WebSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetevents(Lapp/pol/bridge/LocalBridgeProxy;)Lapp/pol/bridge/LocalBridgeProxy$Events;
    .locals 0

    iget-object p0, p0, Lapp/pol/bridge/LocalBridgeProxy;->events:Lapp/pol/bridge/LocalBridgeProxy$Events;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetEND()[B
    .locals 1

    sget-object v0, Lapp/pol/bridge/LocalBridgeProxy;->END:[B

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    new-array v0, v0, [B

    sput-object v0, Lapp/pol/bridge/LocalBridgeProxy;->END:[B

    return-void
.end method

.method public constructor <init>(Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/OkHttpClient;Lapp/pol/bridge/LocalBridgeProxy$Events;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->capacity:Ljava/util/concurrent/Semaphore;

    .line 52
    new-instance v0, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda1;-><init>()V

    const/16 v1, 0x100

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->executor:Ljava/util/concurrent/ExecutorService;

    .line 57
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->browsers:Ljava/util/Set;

    .line 58
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->websockets:Ljava/util/Set;

    .line 63
    iput-object p1, p0, Lapp/pol/bridge/LocalBridgeProxy;->endpoint:Lokhttp3/HttpUrl;

    .line 64
    iput-object p2, p0, Lapp/pol/bridge/LocalBridgeProxy;->token:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lapp/pol/bridge/LocalBridgeProxy;->client:Lokhttp3/OkHttpClient;

    .line 66
    iput-object p4, p0, Lapp/pol/bridge/LocalBridgeProxy;->events:Lapp/pol/bridge/LocalBridgeProxy$Events;

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 257
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private handle(Ljava/net/Socket;)V
    .locals 14

    .line 139
    const-string v0, "Client closed"

    .line 0
    const-string v1, "Bearer "

    const/16 v2, 0x1f6

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 143
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :try_start_1
    invoke-static {v6}, Lapp/pol/bridge/LocalBridgeProxy;->readHeader(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lapp/pol/bridge/LocalBridgeProxy;->parseConnect(Ljava/lang/String;)Lapp/pol/bridge/LocalBridgeProxy$Target;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :try_start_2
    iget-object v7, v7, Lapp/pol/bridge/LocalBridgeProxy$Target;->host:Ljava/lang/String;

    .line 148
    new-instance v8, Lapp/pol/bridge/LocalBridgeProxy$Channel;

    invoke-direct {v8, p0, v7}, Lapp/pol/bridge/LocalBridgeProxy$Channel;-><init>(Lapp/pol/bridge/LocalBridgeProxy;Ljava/lang/String;)V

    .line 149
    iget-object v9, p0, Lapp/pol/bridge/LocalBridgeProxy;->endpoint:Lokhttp3/HttpUrl;

    invoke-virtual {v9}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v9

    const-string v10, "/tunnel"

    invoke-virtual {v9, v10}, Lokhttp3/HttpUrl$Builder;->encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Lokhttp3/HttpUrl$Builder;->query(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v9

    const-string v10, "host"

    .line 150
    invoke-virtual {v9, v10, v7}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v9

    .line 151
    new-instance v10, Lokhttp3/Request$Builder;

    invoke-direct {v10}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v10, v9}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v9

    const-string v10, "Authorization"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lapp/pol/bridge/LocalBridgeProxy;->token:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v9, v10, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v9, "X-Pol-Protocol"

    const-string v10, "1"

    .line 153
    invoke-virtual {v1, v9, v10}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 154
    iget-object v9, p0, Lapp/pol/bridge/LocalBridgeProxy;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v9, v1, v8}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object v4

    .line 155
    iget-object v1, p0, Lapp/pol/bridge/LocalBridgeProxy;->websockets:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, v8, Lapp/pol/bridge/LocalBridgeProxy$Channel;->readySignal:Ljava/util/concurrent/CountDownLatch;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x2ee0

    invoke-virtual {v1, v10, v11, v9}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, v8, Lapp/pol/bridge/LocalBridgeProxy$Channel;->ready:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    invoke-virtual {p1, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 162
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 163
    const-string v7, "HTTP/1.1 200 Connection Established\r\nProxy-Agent: Pol/0.1\r\n\r\n"

    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write([B)V

    .line 164
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v7, 0x1

    .line 166
    :try_start_3
    iget-object v9, p0, Lapp/pol/bridge/LocalBridgeProxy;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0, v8, v1, p1}, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda0;-><init>(Lapp/pol/bridge/LocalBridgeProxy;Lapp/pol/bridge/LocalBridgeProxy$Channel;Ljava/io/OutputStream;Ljava/net/Socket;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const v1, 0x8000

    .line 178
    new-array v1, v1, [B

    .line 180
    :cond_1
    iget-boolean v9, p0, Lapp/pol/bridge/LocalBridgeProxy;->running:Z

    if-eqz v9, :cond_3

    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 181
    :goto_0
    iget-boolean v10, p0, Lapp/pol/bridge/LocalBridgeProxy;->running:Z

    if-eqz v10, :cond_2

    iget-object v10, v8, Lapp/pol/bridge/LocalBridgeProxy$Channel;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v4}, Lokhttp3/WebSocket;->queueSize()J

    move-result-wide v10

    const-wide/32 v12, 0x200000

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    const-wide/16 v10, 0xa

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v10, v8, Lapp/pol/bridge/LocalBridgeProxy$Channel;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v1, v5, v9}, Lokio/ByteString;->of([BII)Lokio/ByteString;

    move-result-object v9

    invoke-interface {v4, v9}, Lokhttp3/WebSocket;->send(Lokio/ByteString;)Z

    move-result v9
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v9, :cond_1

    :cond_3
    if-eqz v4, :cond_8

    goto :goto_4

    :catch_0
    move v5, v7

    goto :goto_3

    .line 157
    :cond_4
    :goto_1
    :try_start_4
    const-string v1, "Cloudflare tunnel unavailable"

    invoke-static {p1, v2, v1}, Lapp/pol/bridge/LocalBridgeProxy;->reply(Ljava/net/Socket;ILjava/lang/String;)V

    .line 158
    iget-object v1, p0, Lapp/pol/bridge/LocalBridgeProxy;->events:Lapp/pol/bridge/LocalBridgeProxy$Events;

    if-eqz v1, :cond_5

    iget-object v1, v8, Lapp/pol/bridge/LocalBridgeProxy$Channel;->failureCode:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p0, Lapp/pol/bridge/LocalBridgeProxy;->events:Lapp/pol/bridge/LocalBridgeProxy$Events;

    const-string v6, "TUNNEL_TIMEOUT"

    invoke-interface {v1, v7, v6}, Lapp/pol/bridge/LocalBridgeProxy$Events;->onTunnelError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    if-eqz v4, :cond_6

    .line 189
    invoke-interface {v4, v3, v0}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->websockets:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 190
    :cond_6
    :goto_2
    invoke-static {p1}, Lapp/pol/bridge/LocalBridgeProxy;->closeQuietly(Ljava/io/Closeable;)V

    .line 191
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->browsers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 192
    iget-object p1, p0, Lapp/pol/bridge/LocalBridgeProxy;->capacity:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 193
    invoke-direct {p0}, Lapp/pol/bridge/LocalBridgeProxy;->updateActive()V

    return-void

    .line 146
    :catch_1
    :try_start_5
    const-string v1, "HTTPS CONNECT on port 443 required"

    const/16 v6, 0x190

    invoke-static {p1, v6, v1}, Lapp/pol/bridge/LocalBridgeProxy;->reply(Ljava/net/Socket;ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_2
    :goto_3
    if-nez v5, :cond_7

    .line 187
    :try_start_6
    const-string v1, "Bridge unavailable"

    invoke-static {p1, v2, v1}, Lapp/pol/bridge/LocalBridgeProxy;->reply(Ljava/net/Socket;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    if-eqz v4, :cond_8

    .line 189
    :goto_4
    invoke-interface {v4, v3, v0}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->websockets:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 190
    :cond_8
    invoke-static {p1}, Lapp/pol/bridge/LocalBridgeProxy;->closeQuietly(Ljava/io/Closeable;)V

    .line 191
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->browsers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 192
    iget-object p1, p0, Lapp/pol/bridge/LocalBridgeProxy;->capacity:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 193
    invoke-direct {p0}, Lapp/pol/bridge/LocalBridgeProxy;->updateActive()V

    goto :goto_5

    .line 185
    :catch_3
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_8

    goto :goto_4

    :goto_5
    return-void

    :goto_6
    if-eqz v4, :cond_9

    .line 189
    invoke-interface {v4, v3, v0}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->websockets:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 190
    :cond_9
    invoke-static {p1}, Lapp/pol/bridge/LocalBridgeProxy;->closeQuietly(Ljava/io/Closeable;)V

    .line 191
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->browsers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 192
    iget-object p1, p0, Lapp/pol/bridge/LocalBridgeProxy;->capacity:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 193
    invoke-direct {p0}, Lapp/pol/bridge/LocalBridgeProxy;->updateActive()V

    .line 194
    throw v1
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "pol-tunnel"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method static parseConnect(Ljava/lang/String;)Lapp/pol/bridge/LocalBridgeProxy$Target;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const-string v0, "\r\n"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 103
    const-string v2, " "

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 104
    array-length v2, p0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    aget-object v2, p0, v0

    const-string v4, "CONNECT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v2, p0, v1

    const-string v4, "HTTP/1.1"

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v1, p0, v1

    const-string v2, "HTTP/1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    .line 108
    aget-object p0, p0, v1

    const/16 v2, 0x3a

    .line 109
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 110
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "443"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 111
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xfd

    const-string v5, "Invalid hostname"

    if-gt v2, v4, :cond_3

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "[0-9]+(\\.[0-9]+){3}"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 115
    const-string v2, "\\."

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 116
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v1, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x3f

    if-gt v6, v7, :cond_1

    const-string v6, "[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    :cond_2
    new-instance v0, Lapp/pol/bridge/LocalBridgeProxy$Target;

    invoke-direct {v0, p0}, Lapp/pol/bridge/LocalBridgeProxy$Target;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 113
    :cond_3
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Only TLS port 443 allowed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "CONNECT required"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readHeader(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x4

    .line 126
    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    move v4, v3

    .line 127
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    const/16 v6, 0x4000

    if-ge v5, v6, :cond_4

    .line 128
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 130
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 131
    aget-byte v6, v2, v4

    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0xd

    if-ne v5, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    if-ne v4, v1, :cond_0

    .line 133
    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unexpected EOF"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Header too large"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method private static reply(Ljava/net/Socket;ILjava/lang/String;)V
    .locals 3

    const-string v0, "HTTP/1.1 "

    .line 252
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\r\nContent-Length: 0\r\nConnection: close\r\n\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 253
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 252
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 254
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private updateActive()V
    .locals 2

    .line 98
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->events:Lapp/pol/bridge/LocalBridgeProxy$Events;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lapp/pol/bridge/LocalBridgeProxy;->browsers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lapp/pol/bridge/LocalBridgeProxy$Events;->onActiveChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 259
    :try_start_0
    iput-boolean v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->running:Z

    .line 260
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->listener:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lapp/pol/bridge/LocalBridgeProxy;->closeQuietly(Ljava/io/Closeable;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->websockets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/WebSocket;

    invoke-interface {v1}, Lokhttp3/WebSocket;->cancel()V

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->browsers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Socket;

    invoke-static {v1}, Lapp/pol/bridge/LocalBridgeProxy;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 263
    :cond_2
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method synthetic lambda$handle$3$app-pol-bridge-LocalBridgeProxy(Lapp/pol/bridge/LocalBridgeProxy$Channel;Ljava/io/OutputStream;Ljava/net/Socket;)V
    .locals 2

    .line 168
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->running:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p1, Lapp/pol/bridge/LocalBridgeProxy$Channel;->incoming:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 170
    sget-object v1, Lapp/pol/bridge/LocalBridgeProxy;->END:[B

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 172
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 176
    :cond_1
    :goto_1
    invoke-static {p3}, Lapp/pol/bridge/LocalBridgeProxy;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 175
    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 176
    :goto_3
    invoke-static {p3}, Lapp/pol/bridge/LocalBridgeProxy;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method synthetic lambda$start$1$app-pol-bridge-LocalBridgeProxy(Ljava/net/Socket;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lapp/pol/bridge/LocalBridgeProxy;->handle(Ljava/net/Socket;)V

    return-void
.end method

.method synthetic lambda$start$2$app-pol-bridge-LocalBridgeProxy()V
    .locals 3

    .line 74
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->running:Z

    if-eqz v0, :cond_1

    .line 76
    :try_start_0
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->listener:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const v1, 0xea60

    .line 78
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 79
    iget-object v1, p0, Lapp/pol/bridge/LocalBridgeProxy;->capacity:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    goto :goto_1

    .line 80
    const-string v1, "Bridge busy"

    const/16 v2, 0x1f7

    invoke-static {v0, v2, v1}, Lapp/pol/bridge/LocalBridgeProxy;->reply(Ljava/net/Socket;ILjava/lang/String;)V

    .line 81
    invoke-static {v0}, Lapp/pol/bridge/LocalBridgeProxy;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 84
    :goto_1
    iget-object v1, p0, Lapp/pol/bridge/LocalBridgeProxy;->browsers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-direct {p0}, Lapp/pol/bridge/LocalBridgeProxy;->updateActive()V

    .line 86
    iget-object v1, p0, Lapp/pol/bridge/LocalBridgeProxy;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda3;-><init>(Lapp/pol/bridge/LocalBridgeProxy;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    iget-boolean v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->events:Lapp/pol/bridge/LocalBridgeProxy$Events;

    if-eqz v0, :cond_0

    const-string v1, ""

    const-string v2, "LOCAL_PROXY_FAILED"

    invoke-interface {v0, v1, v2}, Lapp/pol/bridge/LocalBridgeProxy$Events;->onTunnelError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized start()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->running:Z

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/net/ServerSocket;

    const-string v1, "127.0.0.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {v0, v2, v3, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->listener:Ljava/net/ServerSocket;

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->running:Z

    .line 73
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda2;-><init>(Lapp/pol/bridge/LocalBridgeProxy;)V

    const-string v3, "pol-loopback"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 93
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 94
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy;->listener:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 70
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already running"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
