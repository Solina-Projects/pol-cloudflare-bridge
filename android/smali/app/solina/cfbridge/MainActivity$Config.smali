.class final Lapp/solina/cfbridge/MainActivity$Config;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/solina/cfbridge/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Config"
.end annotation


# instance fields
.field final endpoint:Lokhttp3/HttpUrl;

.field final token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/solina/cfbridge/MainActivity$Config;->endpoint:Lokhttp3/HttpUrl;

    iput-object p2, p0, Lapp/solina/cfbridge/MainActivity$Config;->token:Ljava/lang/String;

    return-void
.end method
