.class Lapp/solina/cfbridge/LlmBridge$5;
.super Ljava/lang/Object;
.source "LlmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/solina/cfbridge/LlmBridge;->startGenerate(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Lapp/solina/cfbridge/MainActivity;

.field final synthetic val$prompt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lapp/solina/cfbridge/LlmBridge$5;->val$act:Lapp/solina/cfbridge/MainActivity;

    iput-object p2, p0, Lapp/solina/cfbridge/LlmBridge$5;->val$prompt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 176
    const-string v0, "window.__llmError && window.__llmError("

    const-string v1, ")"

    const-string v2, "UTF-8"

    new-instance v3, Lapp/solina/cfbridge/LlmBridge$5$1;

    invoke-direct {v3, p0}, Lapp/solina/cfbridge/LlmBridge$5$1;-><init>(Lapp/solina/cfbridge/LlmBridge$5;)V

    .line 193
    const/4 v4, 0x0

    :try_start_c
    iget-object v5, p0, Lapp/solina/cfbridge/LlmBridge$5;->val$act:Lapp/solina/cfbridge/MainActivity;

    invoke-static {v5}, Lapp/solina/cfbridge/LlmBridge;->modelFile(Landroid/app/Activity;)Ljava/io/File;

    move-result-object v5

    .line 194
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_43

    .line 195
    iget-object v2, p0, Lapp/solina/cfbridge/LlmBridge$5;->val$act:Lapp/solina/cfbridge/MainActivity;

    const-string v5, "\u0627\u0648\u0644 \u0645\u062f\u0644 \u0631\u0627 \u062f\u0627\u0646\u0644\u0648\u062f \u06a9\u0646"

    invoke-static {v5}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$smjs(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_9d

    .line 211
    invoke-static {}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    invoke-static {v4}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$sfputgenerating(Z)V

    .line 196
    return-void

    .line 198
    :cond_43
    :try_start_43
    invoke-static {}, Lapp/solina/cfbridge/PolNative;->prepare()V

    .line 199
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "system"

    aput-object v7, v6, v4

    const-string v7, "user"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 200
    const-string v7, "You are a helpful assistant."

    .line 201
    invoke-virtual {v7, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    iget-object v8, p0, Lapp/solina/cfbridge/LlmBridge$5;->val$prompt:Ljava/lang/String;

    .line 202
    invoke-virtual {v8, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    filled-new-array {v7, v8}, [[B

    move-result-object v7

    .line 204
    invoke-static {}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    invoke-static {v5, v6, v7, v8}, Lapp/solina/cfbridge/PolNative;->generate(Ljava/lang/String;[Ljava/lang/String;[[BI)[B

    move-result-object v5

    .line 206
    if-eqz v5, :cond_7a

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_7c

    :cond_7a
    const-string v6, ""

    .line 207
    :goto_7c
    iget-object v2, p0, Lapp/solina/cfbridge/LlmBridge$5;->val$act:Lapp/solina/cfbridge/MainActivity;

    invoke-static {v6}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "window.__llmDone && window.__llmDone("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$smjs(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_43 .. :try_end_9c} :catchall_9d

    goto :goto_d3

    .line 208
    :catchall_9d
    move-exception v2

    .line 209
    :try_start_9e
    iget-object v5, p0, Lapp/solina/cfbridge/LlmBridge$5;->val$act:Lapp/solina/cfbridge/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u062e\u0637\u0627: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$smjs(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_9e .. :try_end_d3} :catchall_df

    .line 211
    :goto_d3
    invoke-static {}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    invoke-static {v4}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$sfputgenerating(Z)V

    .line 213
    nop

    .line 214
    return-void

    .line 211
    :catchall_df
    move-exception v0

    invoke-static {}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    invoke-static {v4}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$sfputgenerating(Z)V

    .line 213
    throw v0
.end method
