.class public final synthetic Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lapp/pol/bridge/LocalBridgeProxy;

.field public final synthetic f$1:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Lapp/pol/bridge/LocalBridgeProxy;Ljava/net/Socket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda3;->f$0:Lapp/pol/bridge/LocalBridgeProxy;

    iput-object p2, p0, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda3;->f$1:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda3;->f$0:Lapp/pol/bridge/LocalBridgeProxy;

    iget-object v1, p0, Lapp/pol/bridge/LocalBridgeProxy$$ExternalSyntheticLambda3;->f$1:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lapp/pol/bridge/LocalBridgeProxy;->lambda$start$1$app-pol-bridge-LocalBridgeProxy(Ljava/net/Socket;)V

    return-void
.end method
