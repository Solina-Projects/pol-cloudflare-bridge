.class Lapp/pol/bridge/MainActivity$3;
.super Landroid/webkit/WebChromeClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/pol/bridge/MainActivity;->attachBrowser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/pol/bridge/MainActivity;


# direct methods
.method constructor <init>(Lapp/pol/bridge/MainActivity;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lapp/pol/bridge/MainActivity$3;->this$0:Lapp/pol/bridge/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 0

    .line 447
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 446
    iget-object p1, p0, Lapp/pol/bridge/MainActivity$3;->this$0:Lapp/pol/bridge/MainActivity;

    invoke-static {p1}, Lapp/pol/bridge/MainActivity;->-$$Nest$fgetprogress(Lapp/pol/bridge/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
