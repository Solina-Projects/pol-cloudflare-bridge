.class Lapp/solina/cfbridge/LlmBridge$3;
.super Ljava/lang/Object;
.source "LlmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/solina/cfbridge/LlmBridge;->postStatus(Lapp/solina/cfbridge/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Lapp/solina/cfbridge/MainActivity;


# direct methods
.method constructor <init>(Lapp/solina/cfbridge/MainActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lapp/solina/cfbridge/LlmBridge$3;->val$act:Lapp/solina/cfbridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 93
    iget-object v0, p0, Lapp/solina/cfbridge/LlmBridge$3;->val$act:Lapp/solina/cfbridge/MainActivity;

    invoke-static {v0}, Lapp/solina/cfbridge/LlmBridge;->modelFile(Landroid/app/Activity;)Ljava/io/File;

    move-result-object v0

    .line 94
    nop

    .line 96
    :try_start_7
    const-string v1, "app.solina.cfbridge.PolNative"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    .line 97
    nop

    .line 99
    const/4 v1, 0x1

    goto :goto_11

    .line 98
    :catchall_f
    move-exception v1

    const/4 v1, 0x0

    .line 100
    :goto_11
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 102
    :try_start_16
    const-string v3, "lib"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 103
    const-string v1, "model"

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 104
    const-string v1, "size"

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_33

    :cond_31
    const-wide/16 v3, 0x0

    :goto_33
    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 105
    const-string v1, "path"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v0, "generating"

    invoke-static {}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$sfgetgenerating()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_48
    .catchall {:try_start_16 .. :try_end_48} :catchall_49

    .line 108
    goto :goto_4a

    .line 107
    :catchall_49
    move-exception v0

    .line 109
    :goto_4a
    iget-object v0, p0, Lapp/solina/cfbridge/LlmBridge$3;->val$act:Lapp/solina/cfbridge/MainActivity;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window.__llmStatus && window.__llmStatus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$smjs(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V

    .line 110
    return-void
.end method
