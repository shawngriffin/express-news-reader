.class final Lcom/appyet/mobile/manager/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/v;->b:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/v;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 15

    const-string v2, "NULL"

    sget-object v0, Lcom/appyet/mobile/manager/i;->b:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/appyet/mobile/manager/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/e;

    iget-object v1, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    array-length v8, v7

    if-lez v8, :cond_1

    const/4 v1, 0x0

    aget-object v1, v7, v1

    :cond_1
    array-length v8, v7

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    const/4 v3, 0x1

    aget-object v3, v7, v3

    :cond_2
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    :goto_0
    if-eqz v1, :cond_5

    const-string v0, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appyet/mobile/manager/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/e;

    iget-object v2, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    array-length v6, v5

    if-lez v6, :cond_4

    const/4 v2, 0x0

    aget-object v2, v5, v2

    :cond_4
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    :cond_5
    if-eqz v1, :cond_1a

    const-string v0, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/appyet/mobile/manager/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/e;

    iget-object v3, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v0, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_7
    const-string v0, ""

    :goto_1
    if-eqz v0, :cond_19

    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/appyet/mobile/manager/v;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_19

    iget-object v0, p0, Lcom/appyet/mobile/manager/v;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/e;

    iget-object v0, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lcom/appyet/mobile/manager/v;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v5

    iget-object v0, p0, Lcom/appyet/mobile/manager/v;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v6

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v7

    iget-object v0, p0, Lcom/appyet/mobile/manager/v;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getCategoryDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v8

    invoke-interface {v8}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/appyet/mobile/manager/v;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v3, v0

    :cond_8
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/e;

    iget-object v1, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const-string v1, ""

    iput-object v1, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    :cond_a
    iget-object v1, v0, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v4, 0x0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_18

    :cond_c
    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_18

    iget-object v11, v0, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    if-eqz v11, :cond_18

    iget-object v11, v0, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_18

    iget-object v11, v0, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    invoke-interface {v5, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move v1, v4

    :goto_4
    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/appyet/mobile/c/e;->f:Z

    if-eqz v1, :cond_8

    const/4 v4, 0x0

    iget-object v1, v0, Lcom/appyet/mobile/c/e;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v11, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/appyet/mobile/data/Category;

    invoke-direct {v1}, Lcom/appyet/mobile/data/Category;-><init>()V

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/appyet/mobile/data/Category;->setCategoryId(Ljava/lang/Long;)V

    :goto_5
    if-nez v1, :cond_16

    new-instance v4, Lcom/appyet/mobile/data/Category;

    invoke-direct {v4}, Lcom/appyet/mobile/data/Category;-><init>()V

    iget-object v1, v0, Lcom/appyet/mobile/c/e;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/appyet/mobile/data/Category;->setName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/appyet/mobile/data/Category;->setIsExpand(Z)V

    invoke-virtual {v4, v3}, Lcom/appyet/mobile/data/Category;->setOrder(I)V

    add-int/lit8 v1, v3, 0x1

    invoke-interface {v8, v4}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v3

    const/4 v11, 0x1

    if-ne v3, v11, :cond_15

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    :goto_6
    new-instance v4, Lcom/appyet/mobile/data/Feed;

    invoke-direct {v4}, Lcom/appyet/mobile/data/Feed;-><init>()V

    iget-object v11, v0, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/appyet/mobile/c/e;->g:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/appyet/mobile/data/Feed;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lcom/appyet/mobile/data/Feed;->setCategoryId(J)V

    iget-boolean v3, v0, Lcom/appyet/mobile/c/e;->d:Z

    invoke-virtual {v4, v3}, Lcom/appyet/mobile/data/Feed;->setIsDownloadNewArticle(Z)V

    iget-boolean v0, v0, Lcom/appyet/mobile/c/e;->e:Z

    invoke-virtual {v4, v0}, Lcom/appyet/mobile/data/Feed;->setIsDownloadNewEnclosure(Z)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/appyet/mobile/data/Feed;->setCacheGuid(Ljava/lang/String;)V

    invoke-interface {v5, v4}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move v3, v1

    goto/16 :goto_3

    :cond_d
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Category;->getName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/appyet/mobile/c/e;->h:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    goto :goto_5

    :cond_f
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/appyet/mobile/manager/v;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/c/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v1, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_8
    if-nez v1, :cond_10

    invoke-interface {v5, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    const-string v1, "FeedId"

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-interface {v6, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    goto :goto_9

    :cond_12
    iget-object v0, p0, Lcom/appyet/mobile/manager/v;->b:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->b()Z

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    return-object v0

    :cond_14
    move v1, v2

    goto :goto_8

    :cond_15
    move v3, v1

    goto/16 :goto_3

    :cond_16
    move-object v14, v1

    move v1, v3

    move-object v3, v14

    goto/16 :goto_6

    :cond_17
    move-object v1, v4

    goto/16 :goto_5

    :cond_18
    move v1, v4

    goto/16 :goto_4

    :cond_19
    move-object v2, v0

    goto/16 :goto_2

    :cond_1a
    move-object v0, v1

    goto/16 :goto_1

    :cond_1b
    move-object v1, v2

    goto/16 :goto_0
.end method
