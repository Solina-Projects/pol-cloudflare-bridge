.class public final Lapp/solina/cfbridge/LlmBridge;
.super Ljava/lang/Object;
.source "LlmBridge.java"


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field public static final MODEL_NAME:Ljava/lang/String; = "qwen2.5-0.5b-instruct-q4_k_m.gguf"

.field public static final MODEL_URL:Ljava/lang/String; = "https://huggingface.co/Qwen/Qwen2.5-0.5B-Instruct-GGUF/resolve/main/qwen2.5-0.5b-instruct-q4_k_m.gguf"

.field private static final THREADS:I = 0x4

.field private static volatile generating:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetMAIN()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lapp/solina/cfbridge/LlmBridge;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetgenerating()Z
    .registers 1

    sget-boolean v0, Lapp/solina/cfbridge/LlmBridge;->generating:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputgenerating(Z)V
    .registers 1

    sput-boolean p0, Lapp/solina/cfbridge/LlmBridge;->generating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smjs(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lapp/solina/cfbridge/LlmBridge;->js(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smpostStatus(Lapp/solina/cfbridge/MainActivity;)V
    .registers 1

    invoke-static {p0}, Lapp/solina/cfbridge/LlmBridge;->postStatus(Lapp/solina/cfbridge/MainActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lapp/solina/cfbridge/LlmBridge;->MAIN:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lapp/solina/cfbridge/LlmBridge;->generating:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static js(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V
    .registers 4

    .line 75
    sget-object v0, Lapp/solina/cfbridge/LlmBridge;->MAIN:Landroid/os/Handler;

    new-instance v1, Lapp/solina/cfbridge/LlmBridge$2;

    invoke-direct {v1, p0, p1}, Lapp/solina/cfbridge/LlmBridge$2;-><init>(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method public static modelFile(Landroid/app/Activity;)Ljava/io/File;
    .registers 4

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 42
    if-nez v0, :cond_b

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 45
    :cond_b
    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "models"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "qwen2.5-0.5b-instruct-q4_k_m.gguf"

    invoke-direct {p0, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static onAction(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 50
    if-nez p1, :cond_3

    .line 51
    return-void

    .line 53
    :cond_3
    const-string v0, "status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 54
    invoke-static {p0}, Lapp/solina/cfbridge/LlmBridge;->postStatus(Lapp/solina/cfbridge/MainActivity;)V

    goto :goto_48

    .line 55
    :cond_f
    const-string v0, "download"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 56
    invoke-static {p0}, Lapp/solina/cfbridge/LlmBridge;->startDownload(Lapp/solina/cfbridge/MainActivity;)V

    goto :goto_48

    .line 57
    :cond_1b
    const-string v0, "generate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 58
    invoke-static {p0, p2}, Lapp/solina/cfbridge/LlmBridge;->startGenerate(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V

    goto :goto_48

    .line 59
    :cond_27
    const-string p0, "cancel"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 60
    invoke-static {}, Lapp/solina/cfbridge/PolNative;->cancel()V

    goto :goto_48

    .line 61
    :cond_33
    const-string p0, "unload"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_48

    .line 62
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lapp/solina/cfbridge/LlmBridge$1;

    invoke-direct {p1}, Lapp/solina/cfbridge/LlmBridge$1;-><init>()V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 72
    :cond_48
    :goto_48
    return-void
.end method

.method private static postStatus(Lapp/solina/cfbridge/MainActivity;)V
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lapp/solina/cfbridge/LlmBridge$3;

    invoke-direct {v1, p0}, Lapp/solina/cfbridge/LlmBridge$3;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    return-void
.end method

.method private static startDownload(Lapp/solina/cfbridge/MainActivity;)V
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lapp/solina/cfbridge/LlmBridge$4;

    invoke-direct {v1, p0}, Lapp/solina/cfbridge/LlmBridge$4;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 162
    return-void
.end method

.method private static startGenerate(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V
    .registers 4

    .line 165
    sget-boolean v0, Lapp/solina/cfbridge/LlmBridge;->generating:Z

    if-eqz v0, :cond_5

    .line 166
    return-void

    .line 168
    :cond_5
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_23

    .line 172
    :cond_12
    const/4 v0, 0x1

    sput-boolean v0, Lapp/solina/cfbridge/LlmBridge;->generating:Z

    .line 173
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lapp/solina/cfbridge/LlmBridge$5;

    invoke-direct {v1, p0, p1}, Lapp/solina/cfbridge/LlmBridge$5;-><init>(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 215
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 216
    return-void

    .line 169
    :cond_23
    :goto_23
    const-string p1, "\u0627\u0648\u0644 \u06cc\u06a9 \u067e\u06cc\u0627\u0645 \u0628\u0646\u0648\u06cc\u0633"

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.__llmError && window.__llmError("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lapp/solina/cfbridge/LlmBridge;->js(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V

    .line 170
    return-void
.end method
