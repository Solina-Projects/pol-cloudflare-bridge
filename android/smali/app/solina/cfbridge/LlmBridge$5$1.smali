.class Lapp/solina/cfbridge/LlmBridge$5$1;
.super Ljava/lang/Object;
.source "LlmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/solina/cfbridge/LlmBridge$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/solina/cfbridge/LlmBridge$5;


# direct methods
.method constructor <init>(Lapp/solina/cfbridge/LlmBridge$5;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lapp/solina/cfbridge/LlmBridge$5$1;->this$0:Lapp/solina/cfbridge/LlmBridge$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 179
    invoke-static {}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$sfgetgenerating()Z

    move-result v0

    if-nez v0, :cond_7

    .line 180
    return-void

    .line 183
    :cond_7
    :try_start_7
    invoke-static {}, Lapp/solina/cfbridge/PolNative;->peek()[B

    move-result-object v0

    .line 184
    if-eqz v0, :cond_3b

    array-length v1, v0

    if-lez v1, :cond_3b

    .line 185
    iget-object v1, p0, Lapp/solina/cfbridge/LlmBridge$5$1;->this$0:Lapp/solina/cfbridge/LlmBridge$5;

    iget-object v1, v1, Lapp/solina/cfbridge/LlmBridge$5;->val$act:Lapp/solina/cfbridge/MainActivity;

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window.__llmStream && window.__llmStream("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$smjs(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_3c

    .line 188
    :cond_3b
    goto :goto_3d

    .line 187
    :catchall_3c
    move-exception v0

    .line 189
    :goto_3d
    invoke-static {}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    return-void
.end method
