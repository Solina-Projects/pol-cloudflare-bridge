.class final Lapp/pol/bridge/LoginAssistant;
.super Ljava/lang/Object;
.source "LoginAssistant.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final automatic:Z

.field private closed:Z

.field private email:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private remaining:I

.field private final script:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lapp/pol/bridge/LoginAssistant;->remaining:I

    .line 14
    iput-object p1, p0, Lapp/pol/bridge/LoginAssistant;->script:Ljava/lang/String;

    iput-object p2, p0, Lapp/pol/bridge/LoginAssistant;->email:Ljava/lang/String;

    iput-object p3, p0, Lapp/pol/bridge/LoginAssistant;->password:Ljava/lang/String;

    iput-boolean p4, p0, Lapp/pol/bridge/LoginAssistant;->automatic:Z

    return-void
.end method


# virtual methods
.method active()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lapp/pol/bridge/LoginAssistant;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lapp/pol/bridge/LoginAssistant;->email:Ljava/lang/String;

    iput-object v0, p0, Lapp/pol/bridge/LoginAssistant;->password:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lapp/pol/bridge/LoginAssistant;->closed:Z

    return-void
.end method

.method javascript()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 17
    iget-boolean v0, p0, Lapp/pol/bridge/LoginAssistant;->closed:Z

    if-eqz v0, :cond_0

    const-string v0, "({state:\'stopped\'})"

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    const-string v1, "email"

    iget-object v2, p0, Lapp/pol/bridge/LoginAssistant;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "password"

    iget-object v2, p0, Lapp/pol/bridge/LoginAssistant;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "autoSubmit"

    iget-boolean v2, p0, Lapp/pol/bridge/LoginAssistant;->automatic:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "remaining"

    iget v2, p0, Lapp/pol/bridge/LoginAssistant;->remaining:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lapp/pol/bridge/LoginAssistant;->script:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method submitted()V
    .locals 1

    .line 22
    iget v0, p0, Lapp/pol/bridge/LoginAssistant;->remaining:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lapp/pol/bridge/LoginAssistant;->remaining:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "LoginAssistant(credentials=<redacted>)"

    return-object v0
.end method
