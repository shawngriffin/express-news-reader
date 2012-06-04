.class final Lcom/appyet/mobile/manager/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/g/a;

.field private synthetic b:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/at;->b:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/at;->a:Lcom/appyet/mobile/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/manager/at;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/at;->a:Lcom/appyet/mobile/g/a;

    iget-boolean v1, v1, Lcom/appyet/mobile/g/a;->d:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/appyet/mobile/manager/at;->a:Lcom/appyet/mobile/g/a;

    iget-object v5, v5, Lcom/appyet/mobile/g/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/appyet/mobile/manager/at;->a:Lcom/appyet/mobile/g/a;

    iget-object v5, v5, Lcom/appyet/mobile/g/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/appyet/mobile/manager/at;->a:Lcom/appyet/mobile/g/a;

    iget-object v4, v4, Lcom/appyet/mobile/g/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/appyet/mobile/data/Feed;

    invoke-direct {v0}, Lcom/appyet/mobile/data/Feed;-><init>()V

    iget-object v1, p0, Lcom/appyet/mobile/manager/at;->a:Lcom/appyet/mobile/g/a;

    iget-object v1, v1, Lcom/appyet/mobile/g/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/at;->a:Lcom/appyet/mobile/g/a;

    iget-object v1, v1, Lcom/appyet/mobile/g/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/data/Feed;->setIsDownloadNewArticle(Z)V

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/data/Feed;->setIsDownloadNewEnclosure(Z)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setCacheGuid(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

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

    move-result-object v2

    iget-object v4, p0, Lcom/appyet/mobile/manager/at;->a:Lcom/appyet/mobile/g/a;

    iget-object v4, v4, Lcom/appyet/mobile/g/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/appyet/mobile/manager/at;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v2}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    const-string v4, "FeedId"

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

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

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/appyet/mobile/manager/at;->b:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->b()Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0
.end method
