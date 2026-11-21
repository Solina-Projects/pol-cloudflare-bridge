.class public final Lapp/solina/cfbridge/GeminiInsets;
.super Ljava/lang/Object;
.source "GeminiInsets.java"


# static fields
.field private static final INSTALLED:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lapp/solina/cfbridge/GeminiInsets;->INSTALLED:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isGemini(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_false

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gemini.google.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_false

    const/4 v0, 0x1

    return v0

    :cond_false
    const/4 v0, 0x0
    :try_end_0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0

    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method public static onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_return

    if-eqz p0, :cond_return

    invoke-static {p1}, Lapp/solina/cfbridge/GeminiInsets;->isGemini(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lapp/solina/cfbridge/GeminiInsets;->INSTALLED:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_not_target

    if-nez v1, :cond_return

    new-instance v0, Lapp/solina/cfbridge/GeminiInsets$1;

    invoke-direct {v0}, Lapp/solina/cfbridge/GeminiInsets$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    sget-object v0, Lapp/solina/cfbridge/GeminiInsets;->INSTALLED:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestApplyInsets()V

    return-void

    :cond_not_target
    if-eqz v1, :cond_return

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    sget-object v0, Lapp/solina/cfbridge/GeminiInsets;->INSTALLED:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestApplyInsets()V

    :cond_return
    return-void
.end method
