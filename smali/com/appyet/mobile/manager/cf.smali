.class public final Lcom/appyet/mobile/manager/cf;
.super Ljava/lang/Object;


# static fields
.field private static d:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/appyet/mobile/wrapper/AccountManagerWrapper;->checkAvailable()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appyet/mobile/manager/cf;->d:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/appyet/mobile/manager/cf;->d:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/mobile/manager/cf;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/mobile/manager/cf;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/appyet/mobile/manager/cf;->d:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/appyet/mobile/wrapper/AccountManagerWrapper;

    iget-object v2, p0, Lcom/appyet/mobile/manager/cf;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v1, v2}, Lcom/appyet/mobile/wrapper/AccountManagerWrapper;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    invoke-virtual {v1}, Lcom/appyet/mobile/wrapper/AccountManagerWrapper;->getGoogleAccounts()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Lcom/appyet/mobile/manager/cf;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/appyet/mobile/wrapper/AccountManagerWrapper;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cf;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/mobile/wrapper/AccountManagerWrapper;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    new-instance v3, Lcom/appyet/mobile/c/a;

    invoke-direct {v3}, Lcom/appyet/mobile/c/a;-><init>()V

    invoke-virtual {v0, p1, p2, v3}, Lcom/appyet/mobile/wrapper/AccountManagerWrapper;->Authenticate(Landroid/app/Activity;Ljava/lang/String;Lcom/appyet/mobile/c/a;)Z

    move-result v1

    iget-object v0, v3, Lcom/appyet/mobile/c/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/appyet/mobile/manager/cf;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V

    move v0, v2

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/c/c;

    invoke-direct {v0}, Lcom/appyet/mobile/c/c;-><init>()V

    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoogleLogin auth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/cf;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/appyet/mobile/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "http://www.google.com/reader/api/0/subscription/list?output=json"

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/c/c;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appyet/mobile/manager/cf;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/c;)Lcom/appyet/mobile/c/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/appyet/mobile/c/d;->b:Ljava/io/InputStream;

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lcom/appyet/mobile/e/g;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "subscriptions"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    new-instance v5, Lcom/appyet/mobile/c/f;

    invoke-direct {v5}, Lcom/appyet/mobile/c/f;-><init>()V

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/appyet/mobile/c/f;->a:Ljava/lang/String;

    const-string v7, "title"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/appyet/mobile/c/f;->b:Ljava/lang/String;

    const-string v7, "firstitemmsec"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/appyet/mobile/c/f;->c:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    :goto_1
    return-object v0

    :cond_1
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    :goto_2
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_2
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3
.end method
