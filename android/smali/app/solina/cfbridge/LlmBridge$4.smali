.class Lapp/solina/cfbridge/LlmBridge$4;
.super Ljava/lang/Object;
.source "LlmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/solina/cfbridge/LlmBridge;->startDownload(Lapp/solina/cfbridge/MainActivity;)V
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

    .line 115
    iput-object p1, p0, Lapp/solina/cfbridge/LlmBridge$4;->val$act:Lapp/solina/cfbridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .line 118
    move-object/from16 v1, p0

    const-string v0, ","

    const-string v2, ")"

    iget-object v3, v1, Lapp/solina/cfbridge/LlmBridge$4;->val$act:Lapp/solina/cfbridge/MainActivity;

    invoke-static {v3}, Lapp/solina/cfbridge/LlmBridge;->modelFile(Landroid/app/Activity;)Ljava/io/File;

    move-result-object v3

    .line 120
    :try_start_c
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 121
    if-eqz v4, :cond_15

    .line 122
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 124
    :cond_15
    new-instance v4, Ljava/net/URL;

    const-string v5, "https://huggingface.co/Qwen/Qwen2.5-0.5B-Instruct-GGUF/resolve/main/qwen2.5-0.5b-instruct-q4_k_m.gguf"

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 125
    const-string v5, "User-Agent"

    const-string v6, "SolinaCF-Bridge/1.0"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 127
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v5

    .line 128
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 129
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_c7

    .line 131
    const/high16 v3, 0x10000

    :try_start_45
    new-array v3, v3, [B

    .line 132
    nop

    .line 133
    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    .line 135
    :cond_4c
    :goto_4c
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const-wide/16 v16, 0x0

    const/4 v9, -0x1

    if-eq v15, v9, :cond_9c

    .line 136
    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 137
    int-to-long v9, v15

    add-long/2addr v11, v9

    .line 138
    cmp-long v9, v5, v16

    if-lez v9, :cond_4c

    sub-long v9, v11, v13

    const-wide/32 v18, 0x100000

    cmp-long v9, v9, v18

    if-lez v9, :cond_4c

    .line 139
    nop

    .line 140
    const-wide/16 v9, 0x64

    mul-long/2addr v9, v11

    div-long/2addr v9, v5

    long-to-int v9, v9

    .line 141
    iget-object v10, v1, Lapp/solina/cfbridge/LlmBridge$4;->val$act:Lapp/solina/cfbridge/MainActivity;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "window.__llmProgress && window.__llmProgress("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$smjs(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_45 .. :try_end_9a} :catchall_b7

    .line 142
    move-wide v13, v11

    goto :goto_4c

    .line 146
    :cond_9c
    :try_start_9c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a0

    .line 148
    goto :goto_a1

    .line 147
    :catchall_a0
    move-exception v0

    .line 150
    :goto_a1
    :try_start_a1
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a5

    .line 152
    goto :goto_a6

    .line 151
    :catchall_a5
    move-exception v0

    .line 153
    :goto_a6
    :try_start_a6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 154
    nop

    .line 155
    iget-object v0, v1, Lapp/solina/cfbridge/LlmBridge$4;->val$act:Lapp/solina/cfbridge/MainActivity;

    const-string v3, "window.__llmProgress && window.__llmProgress(100,0,0)"

    invoke-static {v0, v3}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$smjs(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V

    .line 156
    iget-object v0, v1, Lapp/solina/cfbridge/LlmBridge$4;->val$act:Lapp/solina/cfbridge/MainActivity;

    invoke-static {v0}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$smpostStatus(Lapp/solina/cfbridge/MainActivity;)V
    :try_end_b6
    .catchall {:try_start_a6 .. :try_end_b6} :catchall_c7

    .line 159
    goto :goto_ff

    .line 145
    :catchall_b7
    move-exception v0

    move-object v3, v0

    .line 146
    :try_start_b9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_bd

    .line 148
    goto :goto_be

    .line 147
    :catchall_bd
    move-exception v0

    .line 150
    :goto_be
    :try_start_be
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_c2

    .line 152
    goto :goto_c3

    .line 151
    :catchall_c2
    move-exception v0

    .line 153
    :goto_c3
    :try_start_c3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 154
    throw v3
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_c7

    .line 157
    :catchall_c7
    move-exception v0

    .line 158
    iget-object v3, v1, Lapp/solina/cfbridge/LlmBridge$4;->val$act:Lapp/solina/cfbridge/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u062f\u0627\u0646\u0644\u0648\u062f \u0646\u0627\u0645\u0648\u0641\u0642: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "window.__llmError && window.__llmError("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$smjs(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V

    .line 160
    :goto_ff
    return-void
.end method
