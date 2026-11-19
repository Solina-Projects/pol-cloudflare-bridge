.class final Lapp/pol/bridge/LocalBridgeProxy$Target;
.super Ljava/lang/Object;
.source "LocalBridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/pol/bridge/LocalBridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Target"
.end annotation


# instance fields
.field final host:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/LocalBridgeProxy$Target;->host:Ljava/lang/String;

    return-void
.end method
