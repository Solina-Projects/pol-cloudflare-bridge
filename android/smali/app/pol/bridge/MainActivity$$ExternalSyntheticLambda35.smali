.class public final synthetic Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lapp/pol/bridge/MainActivity;

.field public final synthetic f$1:Lapp/pol/bridge/CloudflareApi$Deployment;


# direct methods
.method public synthetic constructor <init>(Lapp/pol/bridge/MainActivity;Lapp/pol/bridge/CloudflareApi$Deployment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda35;->f$0:Lapp/pol/bridge/MainActivity;

    iput-object p2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda35;->f$1:Lapp/pol/bridge/CloudflareApi$Deployment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda35;->f$0:Lapp/pol/bridge/MainActivity;

    iget-object v1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda35;->f$1:Lapp/pol/bridge/CloudflareApi$Deployment;

    invoke-virtual {v0, v1}, Lapp/pol/bridge/MainActivity;->lambda$provisionAccount$14$app-pol-bridge-MainActivity(Lapp/pol/bridge/CloudflareApi$Deployment;)V

    return-void
.end method
