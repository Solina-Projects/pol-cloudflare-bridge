.class public final Lapp/solina/cfbridge/CloudflareApi;
.super Ljava/lang/Object;
.source "CloudflareApi.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/solina/cfbridge/CloudflareApi$Reply;,
        Lapp/solina/cfbridge/CloudflareApi$ApiException;,
        Lapp/solina/cfbridge/CloudflareApi$Account;,
        Lapp/solina/cfbridge/CloudflareApi$Progress;,
        Lapp/solina/cfbridge/CloudflareApi$Deployment;,
        Lapp/solina/cfbridge/CloudflareApi$Checkpoint;
    }
.end annotation


# static fields
.field public static final DEFAULT_HOSTS:Ljava/lang/String; = "*"

.field private static final JSON:Lokhttp3/MediaType;

.field private static final MODULE:Lokhttp3/MediaType;

.field private static final OFFICIAL_API:Lokhttp3/HttpUrl;


# instance fields
.field private final api:Lokhttp3/HttpUrl;

.field private final client:Lokhttp3/OkHttpClient;

.field private final random:Ljava/security/SecureRandom;

.field private volatile token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "https://api.cloudflare.com/client/v4/"

    invoke-static {v0}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    sput-object v0, Lapp/solina/cfbridge/CloudflareApi;->OFFICIAL_API:Lokhttp3/HttpUrl;

    .line 25
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lapp/solina/cfbridge/CloudflareApi;->JSON:Lokhttp3/MediaType;

    .line 26
    const-string v0, "application/javascript+module"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lapp/solina/cfbridge/CloudflareApi;->MODULE:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lokhttp3/OkHttpClient;)V
    .locals 1

    .line 74
    sget-object v0, Lapp/solina/cfbridge/CloudflareApi;->OFFICIAL_API:Lokhttp3/HttpUrl;

    invoke-direct {p0, p1, p2, v0}, Lapp/solina/cfbridge/CloudflareApi;-><init>(Ljava/lang/String;Lokhttp3/OkHttpClient;Lokhttp3/HttpUrl;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lokhttp3/OkHttpClient;Lokhttp3/HttpUrl;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lapp/solina/cfbridge/CloudflareApi;->random:Ljava/security/SecureRandom;

    .line 78
    invoke-static {p1}, Lapp/solina/cfbridge/CloudflareApi;->validToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iput-object p1, p0, Lapp/solina/cfbridge/CloudflareApi;->token:Ljava/lang/String;

    iput-object p3, p0, Lapp/solina/cfbridge/CloudflareApi;->api:Lokhttp3/HttpUrl;

    .line 80
    invoke-virtual {p2}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const-wide/16 v0, 0xf

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 81
    invoke-virtual {p1, v0, v1, p3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x2d

    invoke-virtual {p1, v0, v1, p3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 82
    invoke-virtual {p1, v0, v1, p3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const-wide/16 v0, 0x3c

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p3}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lapp/solina/cfbridge/CloudflareApi;->client:Lokhttp3/OkHttpClient;

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid API token format"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private varargs endpoint([Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 4

    .line 91
    iget-object v0, p0, Lapp/solina/cfbridge/CloudflareApi;->api:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1
.end method

.method private static jsonBody(Lorg/json/JSONObject;)Lokhttp3/RequestBody;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lapp/solina/cfbridge/CloudflareApi;->JSON:Lokhttp3/MediaType;

    invoke-static {p0, v0}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method private static varargs object([Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 4

    .line 107
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 108
    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0

    .line 109
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "JSON construction failed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private randomHex(I)Ljava/lang/String;
    .locals 6

    .line 141
    new-array v0, p1, [B

    iget-object v1, p0, Lapp/solina/cfbridge/CloudflareApi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 142
    aget-byte v3, v0, v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02x"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private request(Ljava/lang/String;Lokhttp3/HttpUrl;Lokhttp3/RequestBody;)Lapp/solina/cfbridge/CloudflareApi$Reply;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lapp/solina/cfbridge/CloudflareApi;->token:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 96
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Bearer "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 97
    const-string p3, "Authorization"

    invoke-virtual {p1, p3, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "Accept"

    const-string p3, "application/json"

    invoke-virtual {p1, p2, p3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 98
    iget-object p2, p0, Lapp/solina/cfbridge/CloudflareApi;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    const-wide/32 p2, 0x200000

    .line 99
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lokhttp3/Response;->peekBody(J)Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :try_start_1
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 102
    :goto_0
    new-instance p2, Lapp/solina/cfbridge/CloudflareApi$Reply;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-direct {p2, v0, p3}, Lapp/solina/cfbridge/CloudflareApi$Reply;-><init>(ILorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 98
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p2

    .line 95
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "API session closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private subdomainFrom(Lapp/solina/cfbridge/CloudflareApi$Reply;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object p1, p1, Lapp/solina/cfbridge/CloudflareApi$Reply;->body:Lorg/json/JSONObject;

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 136
    const-string v0, ""

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "subdomain"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    invoke-static {v0}, Lapp/solina/cfbridge/CloudflareApi;->validSubdomain(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid workers.dev subdomain response"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static validSubdomain(Ljava/lang/String;)Z
    .locals 3

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x3f

    if-gt v0, v2, :cond_0

    const-string v0, "[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static validToken(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_0

    goto :goto_2

    :cond_0
    move v1, v0

    .line 87
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    return v0
.end method


# virtual methods
.method public accounts()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/solina/cfbridge/CloudflareApi$Account;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x14

    if-gt v2, v3, :cond_8

    .line 115
    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "accounts"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {p0, v4}, Lapp/solina/cfbridge/CloudflareApi;->endpoint([Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v4

    const-string v5, "page"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v4

    const-string v5, "per_page"

    const-string v7, "50"

    invoke-virtual {v4, v5, v7}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v4

    .line 116
    const-string v5, "GET"

    const/4 v7, 0x0

    invoke-direct {p0, v5, v4, v7}, Lapp/solina/cfbridge/CloudflareApi;->request(Ljava/lang/String;Lokhttp3/HttpUrl;Lokhttp3/RequestBody;)Lapp/solina/cfbridge/CloudflareApi$Reply;

    move-result-object v4

    .line 117
    invoke-virtual {v4}, Lapp/solina/cfbridge/CloudflareApi$Reply;->success()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 118
    iget-object v5, v4, Lapp/solina/cfbridge/CloudflareApi$Reply;->body:Lorg/json/JSONObject;

    const-string v7, "result"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_6

    move v7, v6

    .line 120
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 121
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_2

    .line 122
    :cond_0
    const-string v9, "id"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 123
    const-string v10, "[a-f0-9]{32}"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 124
    new-instance v10, Lapp/solina/cfbridge/CloudflareApi$Account;

    const-string v11, "name"

    const-string v12, "Cloudflare account"

    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v9, v8}, Lapp/solina/cfbridge/CloudflareApi$Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 123
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid account identifier in API response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_2
    iget-object v4, v4, Lapp/solina/cfbridge/CloudflareApi$Reply;->body:Lorg/json/JSONObject;

    const-string v7, "result_info"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 127
    :cond_3
    const-string v7, "total_pages"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 128
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/16 v5, 0x32

    if-lt v4, v5, :cond_8

    if-lez v6, :cond_4

    if-lt v2, v6, :cond_4

    goto :goto_4

    :cond_4
    if-eq v2, v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 129
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too many accounts; restrict the API token to the intended account"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed account response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_7
    const-string v0, "\u062e\u0648\u0627\u0646\u062f\u0646 \u062d\u0633\u0627\u0628\u200c\u0647\u0627"

    invoke-virtual {v4, v0}, Lapp/solina/cfbridge/CloudflareApi$Reply;->failure(Ljava/lang/String;)Lapp/solina/cfbridge/CloudflareApi$ApiException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_4
    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lapp/solina/cfbridge/CloudflareApi;->token:Ljava/lang/String;

    return-void
.end method

.method public provision(Lapp/solina/cfbridge/CloudflareApi$Account;Ljava/lang/String;ZLapp/solina/cfbridge/CloudflareApi$Progress;Lapp/solina/cfbridge/CloudflareApi$Checkpoint;)Lapp/solina/cfbridge/CloudflareApi$Deployment;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    if-eqz v7, :cond_f

    .line 145
    iget-object v1, v7, Lapp/solina/cfbridge/CloudflareApi$Account;->id:Ljava/lang/String;

    const-string v2, "[a-f0-9]{32}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v8, :cond_e

    .line 146
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/high16 v2, 0x40000

    if-gt v1, v2, :cond_e

    .line 147
    const-string v1, "\u0628\u0631\u0631\u0633\u06cc workers.dev \u062d\u0633\u0627\u0628 \u0627\u0646\u062a\u062e\u0627\u0628\u06cc\u2026"

    invoke-interface {v9, v1}, Lapp/solina/cfbridge/CloudflareApi$Progress;->update(Ljava/lang/String;)V

    const/4 v10, 0x4

    .line 148
    new-array v1, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "accounts"

    aput-object v12, v1, v11

    iget-object v2, v7, Lapp/solina/cfbridge/CloudflareApi$Account;->id:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v2, v1, v13

    const/4 v14, 0x2

    const-string v15, "workers"

    aput-object v15, v1, v14

    const/4 v6, 0x3

    const-string v5, "subdomain"

    aput-object v5, v1, v6

    invoke-direct {v0, v1}, Lapp/solina/cfbridge/CloudflareApi;->endpoint([Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 149
    const-string v2, "GET"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v4}, Lapp/solina/cfbridge/CloudflareApi;->request(Ljava/lang/String;Lokhttp3/HttpUrl;Lokhttp3/RequestBody;)Lapp/solina/cfbridge/CloudflareApi$Reply;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Lapp/solina/cfbridge/CloudflareApi$Reply;->success()Z

    move-result v16

    const-string v10, "PUT"

    const/16 v14, 0x2717

    if-eqz v16, :cond_0

    invoke-direct {v0, v3}, Lapp/solina/cfbridge/CloudflareApi;->subdomainFrom(Lapp/solina/cfbridge/CloudflareApi$Reply;)Ljava/lang/String;

    move-result-object v1

    move v13, v11

    move-object v11, v1

    goto :goto_1

    .line 153
    :cond_0
    invoke-virtual {v3}, Lapp/solina/cfbridge/CloudflareApi$Reply;->code()I

    move-result v13

    const-string v11, "\u062e\u0648\u0627\u0646\u062f\u0646 workers.dev"

    if-ne v13, v14, :cond_d

    .line 155
    invoke-direct {v0, v2, v1, v4}, Lapp/solina/cfbridge/CloudflareApi;->request(Ljava/lang/String;Lokhttp3/HttpUrl;Lokhttp3/RequestBody;)Lapp/solina/cfbridge/CloudflareApi$Reply;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Lapp/solina/cfbridge/CloudflareApi$Reply;->success()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-direct {v0, v3}, Lapp/solina/cfbridge/CloudflareApi;->subdomainFrom(Lapp/solina/cfbridge/CloudflareApi$Reply;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v3}, Lapp/solina/cfbridge/CloudflareApi$Reply;->code()I

    move-result v13

    if-ne v13, v14, :cond_c

    .line 158
    const-string v3, "\u0633\u0627\u062e\u062a workers.dev \u062c\u062f\u06cc\u062f \u0628\u0631\u0627\u06cc \u062d\u0633\u0627\u0628\u06cc \u06a9\u0647 \u0647\u0646\u0648\u0632 \u0632\u06cc\u0631\u062f\u0627\u0645\u0646\u0647 \u0646\u062f\u0627\u0631\u062f\u2026"

    invoke-interface {v9, v3}, Lapp/solina/cfbridge/CloudflareApi$Progress;->update(Ljava/lang/String;)V

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "pol-"

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x8

    invoke-direct {v0, v11}, Lapp/solina/cfbridge/CloudflareApi;->randomHex(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lapp/solina/cfbridge/CloudflareApi;->object([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lapp/solina/cfbridge/CloudflareApi;->jsonBody(Lorg/json/JSONObject;)Lokhttp3/RequestBody;

    move-result-object v3

    invoke-direct {v0, v10, v1, v3}, Lapp/solina/cfbridge/CloudflareApi;->request(Ljava/lang/String;Lokhttp3/HttpUrl;Lokhttp3/RequestBody;)Lapp/solina/cfbridge/CloudflareApi$Reply;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lapp/solina/cfbridge/CloudflareApi$Reply;->success()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 162
    invoke-direct {v0, v1}, Lapp/solina/cfbridge/CloudflareApi;->subdomainFrom(Lapp/solina/cfbridge/CloudflareApi$Reply;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    :goto_0
    move-object v11, v1

    move v13, v3

    :goto_1
    const/4 v1, 0x0

    :goto_2
    const/4 v3, 0x6

    .line 167
    const-string v18, "scripts"

    const/4 v14, 0x5

    if-ge v1, v6, :cond_5

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "pol-bridge-"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lapp/solina/cfbridge/CloudflareApi;->randomHex(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    new-array v6, v14, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v12, v6, v17

    iget-object v3, v7, Lapp/solina/cfbridge/CloudflareApi$Account;->id:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v3, v6, v16

    const/4 v3, 0x2

    aput-object v15, v6, v3

    const/16 v20, 0x3

    aput-object v18, v6, v20

    const/4 v3, 0x4

    aput-object v4, v6, v3

    invoke-direct {v0, v6}, Lapp/solina/cfbridge/CloudflareApi;->endpoint([Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v0, v2, v3, v6}, Lapp/solina/cfbridge/CloudflareApi;->request(Ljava/lang/String;Lokhttp3/HttpUrl;Lokhttp3/RequestBody;)Lapp/solina/cfbridge/CloudflareApi$Reply;

    move-result-object v3

    .line 170
    iget v6, v3, Lapp/solina/cfbridge/CloudflareApi$Reply;->status:I

    const/16 v14, 0x194

    if-ne v6, v14, :cond_3

    invoke-virtual {v3}, Lapp/solina/cfbridge/CloudflareApi$Reply;->code()I

    move-result v6

    const/16 v14, 0x2717

    if-eq v6, v14, :cond_2

    invoke-virtual {v3}, Lapp/solina/cfbridge/CloudflareApi$Reply;->code()I

    move-result v6

    const/16 v14, 0x276a

    if-ne v6, v14, :cond_3

    :cond_2
    move-object v14, v4

    goto :goto_3

    .line 171
    :cond_3
    iget v4, v3, Lapp/solina/cfbridge/CloudflareApi$Reply;->status:I

    const/16 v6, 0xc8

    if-lt v4, v6, :cond_4

    iget v4, v3, Lapp/solina/cfbridge/CloudflareApi$Reply;->status:I

    const/16 v6, 0x12c

    if-ge v4, v6, :cond_4

    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v20

    const/4 v4, 0x0

    const/16 v14, 0x2717

    goto :goto_2

    :cond_4
    const-string v1, "\u0628\u0631\u0631\u0633\u06cc \u0646\u0627\u0645 Worker"

    invoke-virtual {v3, v1}, Lapp/solina/cfbridge/CloudflareApi$Reply;->failure(Ljava/lang/String;)Lapp/solina/cfbridge/CloudflareApi$ApiException;

    move-result-object v1

    throw v1

    :cond_5
    move/from16 v20, v6

    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_a

    const/16 v1, 0x20

    .line 174
    invoke-direct {v0, v1}, Lapp/solina/cfbridge/CloudflareApi;->randomHex(I)Ljava/lang/String;

    move-result-object v26

    .line 175
    new-instance v6, Lapp/solina/cfbridge/CloudflareApi$Deployment;

    move-object v1, v6

    move-object/from16 v2, p1

    const/4 v4, 0x6

    move-object v3, v14

    move-object/from16 v19, v10

    const/4 v10, 0x0

    move-object v4, v11

    move-object v11, v5

    move-object/from16 v5, v26

    move-object v10, v6

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lapp/solina/cfbridge/CloudflareApi$Deployment;-><init>(Lapp/solina/cfbridge/CloudflareApi$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v1, p5

    .line 177
    invoke-interface {v1, v10}, Lapp/solina/cfbridge/CloudflareApi$Checkpoint;->save(Lapp/solina/cfbridge/CloudflareApi$Deployment;)V

    .line 178
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 179
    const-string v24, "BRIDGE_TOKEN"

    const-string v25, "text"

    const-string v21, "type"

    const-string v22, "secret_text"

    const-string v23, "name"

    filled-new-array/range {v21 .. v26}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lapp/solina/cfbridge/CloudflareApi;->object([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 180
    const-string v25, "text"

    const-string v26, "*"

    const-string v21, "type"

    const-string v22, "plain_text"

    const-string v23, "name"

    const-string v24, "ALLOWED_HOSTS"

    filled-new-array/range {v21 .. v26}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lapp/solina/cfbridge/CloudflareApi;->object([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 181
    const-string v2, "aws:us-east-1"

    if-eqz p3, :cond_6

    move-object/from16 v26, v2

    goto :goto_4

    :cond_6
    const-string v3, "none"

    move-object/from16 v26, v3

    :goto_4
    const-string v21, "type"

    const-string v22, "plain_text"

    const-string v23, "name"

    const-string v24, "PLACEMENT_HINT"

    const-string v25, "text"

    filled-new-array/range {v21 .. v26}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lapp/solina/cfbridge/CloudflareApi;->object([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v3, 0x0

    .line 183
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v3, "enabled"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lapp/solina/cfbridge/CloudflareApi;->object([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v34

    const-string v4, "workers/message"

    const-string v5, "Pol personal bridge provisioned from its Android app"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 184
    invoke-static {v4}, Lapp/solina/cfbridge/CloudflareApi;->object([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v36

    const-string v27, "main_module"

    const-string v28, "worker.js"

    const-string v29, "compatibility_date"

    const-string v30, "2026-11-19"

    const-string v31, "bindings"

    const-string v33, "observability"

    const-string v35, "annotations"

    move-object/from16 v32, v1

    filled-new-array/range {v27 .. v36}, [Ljava/lang/Object;

    move-result-object v1

    .line 182
    invoke-static {v1}, Lapp/solina/cfbridge/CloudflareApi;->object([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz p3, :cond_7

    .line 185
    const-string v4, "region"

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lapp/solina/cfbridge/CloudflareApi;->object([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "placement"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    :cond_7
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v4, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v4}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 187
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lapp/solina/cfbridge/CloudflareApi;->JSON:Lokhttp3/MediaType;

    invoke-static {v1, v4}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    const-string v4, "metadata"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    sget-object v2, Lapp/solina/cfbridge/CloudflareApi;->MODULE:Lokhttp3/MediaType;

    .line 188
    invoke-static {v8, v2}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v2

    const-string v4, "worker.js"

    invoke-virtual {v1, v4, v4, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    .line 189
    const-string v2, "\u0628\u0627\u0631\u06af\u0630\u0627\u0631\u06cc Worker \u0648 \u0633\u0627\u062e\u062a \u06a9\u0644\u06cc\u062f \u067e\u0644 \u0631\u0648\u06cc \u062d\u0633\u0627\u0628 \u062e\u0648\u062f\u062a\u2026"

    invoke-interface {v9, v2}, Lapp/solina/cfbridge/CloudflareApi$Progress;->update(Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 190
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v4, v2

    iget-object v2, v7, Lapp/solina/cfbridge/CloudflareApi$Account;->id:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v15, v4, v2

    aput-object v18, v4, v20

    const/4 v2, 0x4

    aput-object v14, v4, v2

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/CloudflareApi;->endpoint([Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    move-object/from16 v4, v19

    invoke-direct {v0, v4, v2, v1}, Lapp/solina/cfbridge/CloudflareApi;->request(Ljava/lang/String;Lokhttp3/HttpUrl;Lokhttp3/RequestBody;)Lapp/solina/cfbridge/CloudflareApi$Reply;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lapp/solina/cfbridge/CloudflareApi$Reply;->success()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 192
    const-string v1, "\u0641\u0639\u0627\u0644\u200c\u0633\u0627\u0632\u06cc \u0646\u0634\u0627\u0646\u06cc \u0639\u0645\u0648\u0645\u06cc workers.dev \u0628\u0631\u0627\u06cc Worker \u062c\u062f\u06cc\u062f\u2026"

    invoke-interface {v9, v1}, Lapp/solina/cfbridge/CloudflareApi$Progress;->update(Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 193
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v1, v2

    iget-object v4, v7, Lapp/solina/cfbridge/CloudflareApi$Account;->id:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    aput-object v15, v1, v4

    aput-object v18, v1, v20

    const/4 v4, 0x4

    aput-object v14, v1, v4

    const/4 v4, 0x5

    aput-object v11, v1, v4

    invoke-direct {v0, v1}, Lapp/solina/cfbridge/CloudflareApi;->endpoint([Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 194
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "previews_enabled"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lapp/solina/cfbridge/CloudflareApi;->object([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lapp/solina/cfbridge/CloudflareApi;->jsonBody(Lorg/json/JSONObject;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 193
    const-string v4, "POST"

    invoke-direct {v0, v4, v1, v2}, Lapp/solina/cfbridge/CloudflareApi;->request(Ljava/lang/String;Lokhttp3/HttpUrl;Lokhttp3/RequestBody;)Lapp/solina/cfbridge/CloudflareApi$Reply;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lapp/solina/cfbridge/CloudflareApi$Reply;->success()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lapp/solina/cfbridge/CloudflareApi$Reply;->body:Lorg/json/JSONObject;

    const-string v4, "result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lapp/solina/cfbridge/CloudflareApi$Reply;->body:Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v10

    .line 196
    :cond_8
    const-string v2, "\u0641\u0639\u0627\u0644\u200c\u0633\u0627\u0632\u06cc \u0646\u0634\u0627\u0646\u06cc Worker"

    invoke-virtual {v1, v2}, Lapp/solina/cfbridge/CloudflareApi$Reply;->failure(Ljava/lang/String;)Lapp/solina/cfbridge/CloudflareApi$ApiException;

    move-result-object v1

    throw v1

    .line 191
    :cond_9
    const-string v2, "\u0628\u0627\u0631\u06af\u0630\u0627\u0631\u06cc Worker"

    invoke-virtual {v1, v2}, Lapp/solina/cfbridge/CloudflareApi$Reply;->failure(Ljava/lang/String;)Lapp/solina/cfbridge/CloudflareApi$ApiException;

    move-result-object v1

    throw v1

    .line 173
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not reserve a unique Worker name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_b
    const-string v2, "\u0633\u0627\u062e\u062a workers.dev"

    invoke-virtual {v1, v2}, Lapp/solina/cfbridge/CloudflareApi$Reply;->failure(Ljava/lang/String;)Lapp/solina/cfbridge/CloudflareApi$ApiException;

    move-result-object v1

    throw v1

    .line 163
    :cond_c
    invoke-virtual {v3, v11}, Lapp/solina/cfbridge/CloudflareApi$Reply;->failure(Ljava/lang/String;)Lapp/solina/cfbridge/CloudflareApi$ApiException;

    move-result-object v1

    throw v1

    .line 164
    :cond_d
    invoke-virtual {v3, v11}, Lapp/solina/cfbridge/CloudflareApi$Reply;->failure(Ljava/lang/String;)Lapp/solina/cfbridge/CloudflareApi$ApiException;

    move-result-object v1

    throw v1

    .line 146
    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Worker asset invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing verified account"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
