.class public final Lapp/solina/cfbridge/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/solina/cfbridge/MainActivity$Config;
    }
.end annotation


# static fields
.field private static final BG:I

.field private static final CARD:I

.field private static final INK:I

.field private static final LIME:I

.field private static final LINE:I

.field private static final MUTED:I


# instance fields
.field private final assistHandler:Landroid/os/Handler;

.field private assistPolls:I

.field private assistStatus:Landroid/widget/TextView;

.field private final assistTick:Ljava/lang/Runnable;

.field private assistant:Lapp/solina/cfbridge/LoginAssistant;

.field private automaticLogin:Landroid/widget/CheckBox;

.field private final background:Ljava/util/concurrent/ExecutorService;

.field private badge:Landroid/widget/TextView;

.field private bridge:Lapp/solina/cfbridge/LocalBridgeProxy;

.field private browserError:Landroid/widget/TextView;

.field private browserHost:Landroid/widget/TextView;

.field private browserScreen:Landroid/widget/LinearLayout;

.field private cloudflareTokenInput:Landroid/widget/EditText;

.field private connections:Landroid/widget/TextView;

.field private volatile destroyed:Z

.field private emailInput:Landroid/widget/EditText;

.field private endpointInput:Landroid/widget/EditText;

.field private home:Landroid/widget/ScrollView;

.field private humanPromptShown:Z

.field private loginScript:Ljava/lang/String;

.field private musePasswordInput:Landroid/widget/EditText;

.field private final network:Lokhttp3/OkHttpClient;

.field private observerOnly:Z

.field private openButton:Landroid/widget/Button;

.field private opening:Z

.field private progress:Landroid/widget/ProgressBar;

.field private provisionButton:Landroid/widget/Button;

.field private provisionStatus:Landroid/widget/TextView;

.field private provisioning:Z

.field private volatile provisioningApi:Lapp/solina/cfbridge/CloudflareApi;

.field private proxyApplied:Z

.field private root:Landroid/widget/FrameLayout;

.field private statusText:Landroid/widget/TextView;

.field private store:Lapp/solina/cfbridge/TokenStore;

.field private testButton:Landroid/widget/Button;

.field private tokenInput:Landroid/widget/EditText;

.field private final tunnelNetwork:Lokhttp3/OkHttpClient;

.field private usPlacement:Landroid/widget/CheckBox;

.field private webView:Landroid/webkit/WebView;

.field public homeWeb:Landroid/webkit/WebView;

