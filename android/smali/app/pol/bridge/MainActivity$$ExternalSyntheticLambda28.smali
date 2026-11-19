.class public final synthetic Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lapp/pol/bridge/MainActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lapp/pol/bridge/CloudflareApi$Deployment;


# direct methods
.method public synthetic constructor <init>(Lapp/pol/bridge/MainActivity;ZLapp/pol/bridge/CloudflareApi$Deployment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda28;->f$0:Lapp/pol/bridge/MainActivity;

    iput-boolean p2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda28;->f$1:Z

    iput-object p3, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda28;->f$2:Lapp/pol/bridge/CloudflareApi$Deployment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda28;->f$0:Lapp/pol/bridge/MainActivity;

    iget-boolean v1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda28;->f$1:Z

    iget-object v2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda28;->f$2:Lapp/pol/bridge/CloudflareApi$Deployment;

    invoke-virtual {v0, v1, v2}, Lapp/pol/bridge/MainActivity;->lambda$provisionAccount$17$app-pol-bridge-MainActivity(ZLapp/pol/bridge/CloudflareApi$Deployment;)V

    return-void
.end method
