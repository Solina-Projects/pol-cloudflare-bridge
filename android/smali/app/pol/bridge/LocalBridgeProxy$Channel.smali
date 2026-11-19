.class final Lapp/pol/bridge/LocalBridgeProxy$Channel;
.super Lokhttp3/WebSocketListener;
.source "LocalBridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/pol/bridge/LocalBridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Channel"
.end annotation


# instance fields
.field volatile failureCode:Ljava/lang/String;

.field final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final hostname:Ljava/lang/String;

.field final incoming:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field volatile ready:Z

.field final readySignal:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lapp/pol/bridge/LocalBridgeProxy;


# direct methods
.method constructor <init>(Lapp/pol/bridge/LocalBridgeProxy;Ljava/lang/String;)V
    .locals 1

    .line 204
    iput-object p1, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->this$0:Lapp/pol/bridge/LocalBridgeProxy;

    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    .line 199
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->readySignal:Ljava/util/concurrent/CountDownLatch;

    .line 200
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->incoming:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 201
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    iput-object p2, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->hostname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method end()V
    .locals 3

    .line 243
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 245
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->incoming:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lapp/pol/bridge/LocalBridgeProxy;->-$$Nest$sfgetEND()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->incoming:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->incoming:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lapp/pol/bridge/LocalBridgeProxy;->-$$Nest$sfgetEND()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method fail(Ljava/lang/String;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->failureCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 237
    iput-object p1, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->failureCode:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->this$0:Lapp/pol/bridge/LocalBridgeProxy;

    invoke-static {v0}, Lapp/pol/bridge/LocalBridgeProxy;->-$$Nest$fgetevents(Lapp/pol/bridge/LocalBridgeProxy;)Lapp/pol/bridge/LocalBridgeProxy$Events;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->this$0:Lapp/pol/bridge/LocalBridgeProxy;

    invoke-static {v0}, Lapp/pol/bridge/LocalBridgeProxy;->-$$Nest$fgetevents(Lapp/pol/bridge/LocalBridgeProxy;)Lapp/pol/bridge/LocalBridgeProxy$Events;

    move-result-object v0

    iget-object v1, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->hostname:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lapp/pol/bridge/LocalBridgeProxy$Events;->onTunnelError(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    invoke-virtual {p0}, Lapp/pol/bridge/LocalBridgeProxy$Channel;->end()V

    return-void
.end method

.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 231
    invoke-virtual {p0}, Lapp/pol/bridge/LocalBridgeProxy$Channel;->end()V

    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 229
    const-string p3, "Acknowledged"

    invoke-interface {p1, p2, p3}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    invoke-virtual {p0}, Lapp/pol/bridge/LocalBridgeProxy$Channel;->end()V

    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 0

    if-nez p3, :cond_0

    .line 233
    const-string p1, "TLS_OR_NETWORK_FAILED"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "HTTP_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lapp/pol/bridge/LocalBridgeProxy$Channel;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->ready:Z

    if-nez v0, :cond_0

    const-string v0, "{\"type\":\"ready\",\"protocol\":1}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 208
    iput-boolean p1, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->ready:Z

    .line 209
    iget-object p1, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 211
    :cond_0
    const-string p2, "UPSTREAM_OR_PROTOCOL_ERROR"

    invoke-virtual {p0, p2}, Lapp/pol/bridge/LocalBridgeProxy$Channel;->fail(Ljava/lang/String;)V

    .line 212
    invoke-interface {p1}, Lokhttp3/WebSocket;->cancel()V

    :goto_0
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 4

    .line 216
    iget-boolean v0, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->ready:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v0

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 221
    :cond_1
    :try_start_0
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy$Channel;->incoming:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, p2, v2, v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 222
    const-string p2, "CLIENT_BACKPRESSURE"

    invoke-virtual {p0, p2}, Lapp/pol/bridge/LocalBridgeProxy$Channel;->fail(Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/WebSocket;->cancel()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    const-string p2, "CANCELLED"

    invoke-virtual {p0, p2}, Lapp/pol/bridge/LocalBridgeProxy$Channel;->fail(Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/WebSocket;->cancel()V

    :cond_2
    :goto_0
    return-void

    .line 217
    :cond_3
    :goto_1
    const-string p2, "PROTOCOL_ERROR"

    invoke-virtual {p0, p2}, Lapp/pol/bridge/LocalBridgeProxy$Channel;->fail(Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/WebSocket;->cancel()V

    return-void
.end method
