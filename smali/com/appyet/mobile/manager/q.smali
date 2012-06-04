.class final Lcom/appyet/mobile/manager/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:J

.field private synthetic c:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;J)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/mobile/manager/q;->c:Lcom/appyet/mobile/manager/bo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/mobile/manager/q;->a:Z

    iput-wide p2, p0, Lcom/appyet/mobile/manager/q;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "1"

    iget-boolean v1, p0, Lcom/appyet/mobile/manager/q;->a:Z

    if-nez v1, :cond_0

    const-string v0, "0"

    :cond_0
    iget-object v1, p0, Lcom/appyet/mobile/manager/q;->c:Lcom/appyet/mobile/manager/bo;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    const-string v1, ""

    iget-object v3, p0, Lcom/appyet/mobile/manager/q;->c:Lcom/appyet/mobile/manager/bo;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bo;->c(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v3

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, " AND IsStar = 0 "

    :cond_1
    iget-wide v3, p0, Lcom/appyet/mobile/manager/q;->b:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE FeedItem SET IsRead = ? WHERE IsRead <> ? AND FeedId = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v10, [Ljava/lang/String;

    aput-object v0, v3, v7

    aput-object v0, v3, v8

    iget-wide v4, p0, Lcom/appyet/mobile/manager/q;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appyet/mobile/manager/q;->c:Lcom/appyet/mobile/manager/bo;

    iget-wide v1, p0, Lcom/appyet/mobile/manager/q;->b:J

    invoke-static {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;J)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_3
    iget-wide v3, p0, Lcom/appyet/mobile/manager/q;->b:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    sub-long/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE FeedItem SET IsRead = ? WHERE IsRead <> ? AND PubDate > ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v10, [Ljava/lang/String;

    aput-object v0, v5, v7

    aput-object v0, v5, v8

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-interface {v2, v1, v5}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appyet/mobile/manager/q;->c:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/manager/bo;)V

    goto :goto_0

    :cond_4
    iget-wide v3, p0, Lcom/appyet/mobile/manager/q;->b:J

    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE FeedItem SET IsRead = ? WHERE IsRead = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/String;

    aput-object v0, v3, v7

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appyet/mobile/manager/q;->c:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/manager/bo;)V

    goto :goto_0

    :cond_5
    iget-wide v3, p0, Lcom/appyet/mobile/manager/q;->b:J

    const-wide/16 v5, -0x3

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE FeedItem SET IsRead = ? WHERE IsRead <> ? AND IsStar = 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/String;

    aput-object v0, v3, v7

    aput-object v0, v3, v8

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appyet/mobile/manager/q;->c:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/manager/bo;)V

    goto/16 :goto_0

    :cond_6
    iget-wide v3, p0, Lcom/appyet/mobile/manager/q;->b:J

    const-wide/16 v5, -0x4

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE FeedItem SET IsRead = ? WHERE IsRead <> ? AND EnclosureLink IS NOT NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/String;

    aput-object v0, v3, v7

    aput-object v0, v3, v8

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appyet/mobile/manager/q;->c:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/manager/bo;)V

    goto/16 :goto_0
.end method
