.class public final synthetic Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lapp/pol/bridge/MainActivity;

.field public final synthetic f$1:Lapp/pol/bridge/CloudflareApi;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lapp/pol/bridge/MainActivity;Lapp/pol/bridge/CloudflareApi;Ljava/util/List;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda19;->f$0:Lapp/pol/bridge/MainActivity;

    iput-object p2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda19;->f$1:Lapp/pol/bridge/CloudflareApi;

    iput-object p3, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda19;->f$2:Ljava/util/List;

    iput p4, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda19;->f$3:I

    iput-boolean p5, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda19;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda19;->f$0:Lapp/pol/bridge/MainActivity;

    iget-object v1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda19;->f$1:Lapp/pol/bridge/CloudflareApi;

    iget-object v2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda19;->f$2:Ljava/util/List;

    iget v3, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda19;->f$3:I

    iget-boolean v4, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda19;->f$4:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lapp/pol/bridge/MainActivity;->lambda$startProvisioning$6$app-pol-bridge-MainActivity(Lapp/pol/bridge/CloudflareApi;Ljava/util/List;IZ)V

    return-void
.end method
