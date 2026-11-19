.class public final synthetic Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lapp/pol/bridge/MainActivity;

.field public final synthetic f$1:Lapp/pol/bridge/MainActivity$Config;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lapp/pol/bridge/LoginAssistant;


# direct methods
.method public synthetic constructor <init>(Lapp/pol/bridge/MainActivity;Lapp/pol/bridge/MainActivity$Config;ZLapp/pol/bridge/LoginAssistant;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda0;->f$0:Lapp/pol/bridge/MainActivity;

    iput-object p2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda0;->f$1:Lapp/pol/bridge/MainActivity$Config;

    iput-boolean p3, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda0;->f$3:Lapp/pol/bridge/LoginAssistant;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda0;->f$0:Lapp/pol/bridge/MainActivity;

    iget-object v1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda0;->f$1:Lapp/pol/bridge/MainActivity$Config;

    iget-boolean v2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v3, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda0;->f$3:Lapp/pol/bridge/LoginAssistant;

    invoke-virtual {v0, v1, v2, v3}, Lapp/pol/bridge/MainActivity;->lambda$check$22$app-pol-bridge-MainActivity(Lapp/pol/bridge/MainActivity$Config;ZLapp/pol/bridge/LoginAssistant;)V

    return-void
.end method
