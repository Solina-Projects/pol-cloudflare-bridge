.class Lapp/solina/cfbridge/MainActivity$2;
.super Landroid/webkit/WebViewClient;
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

    .line 422
    iput-object p1, p0, Lapp/solina/cfbridge/MainActivity$2;->this$0:Lapp/solina/cfbridge/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 434
    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity$2;->this$0:Lapp/solina/cfbridge/MainActivity;

    invoke-static {p1}, Lapp/solina/cfbridge/MainActivity;->-$$Nest$fgetprogress(Lapp/solina/cfbridge/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity$2;->this$0:Lapp/solina/cfbridge/MainActivity;

    invoke-static {p1}, Lapp/solina/cfbridge/MainActivity;->-$$Nest$mscheduleAssistant(Lapp/solina/cfbridge/MainActivity;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 430
    invoke-static {p2}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    .line 431
    iget-object p2, p0, Lapp/solina/cfbridge/MainActivity$2;->this$0:Lapp/solina/cfbridge/MainActivity;

    invoke-static {p2}, Lapp/solina/cfbridge/MainActivity;->-$$Nest$fgetbrowserHost(Lapp/solina/cfbridge/MainActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p1, :cond_0

    const-string p1, "Muse \u00b7 HTTPS"

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " \u00b7 HTTPS"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity$2;->this$0:Lapp/solina/cfbridge/MainActivity;

    invoke-static {p1}, Lapp/solina/cfbridge/MainActivity;->-$$Nest$fgetprogress(Lapp/solina/cfbridge/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity$2;->this$0:Lapp/solina/cfbridge/MainActivity;

    invoke-static {p1}, Lapp/solina/cfbridge/MainActivity;->-$$Nest$fgetassistHandler(Lapp/solina/cfbridge/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lapp/solina/cfbridge/MainActivity$2;->this$0:Lapp/solina/cfbridge/MainActivity;

    invoke-static {p2}, Lapp/solina/cfbridge/MainActivity;->-$$Nest$fgetassistTick(Lapp/solina/cfbridge/MainActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 439
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 440
    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity$2;->this$0:Lapp/solina/cfbridge/MainActivity;

    invoke-static {p1}, Lapp/solina/cfbridge/MainActivity;->-$$Nest$fgetbrowserError(Lapp/solina/cfbridge/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u0635\u0641\u062d\u0647 \u0628\u0627\u0632 \u0646\u0634\u062f. \u0648\u0636\u0639\u06cc\u062a \u067e\u0644\u060c \u0641\u0647\u0631\u0633\u062a \u0645\u0642\u0635\u062f\u0647\u0627\u06cc Worker \u06cc\u0627 \u0645\u062d\u062f\u0648\u062f\u06cc\u062a \u062e\u0648\u062f \u0633\u0627\u06cc\u062a \u0631\u0627 \u0628\u0631\u0631\u0633\u06cc \u06a9\u0646."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity$2;->this$0:Lapp/solina/cfbridge/MainActivity;

    invoke-static {p1}, Lapp/solina/cfbridge/MainActivity;->-$$Nest$fgetbrowserError(Lapp/solina/cfbridge/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 436
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity$2;->this$0:Lapp/solina/cfbridge/MainActivity;

    invoke-static {p1}, Lapp/solina/cfbridge/MainActivity;->-$$Nest$mstopAssistant(Lapp/solina/cfbridge/MainActivity;)V

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity$2;->this$0:Lapp/solina/cfbridge/MainActivity;

    invoke-static {p1}, Lapp/solina/cfbridge/MainActivity;->-$$Nest$fgetbrowserError(Lapp/solina/cfbridge/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u06af\u0648\u0627\u0647\u06cc TLS \u0633\u0627\u06cc\u062a \u0645\u0639\u062a\u0628\u0631 \u0646\u06cc\u0633\u062a\u061b \u0627\u062a\u0635\u0627\u0644 \u0645\u062a\u0648\u0642\u0641 \u0634\u062f."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity$2;->this$0:Lapp/solina/cfbridge/MainActivity;

    invoke-static {p1}, Lapp/solina/cfbridge/MainActivity;->-$$Nest$fgetbrowserError(Lapp/solina/cfbridge/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
