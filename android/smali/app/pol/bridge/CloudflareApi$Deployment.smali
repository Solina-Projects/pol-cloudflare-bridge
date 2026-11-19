.class public final Lapp/pol/bridge/CloudflareApi$Deployment;
.super Ljava/lang/Object;
.source "CloudflareApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/pol/bridge/CloudflareApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deployment"
.end annotation


# instance fields
.field public final accountId:Ljava/lang/String;

.field public final accountName:Ljava/lang/String;

.field public final bridgeKey:Ljava/lang/String;

.field public final endpoint:Lokhttp3/HttpUrl;

.field public final scriptName:Ljava/lang/String;

.field public final subdomain:Ljava/lang/String;

.field public final subdomainCreated:Z


# direct methods
.method constructor <init>(Lapp/pol/bridge/CloudflareApi$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iget-object v0, p1, Lapp/pol/bridge/CloudflareApi$Account;->id:Ljava/lang/String;

    iput-object v0, p0, Lapp/pol/bridge/CloudflareApi$Deployment;->accountId:Ljava/lang/String;

    iget-object p1, p1, Lapp/pol/bridge/CloudflareApi$Account;->name:Ljava/lang/String;

    iput-object p1, p0, Lapp/pol/bridge/CloudflareApi$Deployment;->accountName:Ljava/lang/String;

    iput-object p2, p0, Lapp/pol/bridge/CloudflareApi$Deployment;->scriptName:Ljava/lang/String;

    iput-object p3, p0, Lapp/pol/bridge/CloudflareApi$Deployment;->subdomain:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lapp/pol/bridge/CloudflareApi$Deployment;->bridgeKey:Ljava/lang/String;

    iput-boolean p5, p0, Lapp/pol/bridge/CloudflareApi$Deployment;->subdomainCreated:Z

    .line 42
    new-instance p1, Lokhttp3/HttpUrl$Builder;

    invoke-direct {p1}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const-string p4, "https"

    invoke-virtual {p1, p4}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "."

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ".workers.dev"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    iput-object p1, p0, Lapp/pol/bridge/CloudflareApi$Deployment;->endpoint:Lokhttp3/HttpUrl;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deployment("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lapp/pol/bridge/CloudflareApi$Deployment;->scriptName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key=<redacted>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
