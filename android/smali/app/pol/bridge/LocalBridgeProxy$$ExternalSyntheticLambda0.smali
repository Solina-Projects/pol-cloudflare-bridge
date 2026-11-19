.class public final synthetic Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lapp/pol/bridge/LocalBridgeProxy;

.field public final synthetic f$1:Lapp/pol/bridge/LocalBridgeProxy$Channel;

.field public final synthetic f$2:Ljava/io/OutputStream;

.field public final synthetic f$3:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Lapp/pol/bridge/LocalBridgeProxy;Lapp/pol/bridge/LocalBridgeProxy$Channel;Ljava/io/OutputStream;Ljava/net/Socket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda0;->f$0:Lapp/pol/bridge/LocalBridgeProxy;

    iput-object p2, p0, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda0;->f$1:Lapp/pol/bridge/LocalBridgeProxy$Channel;

    iput-object p3, p0, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda0;->f$2:Ljava/io/OutputStream;

    iput-object p4, p0, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda0;->f$3:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda0;->f$0:Lapp/pol/bridge/LocalBridgeProxy;

    iget-object v1, p0, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda0;->f$1:Lapp/pol/bridge/LocalBridgeProxy$Channel;

    iget-object v2, p0, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda0;->f$2:Ljava/io/OutputStream;

    iget-object v3, p0, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda0;->f$3:Ljava/net/Socket;

    invoke-virtual {v0, v1, v2, v3}, Lapp/pol/bridge/LocalBridgeProxy;->lambda$handle$3$app-pol-bridge-LocalBridgeProxy(Lapp/pol/bridge/LocalBridgeProxy$Channel;Ljava/io/OutputStream;Ljava/net/Socket;)V

    return-void
.end method
