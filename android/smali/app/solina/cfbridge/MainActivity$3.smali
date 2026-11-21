.class Lapp/solina/cfbridge/MainActivity$3;
.super Landroid/webkit/WebChromeClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/solina/cfbridge/MainActivity;->attachBrowser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/solina/cfbridge/MainActivity;


# direct methods
.method constructor <init>(Lapp/solina/cfbridge/MainActivity;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lapp/solina/cfbridge/MainActivity$3;->this$0:Lapp/solina/cfbridge/MainActivity;

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
    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity$3;->this$0:Lapp/solina/cfbridge/MainActivity;

    invoke-static {p1}, Lapp/solina/cfbridge/MainActivity;->-$$Nest$fgetprogress(Lapp/solina/cfbridge/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
