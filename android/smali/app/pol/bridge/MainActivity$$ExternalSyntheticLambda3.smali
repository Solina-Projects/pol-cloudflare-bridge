.class public final synthetic Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lapp/pol/bridge/MainActivity;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lapp/pol/bridge/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda3;->f$0:Lapp/pol/bridge/MainActivity;

    iput-object p2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda3;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda3;->f$2:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda3;->f$0:Lapp/pol/bridge/MainActivity;

    iget-object v1, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda3;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lapp/pol/bridge/MainActivity$$ExternalSyntheticLambda3;->f$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2, p1, p2}, Lapp/pol/bridge/MainActivity;->lambda$requestAssistant$32$app-pol-bridge-MainActivity(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
