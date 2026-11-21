.class final Lapp/solina/cfbridge/CloudflareApi$Reply;
.super Ljava/lang/Object;
.source "CloudflareApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/solina/cfbridge/CloudflareApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Reply"
.end annotation


# instance fields
.field final body:Lorg/json/JSONObject;

.field final status:I


# direct methods
.method constructor <init>(ILorg/json/JSONObject;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lapp/solina/cfbridge/CloudflareApi$Reply;->status:I

    iput-object p2, p0, Lapp/solina/cfbridge/CloudflareApi$Reply;->body:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method code()I
    .locals 3

    .line 64
    iget-object v0, p0, Lapp/solina/cfbridge/CloudflareApi$Reply;->body:Lorg/json/JSONObject;

    const-string v1, "errors"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method failure(Ljava/lang/String;)Lapp/solina/cfbridge/CloudflareApi$ApiException;
    .locals 3

    .line 66
    new-instance v0, Lapp/solina/cfbridge/CloudflareApi$ApiException;

    iget v1, p0, Lapp/solina/cfbridge/CloudflareApi$Reply;->status:I

    invoke-virtual {p0}, Lapp/solina/cfbridge/CloudflareApi$Reply;->code()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lapp/solina/cfbridge/CloudflareApi$ApiException;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method success()Z
    .locals 3

    .line 65
    iget v0, p0, Lapp/solina/cfbridge/CloudflareApi$Reply;->status:I

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lapp/solina/cfbridge/CloudflareApi$Reply;->body:Lorg/json/JSONObject;

    const-string v1, "success"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
