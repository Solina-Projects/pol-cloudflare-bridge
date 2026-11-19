.class public final synthetic Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lapp/pol/bridge/MainActivity;

.field public final synthetic f$1:Lapp/pol/bridge/LoginAssistant;


# direct methods
.method public synthetic constructor <init>(Lapp/pol/bridge/MainActivity;Lapp/pol/bridge/LoginAssistant;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda24;->f$0:Lapp/pol/bridge/MainActivity;

    iput-object p2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda24;->f$1:Lapp/pol/bridge/LoginAssistant;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda24;->f$0:Lapp/pol/bridge/MainActivity;

    iget-object v1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda24;->f$1:Lapp/pol/bridge/LoginAssistant;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lapp/pol/bridge/MainActivity;->lambda$tickAssist$31$app-pol-bridge-MainActivity(Lapp/pol/bridge/LoginAssistant;Ljava/lang/String;)V

    return-void
.end method
