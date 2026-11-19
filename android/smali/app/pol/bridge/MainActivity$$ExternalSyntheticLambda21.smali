.class public final synthetic Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lapp/pol/bridge/MainActivity;

.field public final synthetic f$1:Lapp/pol/bridge/CloudflareApi;


# direct methods
.method public synthetic constructor <init>(Lapp/pol/bridge/MainActivity;Lapp/pol/bridge/CloudflareApi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda21;->f$0:Lapp/pol/bridge/MainActivity;

    iput-object p2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda21;->f$1:Lapp/pol/bridge/CloudflareApi;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda21;->f$0:Lapp/pol/bridge/MainActivity;

    iget-object v1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda21;->f$1:Lapp/pol/bridge/CloudflareApi;

    invoke-virtual {v0, v1, p1, p2}, Lapp/pol/bridge/MainActivity;->lambda$startProvisioning$8$app-pol-bridge-MainActivity(Lapp/pol/bridge/CloudflareApi;Landroid/content/DialogInterface;I)V

    return-void
.end method
