.class final Lcom/appyet/mobile/manager/bx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/bx;->b:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/bx;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/appyet/mobile/manager/bx;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getCacheGuid()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/data/FeedItem;->setCacheGuid(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Failed on: feedItemDao.create(feedItem) != 1"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/manager/bx;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
