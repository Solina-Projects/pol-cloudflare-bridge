.class Lapp/solina/cfbridge/LlmBridge$6;
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


# instance fields
.field final synthetic val$act:Lapp/solina/cfbridge/MainActivity;


# direct methods
.method constructor <init>(Lapp/solina/cfbridge/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lapp/solina/cfbridge/LlmBridge$6;->val$act:Lapp/solina/cfbridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    invoke-static {}, Lapp/solina/cfbridge/PolNative;->unload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :delete

    :catchall_0
    move-exception v0

    :delete
    :try_start_1
    iget-object v0, p0, Lapp/solina/cfbridge/LlmBridge$6;->val$act:Lapp/solina/cfbridge/MainActivity;

    invoke-static {v0}, Lapp/solina/cfbridge/LlmBridge;->modelFile(Landroid/app/Activity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lapp/solina/cfbridge/LlmBridge$6;->val$act:Lapp/solina/cfbridge/MainActivity;

    invoke-static {v0}, Lapp/solina/cfbridge/LlmBridge;->-$$Nest$smpostStatus(Lapp/solina/cfbridge/MainActivity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :done

    :catchall_1
    move-exception v0

    :done
    return-void
.end method
