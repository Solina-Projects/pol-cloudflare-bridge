.class public final synthetic Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lapp/pol/bridge/CloudflareApi$Checkpoint;


# instance fields
.field public final synthetic f$0:Lapp/pol/bridge/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lapp/pol/bridge/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda26;->f$0:Lapp/pol/bridge/MainActivity;

    return-void
.end method


# virtual methods
.method public final save(Lapp/pol/bridge/CloudflareApi$Deployment;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda26;->f$0:Lapp/pol/bridge/MainActivity;

    invoke-virtual {v0, p1}, Lapp/pol/bridge/MainActivity;->lambda$provisionAccount$15$app-pol-bridge-MainActivity(Lapp/pol/bridge/CloudflareApi$Deployment;)V

    return-void
.end method
