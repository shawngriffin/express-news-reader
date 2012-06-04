.class final Lcom/appyet/mobile/manager/bq;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Lcom/appyet/mobile/data/FeedItem;

.field private synthetic b:Lcom/appyet/mobile/manager/e;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/e;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/bq;->b:Lcom/appyet/mobile/manager/e;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bq;->b:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->g(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ah()I

    move-result v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bq;->b:Lcom/appyet/mobile/manager/e;

    invoke-static {v1}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bq;->b:Lcom/appyet/mobile/manager/e;

    invoke-static {v1}, Lcom/appyet/mobile/manager/e;->g(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/appyet/mobile/manager/bo;->c(J)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/manager/bq;->a:Lcom/appyet/mobile/data/FeedItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/manager/bq;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 0

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bq;->a:Lcom/appyet/mobile/data/FeedItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bq;->b:Lcom/appyet/mobile/manager/e;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bq;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/e;->a(Lcom/appyet/mobile/data/FeedItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
