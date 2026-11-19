.class public final synthetic Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lapp/pol/bridge/MainActivity;

.field public final synthetic f$1:Lapp/pol/bridge/CloudflareApi;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lapp/pol/bridge/MainActivity;Lapp/pol/bridge/CloudflareApi;Ljava/util/List;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda20;->f$0:Lapp/pol/bridge/MainActivity;

    iput-object p2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda20;->f$1:Lapp/pol/bridge/CloudflareApi;

    iput-object p3, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda20;->f$2:Ljava/util/List;

    iput-boolean p4, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda20;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda20;->f$0:Lapp/pol/bridge/MainActivity;

    iget-object v1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda20;->f$1:Lapp/pol/bridge/CloudflareApi;

    iget-object v2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda20;->f$2:Ljava/util/List;

    iget-boolean v3, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda20;->f$3:Z

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lapp/pol/bridge/MainActivity;->lambda$startProvisioning$7$app-pol-bridge-MainActivity(Lapp/pol/bridge/CloudflareApi;Ljava/util/List;ZLandroid/content/DialogInterface;I)V

    return-void
.end method
