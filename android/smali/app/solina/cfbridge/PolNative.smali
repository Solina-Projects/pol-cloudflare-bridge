.class public final Lapp/solina/cfbridge/PolNative;
.super Ljava/lang/Object;
.source "PolNative.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-string v0, "pol_llm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static native cancel()V
.end method

.method public static native generate(Ljava/lang/String;[Ljava/lang/String;[[BI)[B
.end method

.method public static native peek()[B
.end method

.method public static native prepare()V
.end method

.method public static native unload()V
.end method
