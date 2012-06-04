.class final Lcom/appyet/mobile/manager/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/c/e;

.field private synthetic b:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/w;->b:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/w;->a:Lcom/appyet/mobile/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/appyet/mobile/manager/w;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/w;->a:Lcom/appyet/mobile/c/e;

    iget-boolean v1, v1, Lcom/appyet/mobile/c/e;->f:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/appyet/mobile/manager/w;->a:Lcom/appyet/mobile/c/e;

    iget-object v5, v5, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/w;->a:Lcom/appyet/mobile/c/e;

    iget-object v4, v4, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/appyet/mobile/manager/w;->a:Lcom/appyet/mobile/c/e;

    iget-object v3, v3, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/appyet/mobile/data/Feed;

    invoke-direct {v0}, Lcom/appyet/mobile/data/Feed;-><init>()V

    iget-object v1, p0, Lcom/appyet/mobile/manager/w;->a:Lcom/appyet/mobile/c/e;

    iget-object v1, v1, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/w;->a:Lcom/appyet/mobile/c/e;

    iget-object v1, v1, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/w;->a:Lcom/appyet/mobile/c/e;

    iget-boolean v1, v1, Lcom/appyet/mobile/c/e;->d:Z

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setIsDownloadNewArticle(Z)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/w;->a:Lcom/appyet/mobile/c/e;

    iget-boolean v1, v1, Lcom/appyet/mobile/c/e;->e:Z

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setIsDownloadNewEnclosure(Z)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setCacheGuid(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/w;->a:Lcom/appyet/mobile/c/e;

    iget-object v4, v4, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    iget-object v3, p0, Lcom/appyet/mobile/manager/w;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    const-string v4, "FeedId"

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/appyet/mobile/manager/w;->b:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->b()Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method
