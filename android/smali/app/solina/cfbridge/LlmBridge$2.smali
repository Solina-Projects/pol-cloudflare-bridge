.class Lapp/solina/cfbridge/LlmBridge$2;
.super Ljava/lang/Object;
.source "LlmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/solina/cfbridge/LlmBridge;->js(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Lapp/solina/cfbridge/MainActivity;

.field final synthetic val$script:Ljava/lang/String;


# direct methods
.method constructor <init>(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lapp/solina/cfbridge/LlmBridge$2;->val$act:Lapp/solina/cfbridge/MainActivity;

    iput-object p2, p0, Lapp/solina/cfbridge/LlmBridge$2;->val$script:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 79
    :try_start_0
    iget-object v0, p0, Lapp/solina/cfbridge/LlmBridge$2;->val$act:Lapp/solina/cfbridge/MainActivity;

    iget-object v0, v0, Lapp/solina/cfbridge/MainActivity;->homeWeb:Landroid/webkit/WebView;

    .line 80
    if-eqz v0, :cond_c

    .line 81
    iget-object v1, p0, Lapp/solina/cfbridge/LlmBridge$2;->val$script:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    .line 84
    :cond_c
    goto :goto_e

    .line 83
    :catchall_d
    move-exception v0

    .line 85
    :goto_e
    return-void
.end method
