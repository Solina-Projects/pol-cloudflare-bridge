.class public final Lapp/solina/cfbridge/CloudflareApi$ApiException;
.super Ljava/io/IOException;
.source "CloudflareApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/solina/cfbridge/CloudflareApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiException"
.end annotation


# instance fields
.field public final cloudflareCode:I

.field public final httpStatus:I

.field public final operation:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cloudflare "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    if-lez p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " / code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lapp/solina/cfbridge/CloudflareApi$ApiException;->operation:Ljava/lang/String;

    iput p2, p0, Lapp/solina/cfbridge/CloudflareApi$ApiException;->httpStatus:I

    iput p3, p0, Lapp/solina/cfbridge/CloudflareApi$ApiException;->cloudflareCode:I

    return-void
.end method


# virtual methods
.method public safePersianMessage()Ljava/lang/String;
    .locals 3

    .line 54
    iget v0, p0, Lapp/solina/cfbridge/CloudflareApi$ApiException;->httpStatus:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_3

    const/16 v1, 0x193

    if-eq v0, v1, :cond_3

    iget v1, p0, Lapp/solina/cfbridge/CloudflareApi$ApiException;->cloudflareCode:I

    const/16 v2, 0x2710

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2395

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x1ad

    if-ne v0, v1, :cond_1

    .line 57
    const-string v0, "\u0645\u062d\u062f\u0648\u062f\u06cc\u062a \u062f\u0631\u062e\u0648\u0627\u0633\u062a \u06a9\u0644\u0648\u062f\u0641\u0644\u0631 \u0641\u0639\u0627\u0644 \u0634\u062f\u0647 \u0627\u0633\u062a\u061b \u0628\u0639\u062f\u0627\u064b \u062f\u0648\u0628\u0627\u0631\u0647 \u0627\u0645\u062a\u062d\u0627\u0646 \u06a9\u0646. \u062f\u0648\u0628\u0627\u0631\u0647\u200c\u0633\u0627\u0632\u06cc \u062e\u0648\u062f\u06a9\u0627\u0631 \u0627\u0646\u062c\u0627\u0645 \u0646\u0634\u062f."

    return-object v0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u0645\u0631\u062d\u0644\u0647\u0654 \u00ab"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lapp/solina/cfbridge/CloudflareApi$ApiException;->operation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00bb \u062f\u0631 \u06a9\u0644\u0648\u062f\u0641\u0644\u0631 \u062a\u0623\u06cc\u06cc\u062f \u0646\u0634\u062f. HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lapp/solina/cfbridge/CloudflareApi$ApiException;->httpStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lapp/solina/cfbridge/CloudflareApi$ApiException;->cloudflareCode:I

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " / \u06a9\u062f "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lapp/solina/cfbridge/CloudflareApi$ApiException;->cloudflareCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". \u062a\u0648\u06a9\u0646 \u062f\u0631 \u067e\u06cc\u0627\u0645 \u062e\u0637\u0627 \u0646\u0645\u0627\u06cc\u0634 \u062f\u0627\u062f\u0647 \u0646\u0645\u06cc\u200c\u0634\u0648\u062f."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_3
    :goto_1
    const-string v0, "\u06a9\u0644\u0648\u062f\u0641\u0644\u0631 \u062f\u0633\u062a\u0631\u0633\u06cc \u0631\u0627 \u0646\u067e\u0630\u06cc\u0631\u0641\u062a. \u062a\u0648\u06a9\u0646 \u0645\u0639\u062a\u0628\u0631 \u0628\u0627 Workers Scripts: Edit \u0648 Account Settings: Read \u0628\u0631\u0627\u06cc \u0647\u0645\u06cc\u0646 \u062d\u0633\u0627\u0628 \u0628\u0633\u0627\u0632\u061b Global API Key \u0644\u0627\u0632\u0645 \u0646\u06cc\u0633\u062a."

    return-object v0
.end method
