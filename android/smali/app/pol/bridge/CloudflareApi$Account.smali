.class public final Lapp/pol/bridge/CloudflareApi$Account;
.super Ljava/lang/Object;
.source "CloudflareApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/pol/bridge/CloudflareApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Account"
.end annotation


# instance fields
.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/pol/bridge/CloudflareApi$Account;->id:Ljava/lang/String;

    iput-object p2, p0, Lapp/pol/bridge/CloudflareApi$Account;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lapp/pol/bridge/CloudflareApi$Account;->name:Ljava/lang/String;

    return-object v0
.end method
