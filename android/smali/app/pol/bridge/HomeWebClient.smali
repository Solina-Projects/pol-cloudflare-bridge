.class public Lapp/pol/bridge/HomeWebClient;
.super Landroid/webkit/WebViewClient;
.source "HomeWebClient.java"

# instance fields
.field public activity:Lapp/pol/bridge/MainActivity;

# direct methods
.method public constructor <init>(Lapp/pol/bridge/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/HomeWebClient;->activity:Lapp/pol/bridge/MainActivity;

    return-void
.end method

# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bridge://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lapp/pol/bridge/HomeWebClient;->activity:Lapp/pol/bridge/MainActivity;

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lapp/pol/bridge/MainActivity;->handleBridgeAction(Lapp/pol/bridge/MainActivity;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "bridge://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/pol/bridge/HomeWebClient;->activity:Lapp/pol/bridge/MainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lapp/pol/bridge/MainActivity;->handleBridgeAction(Lapp/pol/bridge/MainActivity;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
