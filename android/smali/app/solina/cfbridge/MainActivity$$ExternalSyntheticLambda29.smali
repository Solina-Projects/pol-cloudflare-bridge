.class public final synthetic Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lapp/solina/cfbridge/MainActivity;

.field public final synthetic f$1:Lapp/solina/cfbridge/LoginAssistant;

.field public final synthetic f$2:Lapp/solina/cfbridge/MainActivity$Config;


# direct methods
.method public synthetic constructor <init>(Lapp/solina/cfbridge/MainActivity;Lapp/solina/cfbridge/LoginAssistant;Lapp/solina/cfbridge/MainActivity$Config;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda29;->f$0:Lapp/solina/cfbridge/MainActivity;

    iput-object p2, p0, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda29;->f$1:Lapp/solina/cfbridge/LoginAssistant;

    iput-object p3, p0, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda29;->f$2:Lapp/solina/cfbridge/MainActivity$Config;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda29;->f$0:Lapp/solina/cfbridge/MainActivity;

    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda29;->f$1:Lapp/solina/cfbridge/LoginAssistant;

    iget-object v2, p0, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda29;->f$2:Lapp/solina/cfbridge/MainActivity$Config;

    invoke-virtual {v0, v1, v2}, Lapp/solina/cfbridge/MainActivity;->lambda$check$19$app-pol-bridge-MainActivity(Lapp/solina/cfbridge/LoginAssistant;Lapp/solina/cfbridge/MainActivity$Config;)V

    return-void
.end method
