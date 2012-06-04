.class public final Lcom/appyet/mobile/manager/bo;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:Lcom/appyet/mobile/data/DatabaseHelper;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Author"

    aput-object v1, v0, v3

    const-string v1, "CommentsLink"

    aput-object v1, v0, v4

    const-string v1, "EnclosureCurrentPosition"

    aput-object v1, v0, v5

    const-string v1, "EnclosureDuration"

    aput-object v1, v0, v6

    const-string v1, "EnclosureLength"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "EnclosureLink"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EnclosureType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FeedId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FeedItemId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "IsDeleted"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "IsRead"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "IsStar"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Link"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "PubDate"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Key"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ArticleStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "EnclosureStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "IsQueued"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "QueueOrder"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/appyet/mobile/manager/bo;->c:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "FeedId"

    aput-object v1, v0, v3

    const-string v1, "FeedItemId"

    aput-object v1, v0, v4

    const-string v1, "IsDeleted"

    aput-object v1, v0, v5

    const-string v1, "IsRead"

    aput-object v1, v0, v6

    const-string v1, "IsStar"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ArticleStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EnclosureStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IsQueued"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/appyet/mobile/manager/bo;->d:[Ljava/lang/String;

    iput-object p1, p0, Lcom/appyet/mobile/manager/bo;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/mobile/manager/bo;J)V
    .locals 5

    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const-string v1, "UPDATE Feed SET UnreadCount = (SELECT COUNT(1) FROM FeedItem WHERE FeedId = ? and IsRead = 0 and IsDeleted = 0), TotalCount = (SELECT COUNT(1) FROM FeedItem WHERE FeedId = ? AND IsDeleted = 0) WHERE FeedId = ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private a(Lcom/j256/ormlite/stmt/QueryBuilder;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appyet/mobile/manager/af;->a:[I

    iget-object v1, p0, Lcom/appyet/mobile/manager/bo;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->Y()Lcom/appyet/mobile/context/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/context/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "IsStar DESC, IsRead ASC, PubDate DESC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_1
    const-string v0, "IsStar DESC, IsRead DESC, PubDate DESC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_2
    const-string v0, "IsStar DESC, PubDate ASC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_3
    const-string v0, "IsStar DESC, PubDate DESC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_4
    const-string v0, "IsStar DESC, CreatedDate ASC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_5
    const-string v0, "IsStar DESC, CreatedDate DESC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_6
    const-string v0, "IsStar DESC, Title ASC, PubDate DESC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/appyet/mobile/manager/af;->a:[I

    iget-object v1, p0, Lcom/appyet/mobile/manager/bo;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->Y()Lcom/appyet/mobile/context/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/context/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_7
    const-string v0, "IsRead ASC, PubDate DESC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_8
    const-string v0, "IsRead DESC, PubDate DESC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_9
    const-string v0, "PubDate ASC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_a
    const-string v0, "PubDate DESC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_b
    const-string v0, "CreatedDate ASC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_c
    const-string v0, "CreatedDate DESC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_d
    const-string v0, "Title ASC, PubDate DESC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private a(Lcom/j256/ormlite/stmt/Where;)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "IsRead"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/appyet/mobile/manager/bo;)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const-string v1, "UPDATE Feed SET UnreadCount = (SELECT COUNT(1) FROM FeedItem WHERE FeedItem.FeedId = Feed.FeedId and IsRead = 0 and IsDeleted = 0), TotalCount = (SELECT COUNT(1) FROM FeedItem WHERE FeedItem.FeedId = Feed.FeedId AND IsDeleted = 0)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static synthetic b(Lcom/appyet/mobile/manager/bo;J)V
    .locals 5

    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const-string v1, "UPDATE Feed SET UnreadCount = (SELECT COUNT(1) FROM FeedItem WHERE FeedItem.FeedId = Feed.FeedId and IsRead = 0 and IsDeleted = 0), TotalCount = (SELECT COUNT(1) FROM FeedItem WHERE FeedItem.FeedId = Feed.FeedId AND IsDeleted = 0) WHERE CategoryId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private b(Lcom/j256/ormlite/stmt/QueryBuilder;)V
    .locals 2

    sget-object v0, Lcom/appyet/mobile/manager/af;->b:[I

    iget-object v1, p0, Lcom/appyet/mobile/manager/bo;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->Z()Lcom/appyet/mobile/context/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/context/l;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "PubDate ASC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_1
    const-string v0, "PubDate DESC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_2
    const-string v0, "CreatedDate ASC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_3
    const-string v0, "CreatedDate DESC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_4
    const-string v0, "Title ASC, PubDate DESC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_5
    const-string v0, "QueueOrder ASC"

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic c(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method

.method private x()Ljava/util/List;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(IIZ)I
    .locals 7

    :try_start_0
    new-instance v4, Lcom/appyet/mobile/manager/bp;

    invoke-direct {v4, p0}, Lcom/appyet/mobile/manager/bp;-><init>(Lcom/appyet/mobile/manager/bo;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v6

    new-instance v0, Lcom/appyet/mobile/manager/ca;

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/appyet/mobile/manager/ca;-><init>(Lcom/appyet/mobile/manager/bo;IZLcom/appyet/mobile/manager/bp;I)V

    invoke-static {v6, v0}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    iget v0, v4, Lcom/appyet/mobile/manager/bp;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final a(J)Lcom/appyet/mobile/data/Category;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getCategoryDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/appyet/mobile/data/FeedItem;)Lcom/appyet/mobile/data/FeedItem;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/appyet/mobile/data/FeedItem;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getArticle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appyet/mobile/data/FeedItem;->setArticle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;)Ljava/util/List;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "ArticleStatus"

    sget-object v4, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "IsDeleted"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "FeedId"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "IsDeleted"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "FeedId"

    invoke-virtual {v4, v5, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    iget-object v4, p0, Lcom/appyet/mobile/manager/bo;->c:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {p0, v2}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-direct {p0, v3}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/Where;)V

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "CategoryId"

    invoke-virtual {v3, v4, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "IsDeleted"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v6, "FeedId"

    invoke-virtual {v5, v6, v2}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bo;->c:[Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {p0, v3}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-direct {p0, v4}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/Where;)V

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getCategoryDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const-string v1, "Name"

    invoke-interface {v0, v1, p1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/by;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/manager/by;-><init>(Lcom/appyet/mobile/manager/bo;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(JZ)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/an;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/appyet/mobile/manager/an;-><init>(Lcom/appyet/mobile/manager/bo;ZJ)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final a(Lcom/appyet/mobile/data/Category;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/u;

    invoke-direct {v1, p0, p2, p1}, Lcom/appyet/mobile/manager/u;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;Lcom/appyet/mobile/data/Category;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Lcom/appyet/mobile/data/Category;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/al;

    invoke-direct {v1, p0, p2, p1}, Lcom/appyet/mobile/manager/al;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;Lcom/appyet/mobile/data/Category;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Lcom/appyet/mobile/data/Feed;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/t;

    invoke-direct {v1, p0, p1, p2}, Lcom/appyet/mobile/manager/t;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/Feed;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Lcom/appyet/mobile/data/Feed;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/ak;

    invoke-direct {v1, p0, p1, p2}, Lcom/appyet/mobile/manager/ak;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/Feed;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Lcom/appyet/mobile/data/FeedItem;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/p;

    invoke-direct {v1, p0, p2, p1}, Lcom/appyet/mobile/manager/p;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/lang/String;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Lcom/appyet/mobile/data/FeedItem;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/ai;

    invoke-direct {v1, p0, p2, p1}, Lcom/appyet/mobile/manager/ai;-><init>(Lcom/appyet/mobile/manager/bo;ZLcom/appyet/mobile/data/FeedItem;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Ljava/io/File;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach database \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' as V2DB"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "INSERT INTO Category (CategoryId, Name, \'Order\', IsExpand) SELECT CategoryId, Name, \'Order\', IsExpand FROM V2DB.Category WHERE V2DB.Category.CategoryId > 0;"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "INSERT INTO Feed (FeedId, CategoryId, Title, Link, IsSkipAutoUpdate, HttpAuthUserName, HttpAuthPassword, IsDownloadNewArticle, IsDownloadNewEnclosure, PubDate, TotalCount, UnreadCount, WebLink) SELECT FeedId, CategoryId, Title, FeedUrl, IsSkipAutoUpdate, AuthUserName, AuthPassword, IsPrefetch, IsPrefetch, PubDate, CountTotal, CountUnread, Link FROM V2DB.Feed;"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v0, "INSERT INTO FeedItem (FeedItemId, FeedId, CommentsLink, Description, EnclosureDuration, EnclosureLength, EnclosureLink, EnclosureType, Title, Snippet, PubDate, Link, IsStar, IsRead, IsDeleted, CreatedDate, \'Key\') SELECT FeedItemId, FeedId, CommentsLink, Description, EnclosureDuration, EnclosureLength, EnclosureLink, EnclosureType, Title, Snippet, PubDate, Link, IsStar, IsRead, IsDeleted, strftime(\'%s\',\'now\'), Title||Link FROM V2DB.FeedItem;"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "UPDATE FeedItem SET ArticleStatus = \'DownloadPending\' WHERE FeedId IN (SELECT FeedId FROM Feed WHERE IsDownloadNewArticle = 1);"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "UPDATE FeedItem SET EnclosureStatus = \'DownloadCompleted\' WHERE FeedItemId IN (SELECT FeedItemId FROM V2DB.FeedItem WHERE IsPodcastDownloaded = 1);"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Meecal/Cache/Podcast"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/appyet/mobile/manager/bo;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/cache/Podcast"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/appyet/mobile/e/g;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_5

    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/appyet/mobile/manager/bo;->x()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/appyet/mobile/manager/bo;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/manager/bl;->a(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_7

    :goto_2
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DETACH database \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V

    goto :goto_3

    :catch_4
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V

    goto :goto_1

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_7
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2
.end method

.method public final a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/s;

    invoke-direct {v1, p0, p2, p1}, Lcom/appyet/mobile/manager/s;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;Ljava/lang/Long;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/ag;

    invoke-direct {v1, p0, p2, p1}, Lcom/appyet/mobile/manager/ag;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;Ljava/lang/Long;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/r;

    invoke-direct {v1, p0, p2, p1}, Lcom/appyet/mobile/manager/r;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/lang/Integer;Ljava/lang/Long;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/ab;

    invoke-direct {v1, p0, p2, p1}, Lcom/appyet/mobile/manager/ab;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final a(Lcom/appyet/mobile/c/e;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/w;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/w;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/c/e;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final a(Lcom/appyet/mobile/c/f;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/ar;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/ar;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/c/f;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final a(Lcom/appyet/mobile/c/j;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/as;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/as;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/c/j;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final a(Lcom/appyet/mobile/data/Category;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/DatabaseHelper;->getCategoryDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/appyet/mobile/data/Feed;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/appyet/mobile/data/Feed;->setCacheGuid(Ljava/lang/String;)V

    invoke-interface {v2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/appyet/mobile/data/FileCache;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/manager/cc;

    invoke-direct {v2, p0, p1}, Lcom/appyet/mobile/manager/cc;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/FileCache;)V

    invoke-static {v1, v2}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final a(Lcom/appyet/mobile/data/Widget;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/bw;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/bw;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/Widget;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/appyet/mobile/g/a;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/at;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/at;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/g/a;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/bx;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/bx;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final b(J)Lcom/appyet/mobile/data/Feed;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/appyet/mobile/data/Feed;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const-string v2, "Link"

    invoke-interface {v0, v2, p1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/Long;)Ljava/util/List;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "EnclosureStatus"

    sget-object v4, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "IsDeleted"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "FeedId"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/appyet/mobile/data/FeedItem;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/aj;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/aj;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b(Lcom/appyet/mobile/data/FeedItem;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/ao;

    invoke-direct {v1, p0, p2, p1}, Lcom/appyet/mobile/manager/ao;-><init>(Lcom/appyet/mobile/manager/bo;ZLcom/appyet/mobile/data/FeedItem;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/o;

    invoke-direct {v1, p0, p2, p1}, Lcom/appyet/mobile/manager/o;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/lang/Integer;Ljava/lang/Long;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final b()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/bz;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/manager/bz;-><init>(Lcom/appyet/mobile/manager/bo;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final b(Lcom/appyet/mobile/data/Category;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/ce;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/ce;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/Category;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final b(Lcom/appyet/mobile/data/Feed;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/cd;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/cd;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/Feed;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final b(Lcom/appyet/mobile/data/FileCache;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/DatabaseHelper;->getFileCacheDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0
.end method

.method public final b(Lcom/appyet/mobile/data/Widget;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/DatabaseHelper;->getWidgetDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "WidgetId"

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Widget;->getWidgetId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    const-string v4, "Position"

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Widget;->getPosition()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedUpdate;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->update(Lcom/j256/ormlite/stmt/PreparedUpdate;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/manager/cb;

    invoke-direct {v2, p0, p1}, Lcom/appyet/mobile/manager/cb;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final c(J)Lcom/appyet/mobile/data/FeedItem;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "ArticleStatus"

    sget-object v4, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "IsDeleted"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/appyet/mobile/data/Feed;)Ljava/util/List;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/bo;->d:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "FeedId"

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFileCacheDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "CacheGuid"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/appyet/mobile/data/Category;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/z;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/z;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/Category;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/Long;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/ad;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/ad;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/lang/Long;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/ah;

    invoke-direct {v1, p0, p2, p1}, Lcom/appyet/mobile/manager/ah;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/lang/Integer;Ljava/lang/Long;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final c(Ljava/util/List;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/au;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/au;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final d(J)Lcom/appyet/mobile/data/Widget;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getWidgetDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "WidgetId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->queryForFirst(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Widget;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getCategoryDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "IsDeleted"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "Description"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    iget-object v3, p0, Lcom/appyet/mobile/manager/bo;->c:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {p0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-direct {p0, v2}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/Where;)V

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Lcom/appyet/mobile/data/Category;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/n;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/n;-><init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/Category;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final d(Lcom/appyet/mobile/data/Feed;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0
.end method

.method public final d(Ljava/util/List;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/av;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/av;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final e()Ljava/util/List;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "EnclosureStatus"

    sget-object v4, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "IsDeleted"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(J)Ljava/util/List;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/DatabaseHelper;->getFileCacheDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "SELECT FileCache.FileCacheId, FileCache.CacheGuid, FileCache.DownloadAttempt, FileCache.DownloadStatus, FileCache.FileLink, FileCache.FileType, FileCache.FileCacheName FROM FileCache INNER JOIN FeedItem ON FileCache.CacheGuid = FeedItem.CacheGuid WHERE FileCache.DownloadStatus = \'Pending\' AND FeedItem.IsDeleted = 0 AND FeedItem.FeedId = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v4, Lcom/appyet/mobile/data/FileCache;

    invoke-direct {v4}, Lcom/appyet/mobile/data/FileCache;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/data/FileCache;->setFileCacheId(Ljava/lang/Long;)V

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/data/FileCache;->setCacheGuid(Ljava/lang/String;)V

    const/4 v5, 0x2

    aget-object v5, v0, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/data/FileCache;->setDownloadAttempt(Ljava/lang/Integer;)V

    :goto_1
    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/data/FileCache;->setDownloadStatus(Ljava/lang/String;)V

    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/data/FileCache;->setFileLink(Ljava/lang/String;)V

    const/4 v5, 0x5

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/data/FileCache;->setFileType(Ljava/lang/String;)V

    const/4 v5, 0x6

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Lcom/appyet/mobile/data/FileCache;->setFileCacheName(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/data/FileCache;->setDownloadAttempt(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_2
.end method

.method public final e(Lcom/appyet/mobile/data/Category;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/DatabaseHelper;->getCategoryDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0
.end method

.method public final e(Ljava/util/List;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/aw;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/aw;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(J)Ljava/util/List;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "IsDeleted"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "FeedId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bo;->c:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {p0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    const-string v3, "CreatedDate DESC"

    invoke-virtual {v1, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Ljava/util/List;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/aq;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/aq;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getWidgetDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(J)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/ap;

    invoke-direct {v1, p0, p1, p2}, Lcom/appyet/mobile/manager/ap;-><init>(Lcom/appyet/mobile/manager/bo;J)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final g(Ljava/util/List;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/v;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/v;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFileCacheDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/appyet/mobile/manager/l;-><init>(Lcom/appyet/mobile/manager/bo;J)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final h(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/y;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/y;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final i()Ljava/util/List;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFileCacheDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "DownloadStatus"

    sget-object v4, Lcom/appyet/mobile/data/FileCache$DownloadStatusEnum;->Pending:Lcom/appyet/mobile/data/FileCache$DownloadStatusEnum;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/q;

    invoke-direct {v1, p0, p1, p2}, Lcom/appyet/mobile/manager/q;-><init>(Lcom/appyet/mobile/manager/bo;J)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final i(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/k;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/k;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final j()Ljava/util/List;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "IsDeleted"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    iget-object v3, p0, Lcom/appyet/mobile/manager/bo;->c:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {p0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-direct {p0, v2}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/Where;)V

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/m;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/m;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final k()Ljava/util/List;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "IsDeleted"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v6, "PubDate"

    invoke-virtual {v5, v6, v3, v2}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bo;->c:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {p0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-direct {p0, v4}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/Where;)V

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k(Ljava/util/List;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/am;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/am;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final l()Ljava/util/List;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "IsDeleted"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "EnclosureLink"

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    iget-object v3, p0, Lcom/appyet/mobile/manager/bo;->c:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {p0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-direct {p0, v2}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/Where;)V

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/ac;

    invoke-direct {v1, p0, p1}, Lcom/appyet/mobile/manager/ac;-><init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final m()Ljava/util/List;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "IsDeleted"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "EnclosureLink"

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bo;->c:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {p0, v1}, Lcom/appyet/mobile/manager/bo;->b(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Ljava/util/List;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "IsDeleted"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "EnclosureLink"

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "IsQueued"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bo;->c:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {p0, v1}, Lcom/appyet/mobile/manager/bo;->b(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Ljava/util/List;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "IsDeleted"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "IsStar"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    iget-object v3, p0, Lcom/appyet/mobile/manager/bo;->c:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {p0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-direct {p0, v2}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/Where;)V

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Ljava/util/List;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "IsDeleted"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "IsRead"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bo;->c:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {p0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Ljava/util/List;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "IsDeleted"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bo;->c:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {p0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    const-string v3, "CreatedDate DESC"

    invoke-virtual {v1, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const-class v1, Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-static {v0, v1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/DatabaseHelper;

    iput-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    return-void
.end method

.method public final s()V
    .locals 7

    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->y:Lcom/appyet/mobile/manager/cg;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/cg;->b()Lcom/appyet/mobile/c/k;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    const-string v0, "SELECT sum(UnreadCount), sum(TotalCount) FROM Feed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    iput v3, v1, Lcom/appyet/mobile/c/k;->a:I

    :goto_0
    const/4 v3, 0x1

    aget-object v3, v0, v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    iput v0, v1, Lcom/appyet/mobile/c/k;->b:I

    :goto_1
    const-string v0, "SELECT count(1), sum(IsRead) FROM FeedItem WHERE IsDeleted=0 AND IsStar=1"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/appyet/mobile/c/k;->d:I

    const/4 v3, 0x1

    aget-object v3, v0, v3

    if-nez v3, :cond_2

    const/4 v0, 0x0

    iput v0, v1, Lcom/appyet/mobile/c/k;->c:I

    :goto_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT count(1), sum(IsRead) FROM FeedItem WHERE IsDeleted=0 AND PubDate>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/appyet/mobile/c/k;->h:I

    const/4 v3, 0x1

    aget-object v3, v0, v3

    if-nez v3, :cond_3

    const/4 v0, 0x0

    iput v0, v1, Lcom/appyet/mobile/c/k;->g:I

    :goto_3
    const-string v0, "SELECT count(1), sum(IsRead) FROM FeedItem WHERE IsDeleted=0 AND EnclosureLink IS NOT NULL"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/appyet/mobile/c/k;->f:I

    const/4 v2, 0x1

    aget-object v2, v0, v2

    if-nez v2, :cond_4

    const/4 v0, 0x0

    iput v0, v1, Lcom/appyet/mobile/c/k;->e:I

    :goto_4
    return-void

    :cond_0
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/appyet/mobile/c/k;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_4

    :cond_1
    const/4 v3, 0x1

    :try_start_1
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/appyet/mobile/c/k;->b:I

    goto/16 :goto_1

    :cond_2
    iget v3, v1, Lcom/appyet/mobile/c/k;->d:I

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int v0, v3, v0

    iput v0, v1, Lcom/appyet/mobile/c/k;->c:I

    goto/16 :goto_2

    :cond_3
    iget v3, v1, Lcom/appyet/mobile/c/k;->h:I

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int v0, v3, v0

    iput v0, v1, Lcom/appyet/mobile/c/k;->g:I

    goto :goto_3

    :cond_4
    iget v2, v1, Lcom/appyet/mobile/c/k;->f:I

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int v0, v2, v0

    iput v0, v1, Lcom/appyet/mobile/c/k;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public final t()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/aa;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/manager/aa;-><init>(Lcom/appyet/mobile/manager/bo;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final u()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/x;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/manager/x;-><init>(Lcom/appyet/mobile/manager/bo;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final v()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/j;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/manager/j;-><init>(Lcom/appyet/mobile/manager/bo;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final w()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bo;->b:Lcom/appyet/mobile/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/ae;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/manager/ae;-><init>(Lcom/appyet/mobile/manager/bo;)V

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
