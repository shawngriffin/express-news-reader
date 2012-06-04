.class final Lcom/appyet/mobile/manager/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/Feed;

.field private synthetic b:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

.field private synthetic c:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/Feed;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/ak;->c:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/ak;->a:Lcom/appyet/mobile/data/Feed;

    iput-object p3, p0, Lcom/appyet/mobile/manager/ak;->b:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 9

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/manager/ak;->c:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/ak;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const-string v1, "UPDATE FeedItem SET EnclosureStatus = ? WHERE FeedId = ? AND EnclosureStatus <> ? AND EnclosureLink IS NOT NULL"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/appyet/mobile/manager/ak;->b:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/appyet/mobile/manager/ak;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/appyet/mobile/manager/ak;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    sub-long/2addr v1, v3

    const-string v3, "UPDATE FeedItem SET EnclosureStatus = ? WHERE EnclosureStatus <> ? AND PubDate > ? AND EnclosureLink IS NOT NULL"

    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/appyet/mobile/manager/ak;->b:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v5}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    sget-object v5, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v5}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-interface {v0, v3, v4}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/appyet/mobile/manager/ak;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const-string v1, "UPDATE FeedItem SET EnclosureStatus = ? WHERE EnclosureStatus <> ? AND IsRead = 0 AND EnclosureLink IS NOT NULL"

    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/appyet/mobile/manager/ak;->b:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/appyet/mobile/manager/ak;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x3

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    const-string v1, "UPDATE FeedItem SET EnclosureStatus = ? WHERE EnclosureStatus <> ? AND IsStar = 1 AND EnclosureLink IS NOT NULL"

    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/appyet/mobile/manager/ak;->b:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/appyet/mobile/manager/ak;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x4

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, "UPDATE FeedItem SET EnclosureStatus = ? WHERE EnclosureStatus <> ? AND EnclosureLink IS NOT NULL"

    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/appyet/mobile/manager/ak;->b:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method
