.class public final synthetic Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lapp/pol/bridge/MainActivity;

.field public final synthetic f$1:Lapp/pol/bridge/LoginAssistant;

.field public final synthetic f$2:Lapp/pol/bridge/MainActivity$Config;


# direct methods
.method public synthetic constructor <init>(Lapp/pol/bridge/MainActivity;Lapp/pol/bridge/LoginAssistant;Lapp/pol/bridge/MainActivity$Config;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda29;->f$0:Lapp/pol/bridge/MainActivity;

    iput-object p2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda29;->f$1:Lapp/pol/bridge/LoginAssistant;

    iput-object p3, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda29;->f$2:Lapp/pol/bridge/MainActivity$Config;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda29;->f$0:Lapp/pol/bridge/MainActivity;

    iget-object v1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda29;->f$1:Lapp/pol/bridge/LoginAssistant;

    iget-object v2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda29;->f$2:Lapp/pol/bridge/MainActivity$Config;

    invoke-virtual {v0, v1, v2}, Lapp/pol/bridge/MainActivity;->lambda$check$19$app-pol-bridge-MainActivity(Lapp/pol/bridge/LoginAssistant;Lapp/pol/bridge/MainActivity$Config;)V

    return-void
.end method