.field public launchUrl:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$u_fvOy3hC7BZdBczJ7ic9PDGLmU(Lapp/solina/cfbridge/MainActivity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yT5UesQcsrGxXUDRuS63RBUerJw(Lapp/solina/cfbridge/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->tickAssist()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetassistHandler(Lapp/solina/cfbridge/MainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lapp/solina/cfbridge/MainActivity;->assistHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetassistTick(Lapp/solina/cfbridge/MainActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lapp/solina/cfbridge/MainActivity;->assistTick:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbrowserError(Lapp/solina/cfbridge/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lapp/solina/cfbridge/MainActivity;->browserError:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbrowserHost(Lapp/solina/cfbridge/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lapp/solina/cfbridge/MainActivity;->browserHost:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconnections(Lapp/solina/cfbridge/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lapp/solina/cfbridge/MainActivity;->connections:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdestroyed(Lapp/solina/cfbridge/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprogress(Lapp/solina/cfbridge/MainActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lapp/solina/cfbridge/MainActivity;->progress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mscheduleAssistant(Lapp/solina/cfbridge/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->scheduleAssistant()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopAssistant(Lapp/solina/cfbridge/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->stopAssistant()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    const/16 v1, 0x1b

    const/16 v2, 0x9

    .line 56
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lapp/solina/cfbridge/MainActivity;->BG:I

    const/16 v0, 0x1c

    const/16 v1, 0x2b

    const/16 v2, 0x11

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lapp/solina/cfbridge/MainActivity;->CARD:I

    const/16 v0, 0xf4

    const/16 v1, 0xfc

    const/16 v2, 0xee

    .line 57
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lapp/solina/cfbridge/MainActivity;->INK:I

    const/16 v0, 0xaa

    const/16 v1, 0xbf

    const/16 v2, 0x99

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lapp/solina/cfbridge/MainActivity;->MUTED:I

    const/16 v0, 0xf8

    const/16 v1, 0x7a

    const/16 v2, 0xb8

    .line 58
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lapp/solina/cfbridge/MainActivity;->LIME:I

    const/16 v0, 0x39

    const/16 v1, 0x4d

    const/16 v2, 0x29

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lapp/solina/cfbridge/MainActivity;->LINE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lapp/solina/cfbridge/MainActivity;->loginScript:Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lapp/solina/cfbridge/MainActivity;->assistHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda33;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    iput-object v0, p0, Lapp/solina/cfbridge/MainActivity;->assistTick:Ljava/lang/Runnable;

    .line 82
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lapp/solina/cfbridge/MainActivity;->background:Ljava/util/concurrent/ExecutorService;

    .line 83
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 84
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0xc

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x19

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x14

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lapp/solina/cfbridge/MainActivity;->network:Lokhttp3/OkHttpClient;

    .line 86
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lapp/solina/cfbridge/MainActivity;->tunnelNetwork:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private add(Landroid/widget/LinearLayout;Landroid/view/View;I)V
    .locals 3

    .line 131
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float p3, p3

    invoke-direct {p0, p3}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result p3

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private attachBrowser()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 388
    iput-boolean v1, v0, Lapp/solina/cfbridge/MainActivity;->opening:Z

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lapp/solina/cfbridge/MainActivity;->buttons(Z)V

    .line 389
    invoke-direct/range {p0 .. p0}, Lapp/solina/cfbridge/MainActivity;->column()Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, v0, Lapp/solina/cfbridge/MainActivity;->browserScreen:Landroid/widget/LinearLayout;

    sget v4, Lapp/solina/cfbridge/MainActivity;->BG:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 390
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v6, 0x41200000    # 10.0f

    .line 391
    invoke-direct {v0, v6}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v7

    const/high16 v8, 0x41000000    # 8.0f

    invoke-direct {v0, v8}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v9

    invoke-direct {v0, v6}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v10

    invoke-direct {v0, v8}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v11

    invoke-virtual {v3, v7, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 392
    const-string v7, "\u00d7"

    invoke-direct {v0, v7, v1}, Lapp/solina/cfbridge/MainActivity;->button(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v7

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42300000    # 44.0f

    invoke-direct {v0, v10}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v11

    invoke-direct {v0, v10}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v12

    invoke-direct {v9, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    const-string v9, "\u0642\u0637\u0639 \u067e\u0644 \u0648 \u0628\u0627\u0632\u06af\u0634\u062a \u0628\u0647 \u062a\u0646\u0638\u06cc\u0645\u0627\u062a"

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v9, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda37;

    invoke-direct {v9, v0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda37;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    invoke-direct/range {p0 .. p0}, Lapp/solina/cfbridge/MainActivity;->column()Landroid/widget/LinearLayout;

    move-result-object v7

    const/high16 v9, 0x41400000    # 12.0f

    invoke-direct {v0, v9}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v11

    invoke-direct {v0, v8}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v12

    invoke-virtual {v7, v11, v1, v12, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 395
    sget v11, Lapp/solina/cfbridge/MainActivity;->LIME:I

    const-string v12, "muse.ai  \u00b7  HTTPS"

    const/16 v13, 0xe

    invoke-direct {v0, v12, v13, v11, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v12

    iput-object v12, v0, Lapp/solina/cfbridge/MainActivity;->browserHost:Landroid/widget/TextView;

    .line 396
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v12, v0, Lapp/solina/cfbridge/MainActivity;->browserHost:Landroid/widget/TextView;

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 397
    sget v12, Lapp/solina/cfbridge/MainActivity;->MUTED:I

    const-string v13, "\u067e\u0644 \u0641\u0639\u0627\u0644 \u00b7 \u0628\u062f\u0648\u0646 \u0627\u062a\u0635\u0627\u0644 \u0645\u0633\u062a\u0642\u06cc\u0645 \u062c\u0627\u06cc\u06af\u0632\u06cc\u0646"

    const/16 v14, 0xa

    invoke-direct {v0, v13, v14, v12, v1}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v13

    iput-object v13, v0, Lapp/solina/cfbridge/MainActivity;->connections:Landroid/widget/TextView;

    .line 398
    iget-object v13, v0, Lapp/solina/cfbridge/MainActivity;->browserHost:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v13, v0, Lapp/solina/cfbridge/MainActivity;->connections:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v13, v1, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    const-string v7, "\u21bb"

    invoke-direct {v0, v7, v1}, Lapp/solina/cfbridge/MainActivity;->button(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v7

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v14

    invoke-direct {v0, v10}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v10

    invoke-direct {v13, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    const-string v10, "\u0628\u0627\u0631\u06af\u0630\u0627\u0631\u06cc \u062f\u0648\u0628\u0627\u0631\u0647"

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v10, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda38;

    invoke-direct {v10, v0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda38;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v7, v0, Lapp/solina/cfbridge/MainActivity;->browserScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 403
    new-instance v3, Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    const v10, 0x1010078

    invoke-direct {v3, v0, v7, v10}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v0, Lapp/solina/cfbridge/MainActivity;->progress:Landroid/widget/ProgressBar;

    .line 404
    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 405
    iget-object v3, v0, Lapp/solina/cfbridge/MainActivity;->browserScreen:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lapp/solina/cfbridge/MainActivity;->progress:Landroid/widget/ProgressBar;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x40400000    # 3.0f

    invoke-direct {v0, v13}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v13

    const/4 v14, -0x1

    invoke-direct {v10, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget-object v3, v0, Lapp/solina/cfbridge/MainActivity;->assistant:Lapp/solina/cfbridge/LoginAssistant;

    if-eqz v3, :cond_0

    const-string v3, "\u06cc\u0627\u0631 \u0648\u0631\u0648\u062f \u0641\u0639\u0627\u0644 \u0627\u0633\u062a\u061b \u0641\u0642\u0637 \u062f\u0631 \u0641\u0631\u0645 \u0631\u0633\u0645\u06cc Muse."

    goto :goto_0

    :cond_0
    const-string v3, "\u0648\u0631\u0648\u062f \u062f\u0633\u062a\u06cc \u062f\u0631 \u0635\u0641\u062d\u0647\u0654 \u0627\u0635\u0644\u06cc Muse"

    :goto_0
    const/16 v7, 0xb

    invoke-direct {v0, v3, v7, v11, v1}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lapp/solina/cfbridge/MainActivity;->assistStatus:Landroid/widget/TextView;

    .line 407
    invoke-direct {v0, v9}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v10

    const/high16 v13, 0x40e00000    # 7.0f

    invoke-direct {v0, v13}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v5

    invoke-direct {v0, v9}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v6

    invoke-direct {v0, v13}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v13

    invoke-virtual {v3, v10, v5, v6, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, v0, Lapp/solina/cfbridge/MainActivity;->browserScreen:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lapp/solina/cfbridge/MainActivity;->assistStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v3, 0xbc

    const/16 v5, 0xa4

    const/16 v6, 0xff

    .line 408
    invoke-static {v6, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const-string v5, ""

    invoke-direct {v0, v5, v7, v3, v1}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lapp/solina/cfbridge/MainActivity;->browserError:Landroid/widget/TextView;

    .line 409
    invoke-direct {v0, v9}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v5

    invoke-direct {v0, v8}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v6

    invoke-direct {v0, v9}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v7

    invoke-direct {v0, v8}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v9

    invoke-virtual {v3, v5, v6, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, v0, Lapp/solina/cfbridge/MainActivity;->browserError:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    iget-object v3, v0, Lapp/solina/cfbridge/MainActivity;->browserScreen:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lapp/solina/cfbridge/MainActivity;->browserError:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    .line 412
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 413
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const-string v6, "Mozilla/5.0 (Linux; Android 14; Mobile) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.6723.107 Mobile Safari/537.36"

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 415
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 416
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 417
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 418
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    .line 419
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 420
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    iget-object v6, v0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v6, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 421
    iget-object v3, v0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 422
    iget-object v3, v0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lapp/solina/cfbridge/MainActivity$2;

    invoke-direct {v4, v0}, Lapp/solina/cfbridge/MainActivity$2;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 445
    iget-object v3, v0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lapp/solina/cfbridge/MainActivity$3;

    invoke-direct {v4, v0}, Lapp/solina/cfbridge/MainActivity$3;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 449
    iget-object v3, v0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda39;

    invoke-direct {v4, v0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda39;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 452
    iget-object v3, v0, Lapp/solina/cfbridge/MainActivity;->browserScreen:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v14, v1, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-direct {v0, v7}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v7

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v9

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-direct {v0, v10}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v10

    invoke-virtual {v3, v6, v7, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 454
    const-string v6, "\u06cc\u0627\u0631 \u0648\u0631\u0648\u062f"

    const/16 v7, 0xc

    invoke-direct {v0, v6, v7, v11, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v6

    invoke-direct {v0, v8}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v9

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v10

    invoke-direct {v0, v8}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v8

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v13

    invoke-virtual {v6, v9, v10, v8, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda40;

    invoke-direct {v4, v0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda40;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v4, v1, v8, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    const-string v4, "\u0644\u06cc\u0646\u06a9 \u062a\u0623\u06cc\u06cc\u062f"

    invoke-direct {v0, v4, v7, v11, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v6

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v8

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v9

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v10

    invoke-virtual {v2, v6, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 456
    new-instance v6, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda1;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v1, v8, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    const-string v2, "\u062d\u0630\u0641 \u0646\u0634\u0633\u062a"

    invoke-direct {v0, v2, v7, v12, v1}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v6

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v7

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v8

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v4

    invoke-virtual {v2, v6, v7, v8, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 458
    new-instance v4, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda2;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v1, v6, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lapp/solina/cfbridge/MainActivity;->browserScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 462
    iget-object v1, v0, Lapp/solina/cfbridge/MainActivity;->root:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lapp/solina/cfbridge/MainActivity;->browserScreen:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    iget-object v1, v0, Lapp/solina/cfbridge/MainActivity;->home:Landroid/widget/ScrollView;

    invoke-virtual {v1, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v1, v0, Lapp/solina/cfbridge/MainActivity;->homeWeb:Landroid/webkit/WebView;
    if-eqz v1, :cond_skip_hw_hide
    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_skip_hw_hide
    iget-object v1, v0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    iget-object v2, v0, Lapp/solina/cfbridge/MainActivity;->launchUrl:Ljava/lang/String;
    if-eqz v2, :cond_use_def_url
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    move-result v3
    if-nez v3, :cond_use_def_url
    goto :goto_do_load_url

    :cond_use_def_url
    const-string v2, "https://muse.ai/"

    :goto_do_load_url
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private buildHome()V
    .locals 16

    move-object/from16 v0, p0

    .line 155
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lapp/solina/cfbridge/MainActivity;->home:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v1, v0, Lapp/solina/cfbridge/MainActivity;->home:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 156
    invoke-direct/range {p0 .. p0}, Lapp/solina/cfbridge/MainActivity;->column()Landroid/widget/LinearLayout;

    move-result-object v1

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v5

    const/high16 v6, 0x41d00000    # 26.0f

    invoke-direct {v0, v6}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v6

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v7

    invoke-direct {v0, v4}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v4

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 157
    iget-object v4, v0, Lapp/solina/cfbridge/MainActivity;->home:Landroid/widget/ScrollView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    sget v4, Lapp/solina/cfbridge/MainActivity;->MUTED:I

    const-string v5, "CLOUDFLARE ONLY / AUTO SETUP"

    const/16 v8, 0xa

    invoke-direct {v0, v5, v8, v4, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v5

    const v9, 0x3e051eb8    # 0.13f

    .line 159
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutDirection(I)V

    invoke-direct {v0, v1, v5, v3}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 160
    sget v5, Lapp/solina/cfbridge/MainActivity;->INK:I

    const-string v9, "\u067e\u0644\u060c \u062e\u0648\u062f\u0634 \u0633\u0627\u062e\u062a\u0647 \u0645\u06cc\u200c\u0634\u0648\u062f."

    const/16 v10, 0x1f

    invoke-direct {v0, v9, v10, v5, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v9

    const/16 v11, 0x10

    invoke-direct {v0, v1, v9, v11}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 161
    const-string v9, "\u062a\u0648\u06a9\u0646 \u062d\u0633\u0627\u0628 \u062e\u0648\u062f\u062a \u2190 \u0633\u0627\u062e\u062a \u062e\u0648\u062f\u06a9\u0627\u0631 Worker \u2190 \u0648\u0631\u0648\u062f \u0628\u0647 \u0633\u0627\u06cc\u062a \u0627\u0635\u0644\u06cc Muse"

    const/16 v12, 0xe

    invoke-direct {v0, v9, v12, v4, v3}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v9

    invoke-direct {v0, v1, v9, v8}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 163
    invoke-direct/range {p0 .. p0}, Lapp/solina/cfbridge/MainActivity;->column()Landroid/widget/LinearLayout;

    move-result-object v9

    const/high16 v13, 0x41900000    # 18.0f

    invoke-direct {v0, v13}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v14

    invoke-direct {v0, v13}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v15

    invoke-direct {v0, v13}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v6

    invoke-direct {v0, v13}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v10

    invoke-virtual {v9, v14, v15, v6, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget v6, Lapp/solina/cfbridge/MainActivity;->CARD:I

    const/16 v10, 0x14

    invoke-direct {v0, v6, v10, v2}, Lapp/solina/cfbridge/MainActivity;->rounded(IIZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    const-string v14, "\u06f1  \u00b7  \u0627\u062a\u0635\u0627\u0644 \u0628\u0647 \u06a9\u0644\u0648\u062f\u0641\u0644\u0631 \u062e\u0648\u062f\u062a"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15, v5, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v14

    invoke-direct {v0, v9, v14, v3}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 165
    const-string v14, "API Token \u06a9\u0644\u0648\u062f\u0641\u0644\u0631"

    const/16 v12, 0xc

    invoke-direct {v0, v14, v12, v4, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v14

    invoke-direct {v0, v9, v14, v15}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 166
    const-string v14, "Cloudflare API Token \u2014 never your Gmail password"

    invoke-direct {v0, v14, v2}, Lapp/solina/cfbridge/MainActivity;->field(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v14

    iput-object v14, v0, Lapp/solina/cfbridge/MainActivity;->cloudflareTokenInput:Landroid/widget/EditText;

    const/16 v15, 0x8

    invoke-direct {v0, v9, v14, v15}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 167
    const-string v14, "\u062a\u0648\u06a9\u0646 \u0641\u0642\u0637 \u0645\u0633\u062a\u0642\u06cc\u0645\u0627\u064b \u0628\u0647 api.cloudflare.com \u0645\u06cc\u200c\u0631\u0648\u062f\u060c \u0630\u062e\u06cc\u0631\u0647 \u0646\u0645\u06cc\u200c\u0634\u0648\u062f \u0648 \u062f\u0627\u062e\u0644 Worker \u06cc\u0627 APK \u0642\u0631\u0627\u0631 \u0646\u0645\u06cc\u200c\u06af\u06cc\u0631\u062f."

    const/16 v15, 0xb

    invoke-direct {v0, v14, v15, v4, v3}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v14

    invoke-direct {v0, v9, v14, v8}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 168
    new-instance v14, Landroid/widget/CheckBox;

    invoke-direct {v14, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lapp/solina/cfbridge/MainActivity;->usPlacement:Landroid/widget/CheckBox;

    const-string v7, "\u0631\u0627\u0647\u0646\u0645\u0627\u06cc \u0627\u062c\u0631\u0627\u06cc Cloudflare \u0646\u0632\u062f\u06cc\u06a9 US East"

    invoke-virtual {v14, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lapp/solina/cfbridge/MainActivity;->usPlacement:Landroid/widget/CheckBox;

    invoke-virtual {v7, v5}, Landroid/widget/CheckBox;->setTextColor(I)V

    iget-object v7, v0, Lapp/solina/cfbridge/MainActivity;->usPlacement:Landroid/widget/CheckBox;

    const/high16 v14, 0x41400000    # 12.0f

    invoke-virtual {v7, v14}, Landroid/widget/CheckBox;->setTextSize(F)V

    iget-object v7, v0, Lapp/solina/cfbridge/MainActivity;->usPlacement:Landroid/widget/CheckBox;

    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v7, v0, Lapp/solina/cfbridge/MainActivity;->usPlacement:Landroid/widget/CheckBox;

    const/16 v14, 0xd

    invoke-direct {v0, v9, v7, v14}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 169
    const-string v7, "\u0627\u06cc\u0646 \u06af\u0632\u06cc\u0646\u0647 IP \u062b\u0627\u0628\u062a \u06cc\u0627 \u06a9\u0634\u0648\u0631 \u062e\u0631\u0648\u062c\u06cc\u0650 \u062a\u0623\u06cc\u06cc\u062f\u0634\u062f\u0647 \u0646\u0645\u06cc\u200c\u062f\u0647\u062f\u061b \u062d\u0633\u0627\u0628 AWS \u0647\u0645 \u0644\u0627\u0632\u0645 \u0646\u06cc\u0633\u062a."

    invoke-direct {v0, v7, v15, v4, v3}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v7

    const/4 v14, 0x2

    invoke-direct {v0, v9, v7, v14}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 170
    const-string v7, "\u0633\u0627\u062e\u062a \u062e\u0648\u062f\u06a9\u0627\u0631 \u0631\u0648\u06cc \u062d\u0633\u0627\u0628 \u0645\u0646"

    invoke-direct {v0, v7, v2}, Lapp/solina/cfbridge/MainActivity;->button(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v7

    iput-object v7, v0, Lapp/solina/cfbridge/MainActivity;->provisionButton:Landroid/widget/Button;

    const/16 v14, 0x11

    invoke-direct {v0, v9, v7, v14}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 171
    iget-object v7, v0, Lapp/solina/cfbridge/MainActivity;->provisionButton:Landroid/widget/Button;

    new-instance v14, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v14, v0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda8;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v7, v0, Lapp/solina/cfbridge/MainActivity;->store:Lapp/solina/cfbridge/TokenStore;

    invoke-virtual {v7}, Lapp/solina/cfbridge/TokenStore;->endpoint()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Workers Scripts: Edit + Account Settings: Read\u060c \u0645\u062d\u062f\u0648\u062f \u0628\u0647 \u062d\u0633\u0627\u0628 \u0645\u0648\u0631\u062f\u0646\u0638\u0631."

    goto :goto_0

    :cond_0
    const-string v7, "\u06cc\u06a9 \u067e\u0644 \u0627\u0632 \u0642\u0628\u0644 \u0631\u0648\u06cc \u0627\u06cc\u0646 \u06af\u0648\u0634\u06cc \u0630\u062e\u06cc\u0631\u0647 \u0634\u062f\u0647\u061b \u0628\u0631\u0627\u06cc \u0627\u0633\u062a\u0641\u0627\u062f\u0647 \u062f\u0648\u0628\u0627\u0631\u0647 \u062a\u0648\u06a9\u0646 API \u0644\u0627\u0632\u0645 \u0646\u06cc\u0633\u062a."

    :goto_0
    invoke-direct {v0, v7, v15, v4, v3}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, v0, Lapp/solina/cfbridge/MainActivity;->provisionStatus:Landroid/widget/TextView;

    .line 173
    invoke-direct {v0, v9, v7, v12}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 174
    const-string v7, "\u0627\u06cc\u0646 \u062f\u06a9\u0645\u0647 \u06cc\u06a9 Worker \u062c\u062f\u06cc\u062f \u0648 \u062f\u0631 \u0635\u0648\u0631\u062a \u0646\u0628\u0648\u062f\u0646\u060c workers.dev \u062d\u0633\u0627\u0628 \u0631\u0627 \u0645\u06cc\u200c\u0633\u0627\u0632\u062f. Worker \u0641\u0639\u0644\u06cc \u0639\u0645\u062f\u0627\u064b \u062c\u0627\u06cc\u06af\u0632\u06cc\u0646 \u0646\u0645\u06cc\u200c\u0634\u0648\u062f\u061b \u0645\u0635\u0631\u0641 \u0648 \u0647\u0632\u06cc\u0646\u0647 \u062a\u0627\u0628\u0639 \u062d\u0633\u0627\u0628 \u062e\u0648\u062f\u062a \u0627\u0633\u062a."

    invoke-direct {v0, v7, v15, v4, v3}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v7

    invoke-direct {v0, v9, v7, v8}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    const/16 v7, 0x18

    .line 175
    invoke-direct {v0, v1, v9, v7}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 177
    invoke-direct/range {p0 .. p0}, Lapp/solina/cfbridge/MainActivity;->column()Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-direct {v0, v13}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v9

    invoke-direct {v0, v13}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v14

    invoke-direct {v0, v13}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v15

    invoke-direct {v0, v13}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v13

    invoke-virtual {v7, v9, v14, v15, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-direct {v0, v6, v10, v2}, Lapp/solina/cfbridge/MainActivity;->rounded(IIZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 179
    const-string v13, "\u06f2  \u00b7  \u0648\u0631\u0648\u062f \u06cc\u0627 \u062b\u0628\u062a\u200c\u0646\u0627\u0645 Muse"

    const/16 v14, 0x11

    invoke-direct {v0, v13, v14, v5, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v13

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v10, -0x2

    invoke-direct {v14, v3, v10, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v10, v0, Lapp/solina/cfbridge/MainActivity;->store:Lapp/solina/cfbridge/TokenStore;

    invoke-virtual {v10}, Lapp/solina/cfbridge/TokenStore;->endpoint()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "\u0646\u06cc\u0627\u0632\u0645\u0646\u062f \u067e\u0644"

    goto :goto_1

    :cond_1
    const-string v10, "\u067e\u0644 \u0630\u062e\u06cc\u0631\u0647\u200c\u0634\u062f\u0647"

    :goto_1
    invoke-direct {v0, v10, v8, v4, v3}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, v0, Lapp/solina/cfbridge/MainActivity;->badge:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {v0, v7, v9, v3}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 181
    const-string v9, "\u0627\u06cc\u0645\u06cc\u0644 \u062d\u0633\u0627\u0628 Muse \u00b7 \u0627\u062e\u062a\u06cc\u0627\u0631\u06cc \u0628\u0631\u0627\u06cc \u067e\u0631\u06a9\u0631\u062f\u0646 \u0641\u0631\u0645"

    invoke-direct {v0, v9, v12, v4, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v9

    const/16 v10, 0x13

    invoke-direct {v0, v7, v9, v10}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 182
    const-string v9, "you@example.com"

    invoke-direct {v0, v9, v3}, Lapp/solina/cfbridge/MainActivity;->field(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v9

    iput-object v9, v0, Lapp/solina/cfbridge/MainActivity;->emailInput:Landroid/widget/EditText;

    const/16 v10, 0x21

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v9, v0, Lapp/solina/cfbridge/MainActivity;->emailInput:Landroid/widget/EditText;

    const/16 v10, 0x8

    invoke-direct {v0, v7, v9, v10}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 183
    const-string v9, "\u0631\u0645\u0632 \u0645\u062e\u0635\u0648\u0635 Muse \u00b7 \u0646\u0647 \u0631\u0645\u0632 Gmail \u00b7 \u0627\u062e\u062a\u06cc\u0627\u0631\u06cc"

    invoke-direct {v0, v9, v12, v4, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v9

    invoke-direct {v0, v7, v9, v11}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 184
    const-string v9, "Muse password only \u2014 leave blank for email-code login"

    invoke-direct {v0, v9, v2}, Lapp/solina/cfbridge/MainActivity;->field(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v9

    iput-object v9, v0, Lapp/solina/cfbridge/MainActivity;->musePasswordInput:Landroid/widget/EditText;

    invoke-direct {v0, v7, v9, v10}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 185
    new-instance v9, Landroid/widget/CheckBox;

    invoke-direct {v9, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lapp/solina/cfbridge/MainActivity;->automaticLogin:Landroid/widget/CheckBox;

    const-string v10, "\u0641\u0631\u0645 \u0648\u0631\u0648\u062f \u0631\u0633\u0645\u06cc \u0631\u0627 \u067e\u0631 \u06a9\u0646 \u0648 \u062d\u062f\u0627\u06a9\u062b\u0631 \u062f\u0648 \u0628\u0627\u0631 \u00ab\u0627\u062f\u0627\u0645\u0647/\u0648\u0631\u0648\u062f\u00bb \u0631\u0627 \u0628\u0632\u0646."

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lapp/solina/cfbridge/MainActivity;->automaticLogin:Landroid/widget/CheckBox;

    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setTextColor(I)V

    iget-object v5, v0, Lapp/solina/cfbridge/MainActivity;->automaticLogin:Landroid/widget/CheckBox;

    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setTextSize(F)V

    iget-object v5, v0, Lapp/solina/cfbridge/MainActivity;->automaticLogin:Landroid/widget/CheckBox;

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v5, v0, Lapp/solina/cfbridge/MainActivity;->automaticLogin:Landroid/widget/CheckBox;

    invoke-direct {v0, v7, v5, v12}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 186
    const-string v5, "\u0627\u06cc\u0645\u06cc\u0644 \u0648 \u0631\u0645\u0632 \u062f\u0631 \u0627\u06cc\u0646 \u0628\u0631\u0646\u0627\u0645\u0647 \u0630\u062e\u06cc\u0631\u0647 \u0646\u0645\u06cc\u200c\u0634\u0648\u0646\u062f. \u062f\u0631 \u0635\u0648\u0631\u062a \u0646\u06cc\u0627\u0632 \u0628\u0647 \u06a9\u062f \u06cc\u0627 CAPTCHA\u060c \u06a9\u0646\u062a\u0631\u0644 \u0628\u0647 \u062e\u0648\u062f\u062a \u0628\u0631\u0645\u06cc\u200c\u06af\u0631\u062f\u062f. \u062f\u0633\u062a\u0631\u0633\u06cc \u0628\u0647 \u0635\u0646\u062f\u0648\u0642 \u0627\u06cc\u0645\u06cc\u0644 \u062f\u0631\u062e\u0648\u0627\u0633\u062a \u0646\u0645\u06cc\u200c\u0634\u0648\u062f."

    const/16 v9, 0xb

    invoke-direct {v0, v5, v9, v4, v3}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v5

    const/4 v9, 0x6

    invoke-direct {v0, v7, v5, v9}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 187
    const-string v5, "\u0628\u0627\u0632 \u06a9\u0631\u062f\u0646 Muse \u0648 \u0627\u062f\u0627\u0645\u0647\u0654 \u0648\u0631\u0648\u062f"

    invoke-direct {v0, v5, v2}, Lapp/solina/cfbridge/MainActivity;->button(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lapp/solina/cfbridge/MainActivity;->openButton:Landroid/widget/Button;

    const/16 v10, 0x12

    invoke-direct {v0, v7, v5, v10}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    iget-object v5, v0, Lapp/solina/cfbridge/MainActivity;->openButton:Landroid/widget/Button;

    new-instance v10, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v10, v0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda9;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const-string v5, "\u0622\u0632\u0645\u0627\u06cc\u0634 \u067e\u0644 \u0630\u062e\u06cc\u0631\u0647\u200c\u0634\u062f\u0647"

    invoke-direct {v0, v5, v3}, Lapp/solina/cfbridge/MainActivity;->button(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lapp/solina/cfbridge/MainActivity;->testButton:Landroid/widget/Button;

    invoke-direct {v0, v7, v5, v8}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    iget-object v5, v0, Lapp/solina/cfbridge/MainActivity;->testButton:Landroid/widget/Button;

    new-instance v10, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v10, v0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda10;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x14

    .line 189
    invoke-direct {v0, v1, v7, v5}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 191
    invoke-direct/range {p0 .. p0}, Lapp/solina/cfbridge/MainActivity;->column()Landroid/widget/LinearLayout;

    move-result-object v5

    const/high16 v7, 0x41800000    # 16.0f

    invoke-direct {v0, v7}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v10

    invoke-direct {v0, v7}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v13

    invoke-direct {v0, v7}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v14

    invoke-direct {v0, v7}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v15

    invoke-virtual {v5, v10, v13, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v10, 0x12

    invoke-direct {v0, v6, v10, v2}, Lapp/solina/cfbridge/MainActivity;->rounded(IIZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    const-string v6, "\u062a\u0646\u0638\u06cc\u0645\u0627\u062a \u062f\u0633\u062a\u06cc / \u0628\u0627\u0632\u06cc\u0627\u0628\u06cc \u067e\u0644  \u2304"

    const/16 v10, 0xd

    invoke-direct {v0, v6, v10, v4, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v6

    invoke-direct {v0, v5, v6, v3}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 193
    invoke-direct/range {p0 .. p0}, Lapp/solina/cfbridge/MainActivity;->column()Landroid/widget/LinearLayout;

    move-result-object v10

    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    const-string v13, "\u0645\u0628\u062f\u0623 Worker"

    invoke-direct {v0, v13, v12, v4, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v13

    invoke-direct {v0, v10, v13, v11}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    const-string v13, "https://your-worker.workers.dev"

    invoke-direct {v0, v13, v3}, Lapp/solina/cfbridge/MainActivity;->field(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v13

    iput-object v13, v0, Lapp/solina/cfbridge/MainActivity;->endpointInput:Landroid/widget/EditText;

    iget-object v14, v0, Lapp/solina/cfbridge/MainActivity;->store:Lapp/solina/cfbridge/TokenStore;

    invoke-virtual {v14}, Lapp/solina/cfbridge/TokenStore;->endpoint()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v13, v0, Lapp/solina/cfbridge/MainActivity;->endpointInput:Landroid/widget/EditText;

    const/4 v14, 0x7

    invoke-direct {v0, v10, v13, v14}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 195
    const-string v13, "\u06a9\u0644\u06cc\u062f \u067e\u0644 BRIDGE_TOKEN \u00b7 \u0646\u0647 \u062a\u0648\u06a9\u0646 API \u06a9\u0644\u0648\u062f\u0641\u0644\u0631"

    invoke-direct {v0, v13, v12, v4, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v13

    const/16 v15, 0xe

    invoke-direct {v0, v10, v13, v15}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    const-string v13, "Private bridge key"

    invoke-direct {v0, v13, v2}, Lapp/solina/cfbridge/MainActivity;->field(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v13

    iput-object v13, v0, Lapp/solina/cfbridge/MainActivity;->tokenInput:Landroid/widget/EditText;

    iget-object v15, v0, Lapp/solina/cfbridge/MainActivity;->store:Lapp/solina/cfbridge/TokenStore;

    invoke-virtual {v15}, Lapp/solina/cfbridge/TokenStore;->token()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v13, v0, Lapp/solina/cfbridge/MainActivity;->tokenInput:Landroid/widget/EditText;

    invoke-direct {v0, v10, v13, v14}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 196
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v13, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v13, v10}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda12;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v6, 0x12

    invoke-direct {v0, v1, v5, v6}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 197
    const-string v5, "\u0627\u0648\u0644 \u067e\u0644 \u0631\u0627 \u0628\u0633\u0627\u0632\u061b \u0633\u067e\u0633 \u0627\u0637\u0644\u0627\u0639\u0627\u062a \u0648\u0631\u0648\u062f Muse \u0631\u0627 \u0648\u0627\u0631\u062f \u06a9\u0646. \u0627\u06af\u0631 \u0641\u0631\u0645 \u0642\u0627\u0628\u0644 \u062a\u0634\u062e\u06cc\u0635 \u0646\u0628\u0627\u0634\u062f\u060c \u0647\u0645\u0627\u0646 \u0633\u0627\u06cc\u062a \u0631\u0627 \u062f\u0633\u062a\u06cc \u0627\u062f\u0627\u0645\u0647 \u0645\u06cc\u200c\u062f\u0647\u06cc."

    invoke-direct {v0, v5, v12, v4, v3}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v0, Lapp/solina/cfbridge/MainActivity;->statusText:Landroid/widget/TextView;

    invoke-direct {v0, v1, v5, v6}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 198
    const-string v5, "\u0631\u0627\u0647\u0646\u0645\u0627\u06cc \u062a\u0648\u06a9\u0646 \u0648 \u062d\u0631\u06cc\u0645 \u062e\u0635\u0648\u0635\u06cc  \u2197"

    sget v6, Lapp/solina/cfbridge/MainActivity;->LIME:I

    const/16 v10, 0xd

    invoke-direct {v0, v5, v10, v6, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-direct {v0, v6}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v10

    invoke-direct {v0, v6}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v6

    invoke-virtual {v5, v3, v10, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v6, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v6, v0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda13;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 199
    invoke-direct/range {p0 .. p0}, Lapp/solina/cfbridge/MainActivity;->column()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-direct {v0, v7}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v6

    const/high16 v10, 0x41600000    # 14.0f

    invoke-direct {v0, v10}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v10

    invoke-direct {v0, v7}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v7

    const/high16 v13, 0x41600000    # 14.0f

    invoke-direct {v0, v13}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v13

    invoke-virtual {v5, v6, v10, v7, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v6, 0x1e

    const/16 v7, 0x1b

    const/16 v10, 0x1f

    invoke-static {v10, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-direct {v0, v6, v11, v3}, Lapp/solina/cfbridge/MainActivity;->rounded(IIZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v6, 0xd2

    const/16 v7, 0x9a

    const/16 v10, 0xf0

    .line 200
    invoke-static {v10, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    const-string v7, "\u0646\u0633\u062e\u0647\u0654 \u0622\u0632\u0645\u0627\u06cc\u0634\u06cc\u061b \u06a9\u0634\u0648\u0631 \u0648 \u0648\u0631\u0648\u062f \u062a\u0636\u0645\u06cc\u0646 \u0646\u0634\u062f\u0647"

    const/16 v10, 0xd

    invoke-direct {v0, v7, v10, v6, v2}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {v0, v5, v2, v3}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    const/16 v2, 0xb6

    const/16 v6, 0xa1

    const/16 v7, 0xc0

    .line 201
    invoke-static {v7, v2, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const-string v6, "CAPTCHA \u0648 \u06a9\u062f \u0631\u0627 \u062e\u0648\u062f\u062a \u062f\u0627\u062e\u0644 \u0633\u0627\u06cc\u062a \u06a9\u0627\u0645\u0644 \u0645\u06cc\u200c\u06a9\u0646\u06cc. \u0631\u0645\u0632 \u062c\u06cc\u0645\u06cc\u0644 \u0644\u0627\u0632\u0645 \u0646\u06cc\u0633\u062a. \u0627\u06cc\u0646 \u0628\u0631\u0646\u0627\u0645\u0647 \u0641\u0642\u0637 HTTPS \u0647\u0645\u06cc\u0646 \u0645\u0631\u0648\u0631\u06af\u0631 \u0631\u0627 \u062a\u0648\u0646\u0644 \u0645\u06cc\u200c\u06a9\u0646\u062f\u060c \u0646\u0647 \u06a9\u0644 \u06af\u0648\u0634\u06cc \u0631\u0627."

    invoke-direct {v0, v6, v12, v2, v3}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {v0, v5, v2, v9}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    const/16 v2, 0x11

    invoke-direct {v0, v1, v5, v2}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 202
    const-string v2, "\u0645\u0633\u062a\u0642\u0644 \u0627\u0632 Muse\u060c Meta \u0648 Cloudflare.\nv0.2-auto-test \u00b7 Android 8+ \u00b7 local provisioning"

    invoke-direct {v0, v2, v8, v4, v3}, Lapp/solina/cfbridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 203
    iget-object v1, v0, Lapp/solina/cfbridge/MainActivity;->root:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lapp/solina/cfbridge/MainActivity;->home:Landroid/widget/ScrollView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # Set native home to GONE
    const/16 v3, 0x8
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    # Set default values for endpoint and token
    iget-object v3, v0, Lapp/solina/cfbridge/MainActivity;->endpointInput:Landroid/widget/EditText;
    if-eqz v3, :cond_skip_def_ep
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-eqz v4, :cond_skip_def_ep
    const-string v4, "https://bridge.nguts.my.id"
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_skip_def_ep
    iget-object v3, v0, Lapp/solina/cfbridge/MainActivity;->tokenInput:Landroid/widget/EditText;
    if-eqz v3, :cond_skip_def_tok
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-eqz v4, :cond_skip_def_tok
    const-string v4, "bridge_sec_7c6ee6655b535a9851959c875f7b2195"
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_skip_def_tok
    # Inject Home Web Dashboard
    new-instance v5, Landroid/webkit/WebView;
    invoke-direct {v5, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    iput-object v5, v0, Lapp/solina/cfbridge/MainActivity;->homeWeb:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v6
    const/4 v7, 0x1
    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V
    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V
    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V
    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    sget v7, Lapp/solina/cfbridge/MainActivity;->BG:I
    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance v7, Lapp/solina/cfbridge/HomeWebClient;
    invoke-direct {v7, v0}, Lapp/solina/cfbridge/HomeWebClient;-><init>(Lapp/solina/cfbridge/MainActivity;)V
    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v6, "file:///android_asset/ui/index.html"
    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, -0x1
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v1, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private button(Ljava/lang/String;Z)Landroid/widget/Button;
    .locals 3

    .line 134
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    if-eqz p2, :cond_0

    .line 135
    sget p1, Lapp/solina/cfbridge/MainActivity;->BG:I

    goto :goto_0

    :cond_0
    sget p1, Lapp/solina/cfbridge/MainActivity;->INK:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    if-eqz p2, :cond_1

    .line 136
    sget p1, Lapp/solina/cfbridge/MainActivity;->LIME:I

    goto :goto_1

    :cond_1
    sget p1, Lapp/solina/cfbridge/MainActivity;->CARD:I

    :goto_1
    xor-int/2addr p2, v1

    const/16 v1, 0x10

    invoke-direct {p0, p1, v1, p2}, Lapp/solina/cfbridge/MainActivity;->rounded(IIZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x42580000    # 54.0f

    .line 137
    invoke-direct {p0, p1}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-direct {p0, p1}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result p2

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, p1}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result p1

    invoke-direct {p0, v1}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v1

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    return-object v0
.end method

.method private buttons(Z)V
    .locals 1

    .line 214
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->testButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->openButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->provisionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->cloudflareTokenInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->usPlacement:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method private cancelProvision(Lapp/solina/cfbridge/CloudflareApi;)V
    .locals 1

    .line 246
    invoke-virtual {p1}, Lapp/solina/cfbridge/CloudflareApi;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lapp/solina/cfbridge/MainActivity;->provisioningApi:Lapp/solina/cfbridge/CloudflareApi;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lapp/solina/cfbridge/MainActivity;->provisioning:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lapp/solina/cfbridge/MainActivity;->buttons(Z)V

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->provisionStatus:Landroid/widget/TextView;

    const-string v0, "\u0633\u0627\u062e\u062a \u0644\u063a\u0648 \u0634\u062f. \u062a\u0648\u06a9\u0646 API \u0631\u0648\u06cc \u06af\u0648\u0634\u06cc \u0630\u062e\u06cc\u0631\u0647 \u0646\u0634\u062f\u0647 \u0627\u0633\u062a."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private check(Z)V
    .locals 7

    .line 308
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->provisioning:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->opening:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 309
    :cond_0
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->config()Lapp/solina/cfbridge/MainActivity$Config;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 312
    iget-object v3, p0, Lapp/solina/cfbridge/MainActivity;->emailInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 313
    iget-object v4, p0, Lapp/solina/cfbridge/MainActivity;->musePasswordInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xfe

    if-gt v5, v6, :cond_3

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 315
    :cond_3
    const-string p1, "\u0628\u0631\u0627\u06cc \u067e\u0631\u06a9\u0631\u062f\u0646 \u062e\u0648\u062f\u06a9\u0627\u0631\u060c \u0627\u06cc\u0645\u06cc\u0644 \u062d\u0633\u0627\u0628 Muse \u0631\u0627 \u0648\u0627\u0631\u062f \u06a9\u0646\u061b \u0631\u0645\u0632 \u0627\u06cc\u0645\u06cc\u0644 \u0646\u0628\u0627\u06cc\u062f \u0648\u0627\u0631\u062f \u0634\u0648\u062f."

    invoke-direct {p0, p1, v1}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V

    return-void

    .line 317
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lapp/solina/cfbridge/MainActivity;->loginScript:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v2, Lapp/solina/cfbridge/LoginAssistant;

    iget-object v5, p0, Lapp/solina/cfbridge/MainActivity;->loginScript:Ljava/lang/String;

    iget-object v6, p0, Lapp/solina/cfbridge/MainActivity;->automaticLogin:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-direct {v2, v5, v3, v4, v6}, Lapp/solina/cfbridge/LoginAssistant;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 318
    :cond_5
    iget-object v3, p0, Lapp/solina/cfbridge/MainActivity;->musePasswordInput:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :cond_6
    iput-boolean v1, p0, Lapp/solina/cfbridge/MainActivity;->opening:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lapp/solina/cfbridge/MainActivity;->buttons(Z)V

    .line 321
    iget-object v3, p0, Lapp/solina/cfbridge/MainActivity;->badge:Landroid/widget/TextView;

    const-string v4, "\u062f\u0631 \u062d\u0627\u0644 \u0628\u0631\u0631\u0633\u06cc"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\u062f\u0631 \u062d\u0627\u0644 \u0628\u0631\u0631\u0633\u06cc \u06a9\u0644\u06cc\u062f \u0648 \u0627\u0631\u062a\u0628\u0627\u0637 \u0628\u0627 Worker\u2026"

    invoke-direct {p0, v3, v1}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V

    .line 322
    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p1, v2}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda0;-><init>(Lapp/solina/cfbridge/MainActivity;Lapp/solina/cfbridge/MainActivity$Config;ZLapp/solina/cfbridge/LoginAssistant;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private clearSession()V
    .locals 2

    .line 540
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    new-instance v1, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 541
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 542
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 543
    :cond_0
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->leaveBrowser()V

    const-string v0, "\u0646\u0634\u0633\u062a \u0645\u062d\u0644\u06cc \u067e\u0627\u06a9 \u0634\u062f\u061b \u062d\u0633\u0627\u0628 \u0631\u0648\u06cc \u0633\u0627\u06cc\u062a \u062d\u0630\u0641 \u0646\u0634\u062f\u0647 \u0627\u0633\u062a."

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V

    return-void
.end method

.method private column()Landroid/widget/LinearLayout;
    .locals 2

    .line 117
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method private config()Lapp/solina/cfbridge/MainActivity$Config;
    .locals 6

    .line 280
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->endpointInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 282
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->password()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 283
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->fragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 286
    :cond_1
    iget-object v3, p0, Lapp/solina/cfbridge/MainActivity;->tokenInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x18

    if-lt v4, v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x100

    if-gt v4, v5, :cond_3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 290
    :cond_2
    new-instance v1, Lapp/solina/cfbridge/MainActivity$Config;

    invoke-direct {v1, v0, v3}, Lapp/solina/cfbridge/MainActivity$Config;-><init>(Lokhttp3/HttpUrl;Ljava/lang/String;)V

    return-object v1

    .line 288
    :cond_3
    :goto_0
    const-string v0, "\u06a9\u0644\u06cc\u062f \u067e\u0644 \u0628\u0627\u06cc\u062f \u06f2\u06f4 \u062a\u0627 \u06f2\u06f5\u06f6 \u0646\u0648\u06cc\u0633\u0647 \u0628\u0627\u0634\u062f. \u0627\u06cc\u0646 \u06a9\u0644\u06cc\u062f\u060c \u0631\u0645\u0632 \u062c\u06cc\u0645\u06cc\u0644 \u06cc\u0627 Muse \u0646\u06cc\u0633\u062a."

    invoke-direct {p0, v0, v2}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V

    return-object v1

    .line 284
    :cond_4
    :goto_1
    const-string v0, "\u0622\u062f\u0631\u0633 \u0628\u0627\u06cc\u062f \u0641\u0642\u0637 \u0645\u0628\u062f\u0623 HTTPS \u062e\u0648\u062f Worker \u0628\u0627\u0634\u062f\u061b \u0628\u062f\u0648\u0646 \u0645\u0633\u06cc\u0631\u060c \u067e\u0627\u0631\u0627\u0645\u062a\u0631 \u06cc\u0627 \u0646\u0627\u0645 \u06a9\u0627\u0631\u0628\u0631\u06cc."

    invoke-direct {p0, v0, v2}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V

    return-object v1
.end method

.method private destroyBrowserView()V
    .locals 3

    .line 546
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->stopAssistant()V

    .line 547
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    iput-object v1, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 550
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 551
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    return-void
.end method

.method private dp(F)I
    .locals 1

    .line 116
    invoke-virtual {p0}, Lapp/solina/cfbridge/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private field(Ljava/lang/String;Z)Landroid/widget/EditText;
    .locals 5

    .line 141
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 142
    sget v1, Lapp/solina/cfbridge/MainActivity;->INK:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    sget v1, Lapp/solina/cfbridge/MainActivity;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 p1, 0x1

    .line 143
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-direct {p0, v1}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, v1}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v1}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v1}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 144
    sget v1, Lapp/solina/cfbridge/MainActivity;->BG:I

    const/16 v2, 0xd

    invoke-direct {p0, v1, v2, p1}, Lapp/solina/cfbridge/MainActivity;->rounded(IIZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLayoutDirection(I)V

    const/4 v1, 0x3

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextDirection(I)V

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    if-eqz p2, :cond_0

    const/16 p2, 0x81

    goto :goto_0

    :cond_0
    const p2, 0x80011

    .line 146
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setInputType(I)V

    const/4 p2, 0x2

    .line 148
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    .line 149
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 150
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    return-object v0
.end method

.method private get(Lapp/solina/cfbridge/MainActivity$Config;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Worker \u067e\u0627\u0633\u062e HTTP "

    .line 293
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p1, Lapp/solina/cfbridge/MainActivity$Config;->endpoint:Lokhttp3/HttpUrl;

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lokhttp3/HttpUrl$Builder;->encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {v1, p2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lapp/solina/cfbridge/MainActivity$Config;->token:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 294
    const-string v1, "Authorization"

    invoke-virtual {p2, v1, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 295
    iget-object p2, p0, Lapp/solina/cfbridge/MainActivity;->network:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 296
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-nez p2, :cond_2

    .line 297
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p2

    const/16 v1, 0x191

    if-eq p2, v1, :cond_1

    .line 298
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p2

    const/16 v1, 0x1f7

    if-ne p2, v1, :cond_0

    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Worker \u0647\u0646\u0648\u0632 BRIDGE_TOKEN \u0645\u0639\u062a\u0628\u0631 \u0646\u062f\u0627\u0631\u062f."

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 299
    :cond_0
    new-instance p2, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u062f\u0627\u062f\u061b \u0622\u062f\u0631\u0633 \u0648 \u0627\u0633\u062a\u0642\u0631\u0627\u0631 \u0631\u0627 \u0628\u0631\u0631\u0633\u06cc \u06a9\u0646."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 297
    :cond_1
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "\u06a9\u0644\u06cc\u062f \u067e\u0644 \u062f\u0631\u0633\u062a \u0646\u06cc\u0633\u062a\u061b \u0645\u0642\u062f\u0627\u0631 BRIDGE_TOKEN \u0631\u0627 \u0628\u0631\u0631\u0633\u06cc \u06a9\u0646."

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 301
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 302
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 303
    const-string v0, "ok"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "protocol"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_3

    .line 305
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    :cond_3
    return-object p2

    .line 303
    :cond_4
    :try_start_1
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "\u0627\u06cc\u0646 \u0622\u062f\u0631\u0633\u060c Worker \u0633\u0627\u0632\u06af\u0627\u0631 \u0628\u0627 \u0646\u0633\u062e\u0647\u0654 \u067e\u0644 \u0646\u06cc\u0633\u062a."

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 301
    :cond_5
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Worker \u067e\u0627\u0633\u062e \u0642\u0627\u0628\u0644\u200c\u062e\u0648\u0627\u0646\u062f\u0646 \u0646\u062f\u0627\u062f."

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_6

    .line 295
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw p2
.end method

.method private help()V
    .locals 3

    .line 566
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0641\u0642\u0637 \u062a\u0648\u06a9\u0646 \u062e\u0648\u062f\u062a\u061b \u0641\u0642\u0637 \u06a9\u0644\u0648\u062f\u0641\u0644\u0631"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u06f1. \u062a\u0648\u06a9\u0646\u0650 \u0641\u0631\u0633\u062a\u0627\u062f\u0647\u200c\u0634\u062f\u0647 \u062f\u0631 \u0686\u062a \u0631\u0627 \u0627\u0641\u0634\u0627\u0634\u062f\u0647 \u062d\u0633\u0627\u0628 \u06a9\u0646 \u0648 \u0644\u063a\u0648 \u06a9\u0646. \u06cc\u06a9 API Token \u062a\u0627\u0632\u0647 \u0628\u0627 Account Settings: Read \u0648 Workers Scripts: Edit\u060c \u0645\u062d\u062f\u0648\u062f \u0628\u0647 \u062d\u0633\u0627\u0628 \u0645\u0648\u0631\u062f\u0646\u0638\u0631 \u0628\u0633\u0627\u0632. Global API Key \u0644\u0627\u0632\u0645 \u0646\u06cc\u0633\u062a.\n\n\u06f2. \u062a\u0648\u06a9\u0646 \u0631\u0627 \u0641\u0642\u0637 \u062f\u0627\u062e\u0644 \u0627\u06cc\u0646 \u0627\u067e \u0648\u0627\u0631\u062f \u0648 \u00ab\u0633\u0627\u062e\u062a \u062e\u0648\u062f\u06a9\u0627\u0631 \u0631\u0648\u06cc \u062d\u0633\u0627\u0628 \u0645\u0646\u00bb \u0631\u0627 \u0628\u0632\u0646. \u062f\u0631 \u0635\u0648\u0631\u062a \u0686\u0646\u062f \u062d\u0633\u0627\u0628\u060c \u062d\u0633\u0627\u0628 \u0631\u0627 \u0627\u0646\u062a\u062e\u0627\u0628 \u0645\u06cc\u200c\u06a9\u0646\u06cc. Worker \u0648 \u06a9\u0644\u06cc\u062f \u067e\u0644 \u062e\u0648\u062f\u06a9\u0627\u0631 \u0633\u0627\u062e\u062a\u0647 \u0645\u06cc\u200c\u0634\u0648\u0646\u062f. API Token \u0630\u062e\u06cc\u0631\u0647 \u0646\u0645\u06cc\u200c\u0634\u0648\u062f\u061b \u0628\u0639\u062f \u0627\u0632 \u0633\u0627\u062e\u062a \u0645\u06cc\u200c\u062a\u0648\u0627\u0646\u06cc \u0622\u0646 \u0631\u0627 \u062f\u0631 \u06a9\u0644\u0648\u062f\u0641\u0644\u0631 \u0644\u063a\u0648 \u06a9\u0646\u06cc \u0648 \u067e\u0644 \u0647\u0645\u0686\u0646\u0627\u0646 \u0627\u0632 \u06a9\u0644\u06cc\u062f \u0645\u0633\u062a\u0642\u0644\u0634 \u0627\u0633\u062a\u0641\u0627\u062f\u0647 \u0645\u06cc\u200c\u06a9\u0646\u062f.\n\n\u06f3. \u0627\u06cc\u0645\u06cc\u0644 \u0648 \u062f\u0631 \u0635\u0648\u0631\u062a \u0646\u06cc\u0627\u0632 \u0631\u0645\u0632 \u0645\u062e\u0635\u0648\u0635 Muse \u0631\u0627 \u0648\u0627\u0631\u062f \u06a9\u0646. \u0627\u06cc\u0646\u200c\u0647\u0627 \u062f\u0631 \u0627\u067e \u0630\u062e\u06cc\u0631\u0647 \u0646\u0645\u06cc\u200c\u0634\u0648\u0646\u062f. \u06cc\u0627\u0631 \u0648\u0631\u0648\u062f \u0641\u0642\u0637 \u0641\u0631\u0645\u200c\u0647\u0627\u06cc \u0642\u0627\u0628\u0644 \u062a\u0634\u062e\u06cc\u0635\u0650 \u0633\u0627\u06cc\u062a \u0627\u0635\u0644\u06cc \u0631\u0627 \u067e\u0631 \u0645\u06cc\u200c\u06a9\u0646\u062f \u0648 \u062d\u062f\u0627\u06a9\u062b\u0631 \u062f\u0648 \u0628\u0627\u0631 \u0627\u062f\u0627\u0645\u0647 \u0645\u06cc\u200c\u0632\u0646\u062f. \u0645\u0648\u0641\u0642\u06cc\u062a \u0648\u0631\u0648\u062f \u062a\u0636\u0645\u06cc\u0646 \u0646\u0634\u062f\u0647 \u0627\u0633\u062a.\n\n\u06f4. \u06a9\u062f \u0627\u06cc\u0645\u06cc\u0644 \u0648 CAPTCHA \u0631\u0627 \u062e\u0648\u062f\u062a \u062f\u0631 \u0633\u0627\u06cc\u062a \u0627\u0646\u062c\u0627\u0645 \u0645\u06cc\u200c\u062f\u0647\u06cc. \u062f\u0633\u062a\u0631\u0633\u06cc \u0628\u0647 Gmail \u062f\u0631\u062e\u0648\u0627\u0633\u062a \u0646\u0645\u06cc\u200c\u0634\u0648\u062f \u0648 \u0648\u0631\u0648\u062f Google \u062f\u0631 WebView \u067e\u0634\u062a\u06cc\u0628\u0627\u0646\u06cc \u0646\u0634\u062f\u0647 \u0627\u0633\u062a.\n\n\u06f5. Worker \u0627\u0632 \u0642\u0628\u0644 \u0633\u0627\u062e\u062a\u0647\u200c\u0634\u062f\u0647 \u0627\u0632 \u062a\u0646\u0638\u06cc\u0645\u0627\u062a \u062f\u0633\u062a\u06cc \u0642\u0627\u0628\u0644 \u0627\u0633\u062a\u0641\u0627\u062f\u0647 \u0627\u0633\u062a. \u06a9\u0634\u0648\u0631 \u062e\u0631\u0648\u062c\u06cc \u062a\u0623\u06cc\u06cc\u062f \u0646\u0634\u062f\u0647 \u0648 \u067e\u0644 VPN \u06a9\u0644 \u06af\u0648\u0634\u06cc \u0646\u06cc\u0633\u062a."

    .line 567
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0645\u062a\u0648\u062c\u0647 \u0634\u062f\u0645"

    const/4 v2, 0x0

    .line 568
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda16;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    const-string v2, "\u062d\u0630\u0641 \u062a\u0646\u0638\u06cc\u0645\u0627\u062a \u0645\u062d\u0644\u06cc"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private humanChallenge(Ljava/lang/String;)V
    .locals 3

    .line 504
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->stopAssistant()V

    .line 505
    const-string v0, "wait_code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u06a9\u062f \u0631\u0627 \u0627\u0632 \u0627\u06cc\u0645\u06cc\u0644 \u062e\u0648\u062f\u062a \u0628\u06af\u06cc\u0631 \u0648 \u062f\u0631 \u0647\u0645\u06cc\u0646 \u0635\u0641\u062d\u0647\u0654 \u0627\u0635\u0644\u06cc Muse \u0648\u0627\u0631\u062f \u06a9\u0646. \u0627\u067e \u062f\u0633\u062a\u0631\u0633\u06cc \u0628\u0647 \u0635\u0646\u062f\u0648\u0642 \u0627\u06cc\u0645\u06cc\u0644 \u06cc\u0627 \u0631\u0645\u0632 \u062c\u06cc\u0645\u06cc\u0644 \u0646\u0645\u06cc\u200c\u062e\u0648\u0627\u0647\u062f. \u0627\u06af\u0631 \u0644\u06cc\u0646\u06a9 \u0627\u0633\u062a\u060c \u00ab\u0644\u06cc\u0646\u06a9 \u062a\u0623\u06cc\u06cc\u062f\u00bb \u0631\u0627 \u0628\u0632\u0646."

    goto :goto_0

    .line 506
    :cond_0
    const-string v1, "CAPTCHA \u0631\u0627 \u062e\u0648\u062f\u062a \u062f\u0631 \u0647\u0645\u06cc\u0646 \u0635\u0641\u062d\u0647 \u062d\u0644 \u06a9\u0646. \u0627\u067e \u0627\u0632 \u062d\u0644\u200c\u06a9\u0646\u0646\u062f\u0647\u0654 \u062e\u0648\u062f\u06a9\u0627\u0631\u060c \u0627\u0631\u0633\u0627\u0644 \u062a\u0635\u0648\u06cc\u0631 \u0628\u0647 \u0634\u062e\u0635 \u062b\u0627\u0644\u062b \u06cc\u0627 \u062f\u0648\u0631\u0632\u062f\u0646 \u0686\u0627\u0644\u0634 \u0627\u0633\u062a\u0641\u0627\u062f\u0647 \u0646\u0645\u06cc\u200c\u06a9\u0646\u062f. \u0627\u06af\u0631 \u0648\u06cc\u062c\u062a \u0627\u0632 \u0645\u0633\u06cc\u0631 Worker \u0628\u0627\u0631\u06af\u0630\u0627\u0631\u06cc \u0646\u0634\u0648\u062f\u060c \u0627\u06cc\u0646 \u0645\u0633\u06cc\u0631 \u0628\u0631\u0627\u06cc \u0622\u0646 \u0686\u0627\u0644\u0634 \u06a9\u0627\u0641\u06cc \u0646\u06cc\u0633\u062a."

    .line 507
    :goto_0
    iget-object v2, p0, Lapp/solina/cfbridge/MainActivity;->assistStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u0646\u06cc\u0627\u0632 \u0628\u0647 \u06a9\u062f \u062a\u0623\u06cc\u06cc\u062f \u062e\u0648\u062f\u062a"

    goto :goto_1

    :cond_1
    const-string p1, "\u0646\u06cc\u0627\u0632 \u0628\u0647 \u0627\u0646\u062c\u0627\u0645 CAPTCHA \u062a\u0648\u0633\u0637 \u062e\u0648\u062f\u062a"

    :goto_1
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :cond_2
    iget-boolean p1, p0, Lapp/solina/cfbridge/MainActivity;->humanPromptShown:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lapp/solina/cfbridge/MainActivity;->humanPromptShown:Z

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u0646\u0648\u0628\u062a \u062a\u0623\u06cc\u06cc\u062f \u062a\u0648\u0633\u062a"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u062e\u0648\u062f\u0645 \u0627\u0646\u062c\u0627\u0645 \u0645\u06cc\u200c\u062f\u0647\u0645"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_3
    return-void
.end method

.method static isMuseUrl(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$buildHome$4(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    .line 196
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$clearSession$34(Ljava/lang/Boolean;)V
    .locals 0

    .line 540
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method static synthetic lambda$leaveBrowser$35()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 107
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 108
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method static synthetic lambda$onDestroy$37()V
    .locals 0

    return-void
.end method

.method private leaveBrowser()V
    .locals 3

    .line 555
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->destroyBrowserView()V

    .line 556
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->browserScreen:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lapp/solina/cfbridge/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lapp/solina/cfbridge/MainActivity;->browserScreen:Landroid/widget/LinearLayout;

    .line 557
    :cond_0
    iput-object v1, p0, Lapp/solina/cfbridge/MainActivity;->browserError:Landroid/widget/TextView;

    iput-object v1, p0, Lapp/solina/cfbridge/MainActivity;->connections:Landroid/widget/TextView;

    iput-object v1, p0, Lapp/solina/cfbridge/MainActivity;->assistStatus:Landroid/widget/TextView;

    .line 558
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->bridge:Lapp/solina/cfbridge/LocalBridgeProxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lapp/solina/cfbridge/LocalBridgeProxy;->close()V

    iput-object v1, p0, Lapp/solina/cfbridge/MainActivity;->bridge:Lapp/solina/cfbridge/LocalBridgeProxy;

    .line 559
    :cond_1
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->proxyApplied:Z

    if-eqz v0, :cond_2

    const-string v0, "PROXY_OVERRIDE"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    invoke-static {}, Landroidx/webkit/ProxyController;->getInstance()Landroidx/webkit/ProxyController;

    move-result-object v0

    new-instance v1, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda11;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    new-instance v2, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda32;

    invoke-direct {v2}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda32;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroidx/webkit/ProxyController;->clearProxyOverride(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->proxyApplied:Z

    .line 563
    const/16 v2, 0x8
    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->home:Landroid/widget/ScrollView;
    if-eqz v1, :cond_skip_old_home_l
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_skip_old_home_l
    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->homeWeb:Landroid/webkit/WebView;
    if-eqz v1, :cond_skip_hw_l
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V
    :cond_skip_hw_l

    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->badge:Landroid/widget/TextView;

    const-string v2, "\u0642\u0637\u0639 \u0634\u062f\u0647"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u067e\u0644 \u0642\u0637\u0639 \u0634\u062f. \u0647\u06cc\u0686 \u0645\u0631\u0648\u0631\u06af\u0631 \u0641\u0639\u0627\u0644\u06cc \u0628\u0627 \u0627\u062a\u0635\u0627\u0644 \u0645\u0633\u062a\u0642\u06cc\u0645 \u0628\u0627\u0642\u06cc \u0646\u0645\u0627\u0646\u062f\u0647 \u0627\u0633\u062a."

    invoke-direct {p0, v1, v0}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V

    return-void
.end method

.method private openBrowser(Lapp/solina/cfbridge/MainActivity$Config;)V
    .locals 9

    const-string v0, "http://127.0.0.1:"

    .line 347
    iget-boolean v1, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-eqz v1, :cond_0

    return-void

    .line 348
    :cond_0
    const-string v1, "PROXY_OVERRIDE"

    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 349
    iput-boolean v3, p0, Lapp/solina/cfbridge/MainActivity;->opening:Z

    invoke-direct {p0, v4}, Lapp/solina/cfbridge/MainActivity;->buttons(Z)V

    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->stopAssistant()V

    .line 350
    const-string p1, "Android System WebView \u06cc\u0627 Chrome \u0631\u0627 \u0628\u0647\u200c\u0631\u0648\u0632 \u06a9\u0646\u061b \u0627\u06cc\u0646 \u06af\u0648\u0634\u06cc Proxy Override \u0631\u0627 \u067e\u0634\u062a\u06cc\u0628\u0627\u0646\u06cc \u0646\u0645\u06cc\u200c\u06a9\u0646\u062f. \u0627\u062a\u0635\u0627\u0644 \u0645\u0633\u062a\u0642\u06cc\u0645 \u062c\u0627\u06cc\u06af\u0632\u06cc\u0646 \u0646\u0645\u06cc\u200c\u0634\u0648\u062f."

    invoke-direct {p0, p1, v4}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 353
    :try_start_0
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lapp/solina/cfbridge/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 354
    iget-object v6, p0, Lapp/solina/cfbridge/MainActivity;->tokenInput:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 355
    new-instance v5, Lapp/solina/cfbridge/LocalBridgeProxy;

    iget-object v6, p1, Lapp/solina/cfbridge/MainActivity$Config;->endpoint:Lokhttp3/HttpUrl;

    iget-object p1, p1, Lapp/solina/cfbridge/MainActivity$Config;->token:Ljava/lang/String;

    iget-object v7, p0, Lapp/solina/cfbridge/MainActivity;->tunnelNetwork:Lokhttp3/OkHttpClient;

    new-instance v8, Lapp/solina/cfbridge/MainActivity$1;

    invoke-direct {v8, p0}, Lapp/solina/cfbridge/MainActivity$1;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-direct {v5, v6, p1, v7, v8}, Lapp/solina/cfbridge/LocalBridgeProxy;-><init>(Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/OkHttpClient;Lapp/solina/cfbridge/LocalBridgeProxy$Events;)V

    iput-object v5, p0, Lapp/solina/cfbridge/MainActivity;->bridge:Lapp/solina/cfbridge/LocalBridgeProxy;

    .line 368
    invoke-virtual {v5}, Lapp/solina/cfbridge/LocalBridgeProxy;->start()I

    move-result p1

    .line 369
    new-instance v5, Landroidx/webkit/ProxyConfig$Builder;

    invoke-direct {v5}, Landroidx/webkit/ProxyConfig$Builder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroidx/webkit/ProxyConfig$Builder;->addProxyRule(Ljava/lang/String;)Landroidx/webkit/ProxyConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/webkit/ProxyConfig$Builder;->removeImplicitRules()Landroidx/webkit/ProxyConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/webkit/ProxyConfig$Builder;->build()Landroidx/webkit/ProxyConfig;

    move-result-object p1

    .line 370
    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    invoke-static {}, Landroidx/webkit/ProxyController;->getInstance()Landroidx/webkit/ProxyController;

    move-result-object v0

    new-instance v1, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda11;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    new-instance v5, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v5, p0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda22;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {v0, p1, v1, v5}, Landroidx/webkit/ProxyController;->setProxyOverride(Landroidx/webkit/ProxyConfig;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 376
    :cond_2
    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->bridge:Lapp/solina/cfbridge/LocalBridgeProxy;

    invoke-virtual {p1}, Lapp/solina/cfbridge/LocalBridgeProxy;->close()V

    iput-object v2, p0, Lapp/solina/cfbridge/MainActivity;->bridge:Lapp/solina/cfbridge/LocalBridgeProxy;

    .line 377
    iput-boolean v3, p0, Lapp/solina/cfbridge/MainActivity;->opening:Z

    invoke-direct {p0, v4}, Lapp/solina/cfbridge/MainActivity;->buttons(Z)V

    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->stopAssistant()V

    .line 378
    const-string p1, "Proxy Override \u062f\u0631 \u062f\u0633\u062a\u0631\u0633 \u0646\u06cc\u0633\u062a\u061b \u0627\u062a\u0635\u0627\u0644 \u0645\u0633\u062a\u0642\u06cc\u0645\u06cc \u062c\u0627\u06cc\u06af\u0632\u06cc\u0646 \u0646\u0634\u062f."

    invoke-direct {p0, p1, v4}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->bridge:Lapp/solina/cfbridge/LocalBridgeProxy;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lapp/solina/cfbridge/LocalBridgeProxy;->close()V

    iput-object v2, p0, Lapp/solina/cfbridge/MainActivity;->bridge:Lapp/solina/cfbridge/LocalBridgeProxy;

    .line 382
    :cond_3
    iput-boolean v3, p0, Lapp/solina/cfbridge/MainActivity;->opening:Z

    invoke-direct {p0, v4}, Lapp/solina/cfbridge/MainActivity;->buttons(Z)V

    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->stopAssistant()V

    .line 383
    const-string p1, "\u0631\u0627\u0647\u200c\u0627\u0646\u062f\u0627\u0632\u06cc \u067e\u0631\u0627\u06a9\u0633\u06cc \u0645\u062d\u0644\u06cc \u0645\u0645\u06a9\u0646 \u0646\u0634\u062f. \u0647\u06cc\u0686 \u0627\u062a\u0635\u0627\u0644 \u0645\u0633\u062a\u0642\u06cc\u0645\u06cc \u0628\u0647 \u0633\u0627\u06cc\u062a \u0627\u0646\u062c\u0627\u0645 \u0646\u0634\u062f."

    invoke-direct {p0, p1, v4}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private pasteVerification()V
    .locals 6

    .line 528
    const-string v0, "https://muse.ai/..."

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lapp/solina/cfbridge/MainActivity;->field(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v0

    .line 529
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->column()Landroid/widget/LinearLayout;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {p0, v3}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-direct {p0, v5}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v5

    invoke-direct {p0, v3}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v3

    invoke-virtual {v2, v4, v5, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 530
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u0644\u06cc\u0646\u06a9 \u0631\u0633\u0645\u06cc \u062a\u0623\u06cc\u06cc\u062f Muse"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "\u0627\u06af\u0631 \u062a\u0623\u06cc\u06cc\u062f \u0627\u0632 \u0637\u0631\u06cc\u0642 \u0644\u06cc\u0646\u06a9 \u0627\u06cc\u0645\u06cc\u0644 \u0627\u0633\u062a\u060c \u0644\u06cc\u0646\u06a9 HTTPS \u062e\u0648\u062f Muse \u0631\u0627 \u0627\u06cc\u0646\u062c\u0627 \u0628\u0627\u0632 \u06a9\u0646. \u0644\u06cc\u0646\u06a9 \u0628\u0647 \u0633\u0631\u0648\u0631 \u0633\u0627\u0632\u0646\u062f\u0647 \u0627\u0631\u0633\u0627\u0644 \u0646\u0645\u06cc\u200c\u0634\u0648\u062f\u061b \u0645\u0631\u0648\u0631\u06af\u0631 \u0622\u0646 \u0631\u0627 \u0627\u0632 \u062a\u0648\u0646\u0644 \u0628\u0627\u0632 \u0645\u06cc\u200c\u06a9\u0646\u062f."

    .line 531
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 532
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u0627\u0646\u0635\u0631\u0627\u0641"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, v0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda36;-><init>(Lapp/solina/cfbridge/MainActivity;Landroid/widget/EditText;)V

    .line 533
    const-string v0, "\u0628\u0627\u0632 \u06a9\u0631\u062f\u0646"

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private provisionAccount(Lapp/solina/cfbridge/CloudflareApi;Lapp/solina/cfbridge/CloudflareApi$Account;Z)V
    .locals 8

    const/4 v0, 0x0

    .line 250
    :try_start_0
    const-string v1, "cloudflare-worker.js"

    invoke-direct {p0, v1}, Lapp/solina/cfbridge/MainActivity;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v6, p0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda25;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    new-instance v7, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v7, p0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda26;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lapp/solina/cfbridge/CloudflareApi;->provision(Lapp/solina/cfbridge/CloudflareApi$Account;Ljava/lang/String;ZLapp/solina/cfbridge/CloudflareApi$Progress;Lapp/solina/cfbridge/CloudflareApi$Checkpoint;)Lapp/solina/cfbridge/CloudflareApi$Deployment;

    move-result-object p2

    .line 255
    invoke-virtual {p1}, Lapp/solina/cfbridge/CloudflareApi;->close()V

    iput-object v0, p0, Lapp/solina/cfbridge/MainActivity;->provisioningApi:Lapp/solina/cfbridge/CloudflareApi;

    .line 256
    new-instance p3, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda27;

    invoke-direct {p3, p0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda27;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {p0, p3}, Lapp/solina/cfbridge/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 258
    new-instance p3, Lapp/solina/cfbridge/MainActivity$Config;

    iget-object v1, p2, Lapp/solina/cfbridge/CloudflareApi$Deployment;->endpoint:Lokhttp3/HttpUrl;

    iget-object v2, p2, Lapp/solina/cfbridge/CloudflareApi$Deployment;->bridgeKey:Ljava/lang/String;

    invoke-direct {p3, v1, v2}, Lapp/solina/cfbridge/MainActivity$Config;-><init>(Lokhttp3/HttpUrl;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 259
    iget-boolean v3, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_1

    .line 260
    :try_start_1
    const-string v3, "/health"

    invoke-direct {p0, p3, v3}, Lapp/solina/cfbridge/MainActivity;->get(Lapp/solina/cfbridge/MainActivity$Config;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    int-to-long v3, v3

    const-wide/16 v5, 0x4b0

    mul-long/2addr v3, v5

    .line 261
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    :cond_1
    :goto_1
    new-instance p3, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {p3, p0, v1, p2}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda28;-><init>(Lapp/solina/cfbridge/MainActivity;ZLapp/solina/cfbridge/CloudflareApi$Deployment;)V

    invoke-virtual {p0, p3}, Lapp/solina/cfbridge/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 271
    invoke-virtual {p1}, Lapp/solina/cfbridge/CloudflareApi;->close()V

    iput-object v0, p0, Lapp/solina/cfbridge/MainActivity;->provisioningApi:Lapp/solina/cfbridge/CloudflareApi;

    invoke-direct {p0, p2}, Lapp/solina/cfbridge/MainActivity;->provisionFailure(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method private provisionFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 274
    instance-of v0, p1, Lapp/solina/cfbridge/CloudflareApi$ApiException;

    if-eqz v0, :cond_0

    check-cast p1, Lapp/solina/cfbridge/CloudflareApi$ApiException;

    invoke-virtual {p1}, Lapp/solina/cfbridge/CloudflareApi$ApiException;->safePersianMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 275
    :cond_0
    const-string p1, "\u0633\u0627\u062e\u062a \u06cc\u0627 \u0627\u0646\u062a\u0634\u0627\u0631 \u067e\u0644 \u062a\u0623\u06cc\u06cc\u062f \u0646\u0634\u062f. \u0627\u06cc\u0646\u062a\u0631\u0646\u062a \u0648 \u062f\u0633\u062a\u0631\u0633\u06cc \u062a\u0648\u06a9\u0646 \u0631\u0627 \u0628\u0631\u0631\u0633\u06cc \u06a9\u0646. \u0627\u06af\u0631 \u0627\u0631\u062a\u0628\u0627\u0637 \u0628\u0639\u062f \u0627\u0632 \u0628\u0627\u0631\u06af\u0630\u0627\u0631\u06cc \u0642\u0637\u0639 \u0634\u062f\u0647\u060c \u0645\u0645\u06a9\u0646 \u0627\u0633\u062a Worker \u0633\u0627\u062e\u062a\u0647 \u0634\u062f\u0647 \u0628\u0627\u0634\u062f\u061b \u0642\u0628\u0644 \u0627\u0632 \u062a\u06a9\u0631\u0627\u0631\u060c \u062f\u0627\u0634\u0628\u0648\u0631\u062f \u0631\u0627 \u0628\u0631\u0631\u0633\u06cc \u06a9\u0646."

    .line 276
    :goto_0
    new-instance v0, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda5;-><init>(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lapp/solina/cfbridge/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private readAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lapp/solina/cfbridge/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0x2000

    .line 208
    :try_start_1
    new-array v1, v1, [B

    .line 209
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v2

    const/high16 v4, 0x40000

    if-gt v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Asset too large"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_1
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    .line 207
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_3

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
.end method

.method private requestAssistant()V
    .locals 5

    .line 511
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/solina/cfbridge/MainActivity;->isMuseUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->column()Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {p0, v1}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {p0, v3}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v1}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 513
    const-string v1, "Muse email"

    invoke-direct {p0, v1, v4}, Lapp/solina/cfbridge/MainActivity;->field(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "Muse password only \u2014 optional"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lapp/solina/cfbridge/MainActivity;->field(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v2

    .line 514
    iget-object v3, p0, Lapp/solina/cfbridge/MainActivity;->emailInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0, v1, v4}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    const/16 v3, 0xc

    invoke-direct {p0, v0, v2, v3}, Lapp/solina/cfbridge/MainActivity;->add(Landroid/widget/LinearLayout;Landroid/view/View;I)V

    .line 515
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "\u06cc\u0627\u0631 \u0648\u0631\u0648\u062f\u061b \u0641\u0642\u0637 \u0631\u0645\u0632 \u0645\u062e\u0635\u0648\u0635 Muse"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "\u0627\u0637\u0644\u0627\u0639\u0627\u062a \u0641\u0642\u0637 \u0628\u0631\u0627\u06cc \u062a\u06a9\u0645\u06cc\u0644 \u0641\u0631\u0645 \u0631\u0633\u0645\u06cc \u0647\u0645\u06cc\u0646 \u0635\u0641\u062d\u0647 \u0627\u0633\u062a\u0641\u0627\u062f\u0647 \u0645\u06cc\u200c\u0634\u0648\u062f \u0648 \u062f\u0631 \u0627\u067e \u0630\u062e\u06cc\u0631\u0647 \u0646\u0645\u06cc\u200c\u0634\u0648\u062f. \u0631\u0645\u0632 Gmail \u0631\u0627 \u0648\u0627\u0631\u062f \u0646\u06a9\u0646."

    .line 516
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 517
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "\u0627\u0646\u0635\u0631\u0627\u0641"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, v2}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda3;-><init>(Lapp/solina/cfbridge/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const-string v1, "\u062a\u06a9\u0645\u06cc\u0644 \u0648 \u0627\u062f\u0627\u0645\u0647"

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private rounded(IIZ)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 119
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 120
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float p1, p2

    invoke-direct {p0, p1}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p3, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 121
    invoke-direct {p0, p1}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result p1

    sget p2, Lapp/solina/cfbridge/MainActivity;->LINE:I

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    return-object v0
.end method

.method private scheduleAssistant()V
    .locals 4

    .line 471
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->assistHandler:Landroid/os/Handler;

    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->assistTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 472
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->assistant:Lapp/solina/cfbridge/LoginAssistant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lapp/solina/cfbridge/LoginAssistant;->active()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->assistHandler:Landroid/os/Handler;

    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->assistTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private startProvisioning()V
    .locals 5

    .line 218
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->provisioning:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->opening:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->cloudflareTokenInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lapp/solina/cfbridge/CloudflareApi;->validToken(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v0, "\u06cc\u06a9 API Token \u0645\u0639\u062a\u0628\u0631 \u06a9\u0644\u0648\u062f\u0641\u0644\u0631 \u0648\u0627\u0631\u062f \u06a9\u0646\u061b \u062a\u0648\u06a9\u0646 \u0631\u0627 \u062f\u0631 \u0686\u062a \u0646\u0641\u0631\u0633\u062a \u0648 \u0627\u0632 Global API Key \u0627\u0633\u062a\u0641\u0627\u062f\u0647 \u0646\u06a9\u0646."

    invoke-direct {p0, v0, v2}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V

    return-void

    .line 221
    :cond_1
    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->usPlacement:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 222
    iget-object v3, p0, Lapp/solina/cfbridge/MainActivity;->cloudflareTokenInput:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lapp/solina/cfbridge/MainActivity;->provisioning:Z

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lapp/solina/cfbridge/MainActivity;->buttons(Z)V

    .line 223
    iget-object v2, p0, Lapp/solina/cfbridge/MainActivity;->provisionStatus:Landroid/widget/TextView;

    const-string v3, "\u062f\u0631 \u062d\u0627\u0644 \u0628\u0631\u0631\u0633\u06cc \u062f\u0633\u062a\u0631\u0633\u06cc \u0648 \u062d\u0633\u0627\u0628\u200c\u0647\u0627\u06cc \u0645\u062c\u0627\u0632\u2026"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v2, p0, Lapp/solina/cfbridge/MainActivity;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0, v0, v1}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda18;-><init>(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private status(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_skip_toast
    const/4 v0, 0x1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_skip_toast
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->statusText:Landroid/widget/TextView;
    if-eqz v0, :cond_ret_status
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->statusText:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/16 p2, 0xb1

    const/16 v0, 0x9d

    const/16 v1, 0xff

    invoke-static {v1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    goto :goto_0

    :cond_0
    sget p2, Lapp/solina/cfbridge/MainActivity;->MUTED:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_ret_status
    return-void
.end method

.method private stopAssistant()V
    .locals 2

    .line 524
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->assistHandler:Landroid/os/Handler;

    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->assistTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 525
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->assistant:Lapp/solina/cfbridge/LoginAssistant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lapp/solina/cfbridge/LoginAssistant;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lapp/solina/cfbridge/MainActivity;->assistant:Lapp/solina/cfbridge/LoginAssistant;

    :cond_0
    return-void
.end method

.method private text(Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .locals 1

    .line 125
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x800003

    .line 126
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, 0x40400000    # 3.0f

    invoke-direct {p0, p1}, Lapp/solina/cfbridge/MainActivity;->dp(F)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3f8f5c29    # 1.12f

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    if-eqz p4, :cond_0

    .line 127
    const-string p1, "sans-serif"

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-object v0
.end method

.method private tickAssist()V
    .locals 4

    .line 475
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->assistant:Lapp/solina/cfbridge/LoginAssistant;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lapp/solina/cfbridge/LoginAssistant;->active()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 476
    :cond_0
    iget v0, p0, Lapp/solina/cfbridge/MainActivity;->assistPolls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/solina/cfbridge/MainActivity;->assistPolls:I

    const/16 v1, 0x2d

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/solina/cfbridge/MainActivity;->isMuseUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 477
    :cond_1
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->assistant:Lapp/solina/cfbridge/LoginAssistant;

    .line 479
    :try_start_0
    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Lapp/solina/cfbridge/LoginAssistant;->javascript()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0, v0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda24;-><init>(Lapp/solina/cfbridge/MainActivity;Lapp/solina/cfbridge/LoginAssistant;)V

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->stopAssistant()V

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->assistStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const-string v1, "\u06cc\u0627\u0631 \u0648\u0631\u0648\u062f \u0645\u062a\u0648\u0642\u0641 \u0634\u062f\u061b \u0641\u0631\u0645 \u0633\u0627\u06cc\u062a \u0631\u0627 \u062f\u0633\u062a\u06cc \u0627\u062f\u0627\u0645\u0647 \u0628\u062f\u0647."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void

    .line 476
    :cond_3
    :goto_1
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->stopAssistant()V

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->assistStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const-string v1, "\u06cc\u0627\u0631 \u0648\u0631\u0648\u062f \u0645\u062a\u0648\u0642\u0641 \u0634\u062f\u061b \u0645\u06cc\u200c\u062a\u0648\u0627\u0646\u06cc \u062f\u0633\u062a\u06cc \u0627\u062f\u0627\u0645\u0647 \u0628\u062f\u0647\u06cc."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method synthetic lambda$attachBrowser$24$app-pol-bridge-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->leaveBrowser()V

    return-void
.end method

.method synthetic lambda$attachBrowser$25$app-pol-bridge-MainActivity(Landroid/view/View;)V
    .locals 1

    .line 401
    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->browserError:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_0
    return-void
.end method

.method synthetic lambda$attachBrowser$26$app-pol-bridge-MainActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 450
    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->browserError:Landroid/widget/TextView;

    const-string p2, "\u062f\u0627\u0646\u0644\u0648\u062f \u0641\u0627\u06cc\u0644 \u062f\u0631 \u0627\u06cc\u0646 \u0646\u0633\u062e\u0647 \u0641\u0639\u0627\u0644 \u0646\u06cc\u0633\u062a."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->browserError:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$attachBrowser$27$app-pol-bridge-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 454
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->requestAssistant()V

    return-void
.end method

.method synthetic lambda$attachBrowser$28$app-pol-bridge-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 456
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->pasteVerification()V

    return-void
.end method

.method synthetic lambda$attachBrowser$29$app-pol-bridge-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 460
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->clearSession()V

    return-void
.end method

.method synthetic lambda$attachBrowser$30$app-pol-bridge-MainActivity(Landroid/view/View;)V
    .locals 2

    .line 458
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u062d\u0630\u0641 \u0646\u0634\u0633\u062a \u0631\u0648\u06cc \u0627\u06cc\u0646 \u06af\u0648\u0634\u06cc\u061f"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u06a9\u0648\u06a9\u06cc \u0648 \u062f\u0627\u062f\u0647\u0654 \u0648\u0628\u200c\u0633\u0627\u06cc\u062a \u0627\u0632 \u0647\u0645\u06cc\u0646 \u0627\u067e \u067e\u0627\u06a9 \u0645\u06cc\u200c\u0634\u0648\u062f\u061b \u062e\u0648\u062f \u062d\u0633\u0627\u0628 \u062d\u0630\u0641 \u0646\u0645\u06cc\u200c\u0634\u0648\u062f."

    .line 459
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda6;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    .line 460
    const-string v1, "\u067e\u0627\u06a9 \u0634\u0648\u062f"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u0627\u0646\u0635\u0631\u0627\u0641"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$buildHome$1$app-pol-bridge-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->startProvisioning()V

    return-void
.end method

.method synthetic lambda$buildHome$2$app-pol-bridge-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    .line 187
    invoke-direct {p0, p1}, Lapp/solina/cfbridge/MainActivity;->check(Z)V

    return-void
.end method

.method synthetic lambda$buildHome$3$app-pol-bridge-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 188
    invoke-direct {p0, p1}, Lapp/solina/cfbridge/MainActivity;->check(Z)V

    return-void
.end method

.method synthetic lambda$buildHome$5$app-pol-bridge-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->help()V

    return-void
.end method

.method synthetic lambda$check$19$app-pol-bridge-MainActivity(Lapp/solina/cfbridge/LoginAssistant;Lapp/solina/cfbridge/MainActivity$Config;)V
    .locals 1

    .line 327
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->stopAssistant()V

    iput-object p1, p0, Lapp/solina/cfbridge/MainActivity;->assistant:Lapp/solina/cfbridge/LoginAssistant;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lapp/solina/cfbridge/MainActivity;->observerOnly:Z

    iput-boolean p1, p0, Lapp/solina/cfbridge/MainActivity;->humanPromptShown:Z

    iput p1, p0, Lapp/solina/cfbridge/MainActivity;->assistPolls:I

    invoke-direct {p0, p2}, Lapp/solina/cfbridge/MainActivity;->openBrowser(Lapp/solina/cfbridge/MainActivity$Config;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lapp/solina/cfbridge/LoginAssistant;->close()V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$check$20$app-pol-bridge-MainActivity(Ljava/lang/String;)V
    .locals 2

    .line 334
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->badge:Landroid/widget/TextView;

    const-string v1, "Worker \u0645\u062a\u0635\u0644"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V

    iput-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->opening:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lapp/solina/cfbridge/MainActivity;->buttons(Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$check$21$app-pol-bridge-MainActivity()V
    .locals 3

    .line 338
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->opening:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lapp/solina/cfbridge/MainActivity;->buttons(Z)V

    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->badge:Landroid/widget/TextView;

    const-string v2, "\u0645\u062a\u0635\u0644 \u0646\u06cc\u0633\u062a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u0627\u0631\u062a\u0628\u0627\u0637 \u0627\u0645\u0646 \u0628\u0627 Worker \u06cc\u0627 \u0630\u062e\u06cc\u0631\u0647\u0654 \u0627\u0645\u0646 \u062a\u0646\u0638\u06cc\u0645\u0627\u062a \u062a\u0623\u06cc\u06cc\u062f \u0646\u0634\u062f\u061b \u0627\u06cc\u0646\u062a\u0631\u0646\u062a\u060c \u0646\u0634\u0627\u0646\u06cc \u0648 \u06a9\u0644\u06cc\u062f \u067e\u0644 \u0631\u0627 \u0628\u0631\u0631\u0633\u06cc \u06a9\u0646."

    invoke-direct {p0, v1, v0}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$check$22$app-pol-bridge-MainActivity(Lapp/solina/cfbridge/MainActivity$Config;ZLapp/solina/cfbridge/LoginAssistant;)V
    .locals 5

    .line 324
    const-string v0, "ingressColo"

    .line 0
    const-string v1, "\u061b HTTP "

    const-string v2, "Worker \u067e\u0627\u0633\u062e \u0633\u0627\u0644\u0645 \u062f\u0627\u062f. \u0645\u0631\u06a9\u0632 \u0648\u0631\u0648\u062f\u06cc: "

    .line 324
    :try_start_0
    const-string v3, "/health"

    invoke-direct {p0, p1, v3}, Lapp/solina/cfbridge/MainActivity;->get(Lapp/solina/cfbridge/MainActivity$Config;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 326
    iget-object p2, p0, Lapp/solina/cfbridge/MainActivity;->store:Lapp/solina/cfbridge/TokenStore;

    iget-object v0, p1, Lapp/solina/cfbridge/MainActivity$Config;->endpoint:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lapp/solina/cfbridge/MainActivity$Config;->token:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lapp/solina/cfbridge/TokenStore;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance p2, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0, p3, p1}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda29;-><init>(Lapp/solina/cfbridge/MainActivity;Lapp/solina/cfbridge/LoginAssistant;Lapp/solina/cfbridge/MainActivity$Config;)V

    invoke-virtual {p0, p2}, Lapp/solina/cfbridge/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 329
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "\u0646\u0627\u0645\u0634\u062e\u0635"

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 330
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\n\u0627\u06cc\u0646 \u0645\u0642\u062f\u0627\u0631 \u06a9\u0634\u0648\u0631 \u062e\u0631\u0648\u062c\u06cc \u0646\u06cc\u0633\u062a \u0648 \u062b\u0628\u062a\u200c\u0646\u0627\u0645 \u0631\u0627 \u062a\u0623\u06cc\u06cc\u062f \u0646\u0645\u06cc\u200c\u06a9\u0646\u062f."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    :try_start_2
    const-string v0, "/probe"

    invoke-direct {p0, p1, v0}, Lapp/solina/cfbridge/MainActivity;->get(Lapp/solina/cfbridge/MainActivity$Config;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "websiteHttpStatus"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\u0645\u0642\u0635\u062f \u067e\u0627\u0633\u062e \u0634\u0628\u06a9\u0647 \u062f\u0627\u062f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-lez p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 332
    :catch_0
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n\u0622\u0632\u0645\u0627\u06cc\u0634 TCP/TLS \u0645\u0642\u0635\u062f \u0645\u0648\u0641\u0642 \u0646\u0634\u062f\u061b \u062f\u0633\u062a\u0631\u0633\u06cc Muse \u0647\u0646\u0648\u0632 \u062a\u0623\u06cc\u06cc\u062f \u0646\u0634\u062f\u0647 \u0627\u0633\u062a."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 334
    :goto_2
    new-instance p2, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda30;

    invoke-direct {p2, p0, p1}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda30;-><init>(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lapp/solina/cfbridge/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    if-eqz p3, :cond_3

    .line 337
    invoke-virtual {p3}, Lapp/solina/cfbridge/LoginAssistant;->close()V

    .line 338
    :cond_3
    new-instance p1, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda31;

    invoke-direct {p1, p0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda31;-><init>(Lapp/solina/cfbridge/MainActivity;)V

    invoke-virtual {p0, p1}, Lapp/solina/cfbridge/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method synthetic lambda$help$36$app-pol-bridge-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 569
    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->store:Lapp/solina/cfbridge/TokenStore;

    invoke-virtual {p1}, Lapp/solina/cfbridge/TokenStore;->clear()V

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->tokenInput:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->endpointInput:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->cloudflareTokenInput:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->musePasswordInput:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u062a\u0646\u0638\u06cc\u0645\u0627\u062a \u06af\u0648\u0634\u06cc \u067e\u0627\u06a9 \u0634\u062f\u061b Worker \u0631\u0648\u06cc \u062d\u0633\u0627\u0628 Cloudflare \u062d\u0630\u0641 \u0646\u0634\u062f\u0647 \u0627\u0633\u062a."

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic lambda$openBrowser$23$app-pol-bridge-MainActivity()V
    .locals 1

    .line 372
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->proxyApplied:Z

    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->attachBrowser()V

    return-void
.end method

.method synthetic lambda$pasteVerification$33$app-pol-bridge-MainActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 534
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 535
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x2000

    if-gt p2, p3, :cond_0

    invoke-static {p1}, Lapp/solina/cfbridge/MainActivity;->isMuseUrl(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :cond_0
    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->browserError:Landroid/widget/TextView;

    const-string p2, "\u0641\u0642\u0637 \u0644\u06cc\u0646\u06a9 HTTPS \u062f\u0627\u0645\u0646\u0647\u0654 muse.ai \u06cc\u0627 \u0632\u06cc\u0631\u062f\u0627\u0645\u0646\u0647\u200c\u0647\u0627\u06cc \u0622\u0646 \u067e\u0630\u06cc\u0631\u0641\u062a\u0647 \u0645\u06cc\u200c\u0634\u0648\u062f."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->browserError:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$provisionAccount$12$app-pol-bridge-MainActivity(Ljava/lang/String;)V
    .locals 1

    .line 251
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->provisionStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$provisionAccount$13$app-pol-bridge-MainActivity(Ljava/lang/String;)V
    .locals 1

    .line 251
    new-instance v0, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda17;-><init>(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lapp/solina/cfbridge/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$provisionAccount$14$app-pol-bridge-MainActivity(Lapp/solina/cfbridge/CloudflareApi$Deployment;)V
    .locals 2

    .line 253
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->endpointInput:Landroid/widget/EditText;

    iget-object v1, p1, Lapp/solina/cfbridge/CloudflareApi$Deployment;->endpoint:Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->tokenInput:Landroid/widget/EditText;

    iget-object p1, p1, Lapp/solina/cfbridge/CloudflareApi$Deployment;->bridgeKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$provisionAccount$15$app-pol-bridge-MainActivity(Lapp/solina/cfbridge/CloudflareApi$Deployment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->store:Lapp/solina/cfbridge/TokenStore;

    iget-object v1, p1, Lapp/solina/cfbridge/CloudflareApi$Deployment;->endpoint:Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lapp/solina/cfbridge/CloudflareApi$Deployment;->bridgeKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lapp/solina/cfbridge/TokenStore;->save(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda35;-><init>(Lapp/solina/cfbridge/MainActivity;Lapp/solina/cfbridge/CloudflareApi$Deployment;)V

    invoke-virtual {p0, v0}, Lapp/solina/cfbridge/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$provisionAccount$16$app-pol-bridge-MainActivity()V
    .locals 2

    .line 256
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->provisionStatus:Landroid/widget/TextView;

    const-string v1, "\u0627\u0646\u062a\u0634\u0627\u0631 API \u062a\u0623\u06cc\u06cc\u062f \u0634\u062f\u061b \u062f\u0631 \u062d\u0627\u0644 \u0628\u0631\u0631\u0633\u06cc \u067e\u0627\u0633\u062e \u0646\u0634\u0627\u0646\u06cc \u062c\u062f\u06cc\u062f\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$provisionAccount$17$app-pol-bridge-MainActivity(ZLapp/solina/cfbridge/CloudflareApi$Deployment;)V
    .locals 4

    .line 265
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->provisioning:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lapp/solina/cfbridge/MainActivity;->buttons(Z)V

    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->badge:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const-string v2, "\u067e\u0644 \u0622\u0645\u0627\u062f\u0647"

    goto :goto_0

    :cond_1
    const-string v2, "\u0645\u0646\u062a\u0634\u0631\u0634\u062f\u0647"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->provisionStatus:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Worker \u062c\u062f\u06cc\u062f \u0631\u0648\u06cc \u062d\u0633\u0627\u0628 \u00ab"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lapp/solina/cfbridge/CloudflareApi$Deployment;->accountName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "\u00bb \u0633\u0627\u062e\u062a\u0647 \u0648 workers.dev \u0641\u0639\u0627\u0644 \u0634\u062f. \u062a\u0648\u06a9\u0646 API \u0646\u06af\u0647\u200c\u062f\u0627\u0631\u06cc \u0646\u0645\u06cc\u200c\u0634\u0648\u062f."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    .line 268
    const-string p2, "\u0627\u0631\u062a\u0628\u0627\u0637 \u0628\u0627 Worker \u062a\u0623\u06cc\u06cc\u062f \u0634\u062f. \u062d\u0627\u0644\u0627 \u0627\u06cc\u0645\u06cc\u0644 \u0648 \u062f\u0631 \u0635\u0648\u0631\u062a \u0646\u06cc\u0627\u0632 \u0631\u0645\u0632 \u0645\u062e\u0635\u0648\u0635 Muse \u0631\u0627 \u0648\u0627\u0631\u062f \u06a9\u0646. \u06a9\u0634\u0648\u0631 \u0648 \u0645\u062c\u0648\u0632 \u062b\u0628\u062a\u200c\u0646\u0627\u0645 \u0647\u0646\u0648\u0632 \u062a\u0623\u06cc\u06cc\u062f \u0646\u0634\u062f\u0647\u200c\u0627\u0646\u062f."

    goto :goto_1

    .line 269
    :cond_2
    const-string p2, "API \u0633\u0627\u062e\u062a \u0631\u0627 \u062a\u0623\u06cc\u06cc\u062f \u06a9\u0631\u062f\u060c \u0648\u0644\u06cc \u0622\u062f\u0631\u0633 \u0647\u0646\u0648\u0632 \u067e\u0627\u0633\u062e \u0633\u0627\u0644\u0645 \u0646\u062f\u0627\u062f\u0647\u061b \u0645\u0645\u06a9\u0646 \u0627\u0633\u062a DNS \u0646\u06cc\u0627\u0632 \u0628\u0647 \u0632\u0645\u0627\u0646 \u062f\u0627\u0634\u062a\u0647 \u0628\u0627\u0634\u062f. \u062f\u0648\u0628\u0627\u0631\u0647 Worker \u0646\u0633\u0627\u0632\u061b \u00ab\u0622\u0632\u0645\u0627\u06cc\u0634 \u067e\u0644 \u0630\u062e\u06cc\u0631\u0647\u200c\u0634\u062f\u0647\u00bb \u0631\u0627 \u0628\u0632\u0646."

    :goto_1
    xor-int/2addr p1, v0

    .line 268
    invoke-direct {p0, p2, p1}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic lambda$provisionFailure$18$app-pol-bridge-MainActivity(Ljava/lang/String;)V
    .locals 3

    .line 276
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->provisioning:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lapp/solina/cfbridge/MainActivity;->buttons(Z)V

    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->provisionStatus:Landroid/widget/TextView;

    const-string v2, "\u0633\u0627\u062e\u062a \u062a\u0623\u06cc\u06cc\u062f \u0646\u0634\u062f\u061b \u062a\u0648\u06a9\u0646 API \u0630\u062e\u06cc\u0631\u0647 \u0646\u0634\u062f\u0647 \u0627\u0633\u062a."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, v0}, Lapp/solina/cfbridge/MainActivity;->status(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$requestAssistant$32$app-pol-bridge-MainActivity(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 518
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 519
    const-string p3, "@"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 520
    :cond_0
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->stopAssistant()V

    new-instance p3, Lapp/solina/cfbridge/LoginAssistant;

    iget-object p4, p0, Lapp/solina/cfbridge/MainActivity;->loginScript:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p3, p4, p1, v0, v1}, Lapp/solina/cfbridge/LoginAssistant;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p3, p0, Lapp/solina/cfbridge/MainActivity;->assistant:Lapp/solina/cfbridge/LoginAssistant;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lapp/solina/cfbridge/MainActivity;->observerOnly:Z

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput-boolean p1, p0, Lapp/solina/cfbridge/MainActivity;->humanPromptShown:Z

    iput p1, p0, Lapp/solina/cfbridge/MainActivity;->assistPolls:I

    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->scheduleAssistant()V

    return-void
.end method

.method synthetic lambda$startProvisioning$10$app-pol-bridge-MainActivity(Lapp/solina/cfbridge/CloudflareApi;Ljava/util/List;Z)V
    .locals 7

    .line 234
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lapp/solina/cfbridge/CloudflareApi;->close()V

    return-void

    .line 235
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lapp/solina/cfbridge/CloudflareApi$Account;

    iget-object v5, v5, Lapp/solina/cfbridge/CloudflareApi$Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lapp/solina/cfbridge/CloudflareApi$Account;

    iget-object v5, v5, Lapp/solina/cfbridge/CloudflareApi$Account;->id:Ljava/lang/String;

    const/4 v6, 0x6

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u067e\u0644 \u0631\u0648\u06cc \u06a9\u062f\u0627\u0645 \u062d\u0633\u0627\u0628 \u0633\u0627\u062e\u062a\u0647 \u0634\u0648\u062f\u061f"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, p1, p2, p3}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda20;-><init>(Lapp/solina/cfbridge/MainActivity;Lapp/solina/cfbridge/CloudflareApi;Ljava/util/List;Z)V

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {p3, p0, p1}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda21;-><init>(Lapp/solina/cfbridge/MainActivity;Lapp/solina/cfbridge/CloudflareApi;)V

    .line 239
    const-string v0, "\u0627\u0646\u0635\u0631\u0627\u0641"

    invoke-virtual {p2, v0, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {p3, p0, p1}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda23;-><init>(Lapp/solina/cfbridge/MainActivity;Lapp/solina/cfbridge/CloudflareApi;)V

    .line 240
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$startProvisioning$11$app-pol-bridge-MainActivity(Ljava/lang/String;Z)V
    .locals 3

    .line 0
    const/4 v0, 0x0

    .line 227
    :try_start_0
    new-instance v1, Lapp/solina/cfbridge/CloudflareApi;

    iget-object v2, p0, Lapp/solina/cfbridge/MainActivity;->network:Lokhttp3/OkHttpClient;

    invoke-direct {v1, p1, v2}, Lapp/solina/cfbridge/CloudflareApi;-><init>(Ljava/lang/String;Lokhttp3/OkHttpClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iput-object v1, p0, Lapp/solina/cfbridge/MainActivity;->provisioningApi:Lapp/solina/cfbridge/CloudflareApi;

    .line 228
    invoke-virtual {v1}, Lapp/solina/cfbridge/CloudflareApi;->accounts()Ljava/util/List;

    move-result-object p1

    .line 229
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lapp/solina/cfbridge/CloudflareApi;->close()V

    return-void

    .line 230
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/solina/cfbridge/CloudflareApi$Account;

    invoke-direct {p0, v1, p1, p2}, Lapp/solina/cfbridge/MainActivity;->provisionAccount(Lapp/solina/cfbridge/CloudflareApi;Lapp/solina/cfbridge/CloudflareApi$Account;Z)V

    goto :goto_1

    .line 233
    :cond_1
    new-instance v0, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v1, p1, p2}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda4;-><init>(Lapp/solina/cfbridge/MainActivity;Lapp/solina/cfbridge/CloudflareApi;Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Lapp/solina/cfbridge/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 230
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No permitted account"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_3

    .line 242
    invoke-virtual {v0}, Lapp/solina/cfbridge/CloudflareApi;->close()V

    :cond_3
    invoke-direct {p0, p1}, Lapp/solina/cfbridge/MainActivity;->provisionFailure(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$startProvisioning$6$app-pol-bridge-MainActivity(Lapp/solina/cfbridge/CloudflareApi;Ljava/util/List;IZ)V
    .locals 0

    .line 238
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/solina/cfbridge/CloudflareApi$Account;

    invoke-direct {p0, p1, p2, p4}, Lapp/solina/cfbridge/MainActivity;->provisionAccount(Lapp/solina/cfbridge/CloudflareApi;Lapp/solina/cfbridge/CloudflareApi$Account;Z)V

    return-void
.end method

.method synthetic lambda$startProvisioning$7$app-pol-bridge-MainActivity(Lapp/solina/cfbridge/CloudflareApi;Ljava/util/List;ZLandroid/content/DialogInterface;I)V
    .locals 7

    .line 238
    iget-object p4, p0, Lapp/solina/cfbridge/MainActivity;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda19;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda19;-><init>(Lapp/solina/cfbridge/MainActivity;Lapp/solina/cfbridge/CloudflareApi;Ljava/util/List;IZ)V

    invoke-interface {p4, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$startProvisioning$8$app-pol-bridge-MainActivity(Lapp/solina/cfbridge/CloudflareApi;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lapp/solina/cfbridge/MainActivity;->cancelProvision(Lapp/solina/cfbridge/CloudflareApi;)V

    return-void
.end method

.method synthetic lambda$startProvisioning$9$app-pol-bridge-MainActivity(Lapp/solina/cfbridge/CloudflareApi;Landroid/content/DialogInterface;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lapp/solina/cfbridge/MainActivity;->cancelProvision(Lapp/solina/cfbridge/CloudflareApi;)V

    return-void
.end method

.method synthetic lambda$tickAssist$31$app-pol-bridge-MainActivity(Lapp/solina/cfbridge/LoginAssistant;Ljava/lang/String;)V
    .locals 8

    .line 480
    const-string v0, "password_needed"

    const-string v1, "wait_captcha"

    const-string v2, "wait_code"

    const-string v3, ""

    iget-boolean v4, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    if-nez v4, :cond_d

    iget-object v4, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lapp/solina/cfbridge/MainActivity;->assistant:Lapp/solina/cfbridge/LoginAssistant;

    if-ne v4, p1, :cond_d

    invoke-virtual {p1}, Lapp/solina/cfbridge/LoginAssistant;->active()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    const-wide/16 v4, 0x4b0

    .line 482
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "state"

    invoke-virtual {v6, p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 483
    const-string v7, "submitted"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lapp/solina/cfbridge/LoginAssistant;->submitted()V

    .line 484
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_2

    .line 485
    :cond_2
    iget-boolean v6, p0, Lapp/solina/cfbridge/MainActivity;->observerOnly:Z

    if-eqz v6, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 486
    iget-object p2, p0, Lapp/solina/cfbridge/MainActivity;->assistant:Lapp/solina/cfbridge/LoginAssistant;

    if-ne p2, p1, :cond_3

    invoke-virtual {p1}, Lapp/solina/cfbridge/LoginAssistant;->active()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lapp/solina/cfbridge/MainActivity;->assistHandler:Landroid/os/Handler;

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->assistTick:Ljava/lang/Runnable;

    invoke-virtual {p2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    .line 489
    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "manual_required"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "blocked_origin"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "not_login_context"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 492
    :cond_5
    const-string v0, "submitted_email"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p2, p0, Lapp/solina/cfbridge/MainActivity;->assistStatus:Landroid/widget/TextView;

    const-string v0, "\u0627\u06cc\u0645\u06cc\u0644 \u062f\u0631 \u0641\u0631\u0645 \u0627\u0635\u0644\u06cc \u062a\u06a9\u0645\u06cc\u0644 \u0648 \u00ab\u0627\u062f\u0627\u0645\u0647\u00bb \u0632\u062f\u0647 \u0634\u062f\u061b \u0645\u0646\u062a\u0638\u0631 \u0645\u0631\u062d\u0644\u0647\u0654 \u0628\u0639\u062f\u2026"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 493
    :cond_6
    const-string v0, "submitted_password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 494
    iget-object p2, p0, Lapp/solina/cfbridge/MainActivity;->assistStatus:Landroid/widget/TextView;

    const-string v0, "\u0641\u0631\u0645 \u0631\u0645\u0632 Muse \u0627\u0631\u0633\u0627\u0644 \u0634\u062f\u061b \u0645\u0648\u0641\u0642\u06cc\u062a \u0648\u0631\u0648\u062f \u0631\u0627 \u062e\u0648\u062f \u0633\u0627\u06cc\u062a \u062a\u0639\u06cc\u06cc\u0646 \u0645\u06cc\u200c\u06a9\u0646\u062f."

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->stopAssistant()V

    new-instance p2, Lapp/solina/cfbridge/LoginAssistant;

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->loginScript:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v3, v3, v1}, Lapp/solina/cfbridge/LoginAssistant;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p2, p0, Lapp/solina/cfbridge/MainActivity;->assistant:Lapp/solina/cfbridge/LoginAssistant;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lapp/solina/cfbridge/MainActivity;->observerOnly:Z

    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->scheduleAssistant()V

    return-void

    .line 497
    :cond_7
    const-string v0, "email_filled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "password_filled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    :cond_8
    iget-object p2, p0, Lapp/solina/cfbridge/MainActivity;->assistStatus:Landroid/widget/TextView;

    const-string v0, "\u0641\u0631\u0645 \u0627\u0635\u0644\u06cc \u062a\u06a9\u0645\u06cc\u0644 \u0634\u062f\u061b \u062f\u0631 \u0635\u0648\u0631\u062a \u0646\u06cc\u0627\u0632 \u062e\u0648\u062f\u062a \u0627\u062f\u0627\u0645\u0647 \u0628\u062f\u0647."

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 490
    :cond_9
    :goto_0
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->stopAssistant()V

    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->assistStatus:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p2, "\u0627\u06af\u0631 \u0633\u0627\u06cc\u062a \u0631\u0645\u0632 \u0645\u06cc\u200c\u062e\u0648\u0627\u0647\u062f\u060c \u0631\u0645\u0632 \u0645\u062e\u0635\u0648\u0635 Muse \u0631\u0627 \u062f\u0631 \u0647\u0645\u0627\u0646 \u0635\u0641\u062d\u0647 \u0648\u0627\u0631\u062f \u06a9\u0646\u061b \u0646\u0647 \u0631\u0645\u0632 Gmail."

    goto :goto_1

    :cond_a
    const-string p2, "\u0641\u0631\u0645 \u0648\u0631\u0648\u062f \u0642\u0627\u0628\u0644 \u062a\u0634\u062e\u06cc\u0635 \u0646\u06cc\u0633\u062a \u06cc\u0627 \u0627\u0632 \u0645\u062d\u062f\u0648\u062f\u0647 \u062e\u0627\u0631\u062c \u0627\u0633\u062a\u061b \u062f\u0633\u062a\u06cc \u0627\u062f\u0627\u0645\u0647 \u0628\u062f\u0647."

    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 484
    :cond_b
    :goto_2
    invoke-direct {p0, p2}, Lapp/solina/cfbridge/MainActivity;->humanChallenge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 499
    :catch_0
    :cond_c
    :goto_3
    iget-object p2, p0, Lapp/solina/cfbridge/MainActivity;->assistant:Lapp/solina/cfbridge/LoginAssistant;

    if-ne p2, p1, :cond_d

    invoke-virtual {p1}, Lapp/solina/cfbridge/LoginAssistant;->active()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->assistHandler:Landroid/os/Handler;

    iget-object p2, p0, Lapp/solina/cfbridge/MainActivity;->assistTick:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_4
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 573
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->leaveBrowser()V

    goto :goto_0

    .line 574
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lapp/solina/cfbridge/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lapp/solina/cfbridge/MainActivity;->BG:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 95
    invoke-virtual {p0}, Lapp/solina/cfbridge/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 97
    invoke-virtual {p0}, Lapp/solina/cfbridge/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/4 p1, 0x0

    .line 98
    invoke-static {p1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 99
    new-instance v0, Lapp/solina/cfbridge/TokenStore;

    invoke-direct {v0, p0}, Lapp/solina/cfbridge/TokenStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapp/solina/cfbridge/MainActivity;->store:Lapp/solina/cfbridge/TokenStore;

    .line 100
    :try_start_0
    const-string v0, "login-assist.js"

    invoke-direct {p0, v0}, Lapp/solina/cfbridge/MainActivity;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/solina/cfbridge/MainActivity;->loginScript:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :catch_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapp/solina/cfbridge/MainActivity;->root:Landroid/widget/FrameLayout;

    .line 102
    sget v1, Lapp/solina/cfbridge/MainActivity;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 103
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->root:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    .line 105
    invoke-virtual {p0}, Lapp/solina/cfbridge/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 106
    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->root:Landroid/widget/FrameLayout;

    new-instance v0, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda34;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 112
    :goto_0
    iget-object p1, p0, Lapp/solina/cfbridge/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lapp/solina/cfbridge/MainActivity;->setContentView(Landroid/view/View;)V

    .line 113
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->buildHome()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x1

    .line 579
    iput-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->destroyed:Z

    .line 580
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->provisioningApi:Lapp/solina/cfbridge/CloudflareApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->provisioningApi:Lapp/solina/cfbridge/CloudflareApi;

    invoke-virtual {v0}, Lapp/solina/cfbridge/CloudflareApi;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lapp/solina/cfbridge/MainActivity;->provisioningApi:Lapp/solina/cfbridge/CloudflareApi;

    .line 581
    :cond_0
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->destroyBrowserView()V

    .line 582
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->bridge:Lapp/solina/cfbridge/LocalBridgeProxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lapp/solina/cfbridge/LocalBridgeProxy;->close()V

    .line 583
    :cond_1
    iget-boolean v0, p0, Lapp/solina/cfbridge/MainActivity;->proxyApplied:Z

    if-eqz v0, :cond_2

    const-string v0, "PROXY_OVERRIDE"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    invoke-static {}, Landroidx/webkit/ProxyController;->getInstance()Landroidx/webkit/ProxyController;

    move-result-object v0

    new-instance v1, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda14;-><init>()V

    new-instance v2, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lapp/solina/cfbridge/MainActivity$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroidx/webkit/ProxyController;->clearProxyOverride(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 586
    :cond_2
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->background:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->network:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->network:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->evictAll()V

    .line 587
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 576
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->stopAssistant()V

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 577
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->scheduleAssistant()V

    return-void
.end method

.method public static handleBridgeAction(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v0

    const-string v1, "bridge://launch"
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1

    if-eqz v1, :cond_check_action

    # 1. url:
    const-string v1, "url"
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :cond_ep
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :cond_ep
    iput-object v1, p0, Lapp/solina/cfbridge/MainActivity;->launchUrl:Ljava/lang/String;

    # 2. email:
    :cond_ep
    const-string v1, "email"
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :cond_ep2
    iget-object v2, p0, Lapp/solina/cfbridge/MainActivity;->emailInput:Landroid/widget/EditText;
    if-eqz v2, :cond_ep2
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    # 3. endpoint:
    :cond_ep2
    const-string v1, "endpoint"
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :cond_tok
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :cond_tok
    iget-object v2, p0, Lapp/solina/cfbridge/MainActivity;->endpointInput:Landroid/widget/EditText;
    if-eqz v2, :cond_tok
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    # 4. token:
    :cond_tok
    const-string v1, "token"
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :cond_click
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :cond_click
    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->tokenInput:Landroid/widget/EditText;
    if-eqz v1, :cond_click
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    # 5. Click openButton!
    :cond_click
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->openButton:Landroid/widget/Button;
    if-eqz v0, :cond_end
    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z
    goto :goto_end

    :cond_check_action
    const-string v1, "bridge://check"
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :cond_prov_action

    # endpoint:
    const-string v1, "endpoint"
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :cond_chk_tok
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :cond_chk_tok
    iget-object v2, p0, Lapp/solina/cfbridge/MainActivity;->endpointInput:Landroid/widget/EditText;
    if-eqz v2, :cond_chk_tok
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    # token:
    :cond_chk_tok
    const-string v1, "token"
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :cond_chk_click
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :cond_chk_click
    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->tokenInput:Landroid/widget/EditText;
    if-eqz v1, :cond_chk_click
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_chk_click
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->testButton:Landroid/widget/Button;
    if-eqz v0, :cond_end
    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z
    goto :goto_end

    :cond_prov_action
    const-string v1, "bridge://provision"
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :cond_llm_action

    const-string v1, "token"
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :cond_prov_click
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :cond_prov_click
    iget-object v1, p0, Lapp/solina/cfbridge/MainActivity;->cloudflareTokenInput:Landroid/widget/EditText;
    if-eqz v1, :cond_prov_click
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_prov_click
    iget-object v0, p0, Lapp/solina/cfbridge/MainActivity;->provisionButton:Landroid/widget/Button;
    if-eqz v0, :cond_end
    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    :cond_llm_action
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v0

    const-string v1, "bridge://llm"
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :cond_fs_action

    const-string v1, "action"
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1

    const-string v2, "arg"
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2

    invoke-static {p0, v1, v2}, Lapp/solina/cfbridge/LlmBridge;->onAction(Lapp/solina/cfbridge/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    goto :goto_end

    :cond_fs_action
    const-string v1, "bridge://fullscreen"
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :cond_home_action

    const-string v1, "on"
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1

    const-string v2, "1"
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :cond_fs_off

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v1
    const/16 v2, 0x400
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v1
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v1
    const/16 v2, 0x1706
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V
    goto :goto_end

    :cond_fs_off
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v1
    const/16 v2, 0x400
    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v1
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v1
    const/4 v2, 0x0
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V
    goto :goto_end

    :cond_home_action
    const-string v1, "bridge://home"
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :cond_end

    const-string v1, "screen"
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1

    const-string v2, "ai"
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :cond_home_plain

    const-string v1, "file:///android_asset/ui/index.html#screen-ai"
    goto :cond_home_load

    :cond_home_plain
    const-string v1, "file:///android_asset/ui/index.html"

    :cond_home_load
    invoke-direct {p0}, Lapp/solina/cfbridge/MainActivity;->leaveBrowser()V

    iget-object v2, p0, Lapp/solina/cfbridge/MainActivity;->homeWeb:Landroid/webkit/WebView;
    if-eqz v2, :goto_end
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    goto :goto_end

    :cond_end
    :goto_end
    return-void
.end method
