.class final Lapp/solina/cfbridge/LocalBridgeProxy$Target;
.super Ljava/lang/Object;
.source "LocalBridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/solina/cfbridge/LocalBridgeProxy;
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

    iput-object p1, p0, Lapp/solina/cfbridge/LocalBridgeProxy$Target;->host:Ljava/lang/String;

    return-void
.end method
