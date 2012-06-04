.class final Lcom/appyet/mobile/manager/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/Category;

.field private synthetic b:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/Category;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/n;->b:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/n;->a:Lcom/appyet/mobile/data/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/manager/n;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/mobile/manager/n;->a:Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/mobile/manager/n;->a:Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTotalCount()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-gtz v3, :cond_1

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getUnreadCount()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_0

    :cond_1
    iget-object v3, p0, Lcom/appyet/mobile/manager/n;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bo;->c(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v3

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE FeedItem SET IsRead = 1 WHERE IsRead <> 1 AND IsStar = 0 AND FeedId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE FeedItem SET IsRead = 1 WHERE IsRead <> 1 AND FeedId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appyet/mobile/manager/n;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/manager/bo;)V

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method
