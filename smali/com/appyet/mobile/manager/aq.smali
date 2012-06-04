.class final Lcom/appyet/mobile/manager/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/aq;->b:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/aq;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/manager/aq;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/appyet/mobile/manager/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/c/f;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/appyet/mobile/c/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/appyet/mobile/c/f;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v0, Lcom/appyet/mobile/c/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    invoke-interface {v4, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move v1, v2

    :goto_1
    if-nez v1, :cond_0

    new-instance v1, Lcom/appyet/mobile/data/Feed;

    invoke-direct {v1}, Lcom/appyet/mobile/data/Feed;-><init>()V

    iget-object v2, v0, Lcom/appyet/mobile/c/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/c/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/appyet/mobile/data/Feed;->setIsDownloadNewArticle(Z)V

    invoke-virtual {v1, v3}, Lcom/appyet/mobile/data/Feed;->setIsDownloadNewEnclosure(Z)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/Feed;->setCacheGuid(Ljava/lang/String;)V

    invoke-interface {v4, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/appyet/mobile/c/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4, v1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    iget-object v7, p0, Lcom/appyet/mobile/manager/aq;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v7}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v7

    const-string v8, "FeedId"

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v7, v8, v1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/FeedItem;

    invoke-interface {v7, v1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/appyet/mobile/manager/aq;->b:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bo;->b()Z

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    return-object v0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_1
.end method
