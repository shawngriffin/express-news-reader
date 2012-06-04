.class final Lcom/appyet/mobile/manager/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Z

.field private synthetic c:Lcom/appyet/mobile/manager/bp;

.field private synthetic d:I

.field private synthetic e:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;IZLcom/appyet/mobile/manager/bp;I)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/ca;->e:Lcom/appyet/mobile/manager/bo;

    iput p2, p0, Lcom/appyet/mobile/manager/ca;->a:I

    iput-boolean p3, p0, Lcom/appyet/mobile/manager/ca;->b:Z

    iput-object p4, p0, Lcom/appyet/mobile/manager/ca;->c:Lcom/appyet/mobile/manager/bp;

    iput p5, p0, Lcom/appyet/mobile/manager/ca;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 9

    const-wide/32 v7, 0x5265c00

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/manager/ca;->e:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iget v0, p0, Lcom/appyet/mobile/manager/ca;->a:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget v0, p0, Lcom/appyet/mobile/manager/ca;->a:I

    int-to-long v4, v0

    mul-long/2addr v4, v7

    sub-long/2addr v2, v4

    iget-boolean v0, p0, Lcom/appyet/mobile/manager/ca;->b:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(1) FROM FeedItem WHERE IsDeleted = 0 AND IsRead = 0 AND IsStar = 0 AND PubDate < "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/appyet/mobile/manager/ca;->c:Lcom/appyet/mobile/manager/bp;

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/appyet/mobile/manager/bp;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE FeedItem SET IsDeleted = 1, Author = NULL, CommentsLink = NULL, Description = NULL, EnclosureCurrentPosition = NULL, EnclosureDuration = NULL, EnclosureLength = NULL, EnclosureLink = NULL, EnclosureType = NULL, Title = \'\', Thumbnail = NULL, Snippet = NULL, Link = NULL, Article = NULL WHERE IsDeleted <> 1 AND IsRead = 0 AND IsStar = 0 AND PubDate < "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/appyet/mobile/manager/ca;->d:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget v0, p0, Lcom/appyet/mobile/manager/ca;->d:I

    int-to-long v4, v0

    mul-long/2addr v4, v7

    sub-long/2addr v2, v4

    iget-boolean v0, p0, Lcom/appyet/mobile/manager/ca;->b:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(1) FROM FeedItem WHERE IsDeleted = 0 AND IsRead = 1 AND IsStar = 0 AND PubDate < "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/appyet/mobile/manager/ca;->c:Lcom/appyet/mobile/manager/bp;

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/appyet/mobile/manager/bp;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE FeedItem SET IsDeleted = 1, Author = NULL, CommentsLink = NULL, Description = NULL, EnclosureCurrentPosition = NULL, EnclosureDuration = NULL, EnclosureLength = NULL, EnclosureLink = NULL, EnclosureType = NULL, Title = \'\', Thumbnail = NULL, Snippet = NULL, Link = NULL, Article = NULL WHERE IsDeleted <> 1 AND IsRead = 1 AND IsStar = 0 AND PubDate < "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/ca;->e:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/manager/bo;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/ca;->e:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->b()Z

    const/4 v0, 0x0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(1) FROM FeedItem WHERE IsDeleted = 0 AND IsRead = 0 AND PubDate < "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/appyet/mobile/manager/ca;->c:Lcom/appyet/mobile/manager/bp;

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/appyet/mobile/manager/bp;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE FeedItem SET IsDeleted = 1, Author = NULL, CommentsLink = NULL, Description = NULL, EnclosureCurrentPosition = NULL, EnclosureDuration = NULL, EnclosureLength = NULL, EnclosureLink = NULL, EnclosureType = NULL, Title = \'\', Thumbnail = NULL, Snippet = NULL, Link = NULL, Article = NULL WHERE IsDeleted <> 1 AND IsRead = 0 AND PubDate < "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(1) FROM FeedItem WHERE IsDeleted = 0 AND IsRead = 1 AND PubDate < "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/appyet/mobile/manager/ca;->c:Lcom/appyet/mobile/manager/bp;

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/appyet/mobile/manager/bp;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE FeedItem SET IsDeleted = 1, Author = NULL, CommentsLink = NULL, Description = NULL, EnclosureCurrentPosition = NULL, EnclosureDuration = NULL, EnclosureLength = NULL, EnclosureLink = NULL, EnclosureType = NULL, Title = \'\', Thumbnail = NULL, Snippet = NULL, Link = NULL, Article = NULL WHERE IsDeleted <> 1 AND IsRead = 1 AND PubDate < "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method
