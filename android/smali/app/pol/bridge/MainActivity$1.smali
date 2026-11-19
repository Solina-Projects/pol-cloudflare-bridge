.class Lapp/pol/bridge/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lapp/pol/bridge/LocalBridgeProxy$Events;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/pol/bridge/MainActivity;->openBrowser(Lapp/pol/bridge/MainActivity$Config;)V
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

    .line 355
    iput-object p1, p0, Lapp/pol/bridge/MainActivity$1;->this$0:Lapp/pol/bridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onActiveChanged$0$app-pol-bridge-MainActivity$1(I)V
    .locals 2

    .line 357
    iget-object v0, p0, Lapp/pol/bridge/MainActivity$1;->this$0:Lapp/pol/bridge/MainActivity;

    invoke-static {v0}, Lapp/pol/bridge/MainActivity;->-$$Nest$fgetconnections(Lapp/pol/bridge/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/pol/bridge/MainActivity$1;->this$0:Lapp/pol/bridge/MainActivity;

    invoke-static {v0}, Lapp/pol/bridge/MainActivity;->-$$Nest$fgetdestroyed(Lapp/pol/bridge/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lapp/pol/bridge/MainActivity$1;->this$0:Lapp/pol/bridge/MainActivity;

    invoke-static {v0}, Lapp/pol/bridge/MainActivity;->-$$Nest$fgetconnections(Lapp/pol/bridge/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \u062a\u0648\u0646\u0644"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onTunnelError$1$app-pol-bridge-MainActivity$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 361
    iget-object v0, p0, Lapp/pol/bridge/MainActivity$1;->this$0:Lapp/pol/bridge/MainActivity;

    invoke-static {v0}, Lapp/pol/bridge/MainActivity;->-$$Nest$fgetbrowserError(Lapp/pol/bridge/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lapp/pol/bridge/MainActivity$1;->this$0:Lapp/pol/bridge/MainActivity;

    invoke-static {v0}, Lapp/pol/bridge/MainActivity;->-$$Nest$fgetdestroyed(Lapp/pol/bridge/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    const-string v0, "HTTP_403"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u0645\u0642\u0635\u062f \u062f\u0631 \u0641\u0647\u0631\u0633\u062a \u0645\u062c\u0627\u0632 Worker \u0646\u06cc\u0633\u062a: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 363
    :cond_1
    const-string v0, "HTTP_401"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u06a9\u0644\u06cc\u062f \u067e\u0644 \u067e\u0630\u06cc\u0631\u0641\u062a\u0647 \u0646\u0634\u062f."

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u062a\u0648\u0646\u0644 \u0627\u06cc\u0646 \u0645\u0642\u0635\u062f \u067e\u0627\u0633\u062e \u0646\u062f\u0627\u062f: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " \u00b7 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 364
    :goto_0
    iget-object p2, p0, Lapp/pol/bridge/MainActivity$1;->this$0:Lapp/pol/bridge/MainActivity;

    invoke-static {p2}, Lapp/pol/bridge/MainActivity;->-$$Nest$fgetbrowserError(Lapp/pol/bridge/MainActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lapp/pol/bridge/MainActivity$1;->this$0:Lapp/pol/bridge/MainActivity;

    invoke-static {p1}, Lapp/pol/bridge/MainActivity;->-$$Nest$fgetbrowserError(Lapp/pol/bridge/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onActiveChanged(I)V
    .locals 2

    .line 357
    iget-object v0, p0, Lapp/pol/bridge/MainActivity$1;->this$0:Lapp/pol/bridge/MainActivity;

    new-instance v1, Lapp/pol/bridge/MainActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lapp/pol/bridge/MainActivity$1$$ExternalSyntheticLambda1;-><init>(Lapp/pol/bridge/MainActivity$1;I)V

    invoke-virtual {v0, v1}, Lapp/pol/bridge/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTunnelError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 360
    iget-object v0, p0, Lapp/pol/bridge/MainActivity$1;->this$0:Lapp/pol/bridge/MainActivity;

    new-instance v1, Lapp/pol/bridge/MainActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lapp/pol/bridge/MainActivity$1$$ExternalSyntheticLambda0;-><init>(Lapp/pol/bridge/MainActivity$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lapp/pol/bridge/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
