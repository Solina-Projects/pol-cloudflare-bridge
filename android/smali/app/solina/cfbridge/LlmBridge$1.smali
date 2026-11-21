.class Lapp/solina/cfbridge/LlmBridge$1;
.super Ljava/lang/Object;
.source "LlmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/solina/cfbridge/LlmBridge;->onAction(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 66
    :try_start_0
    invoke-static {}, Lapp/solina/cfbridge/PolNative;->unload()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 68
    goto :goto_5

    .line 67
    :catchall_4
    move-exception v0

    .line 69
    :goto_5
    return-void
.end method
