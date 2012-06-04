.class final Lcom/appyet/mobile/manager/l;
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

    iput-object p1, p0, Lcom/appyet/mobile/manager/l;->c:Lcom/appyet/mobile/manager/bo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/mobile/manager/l;->a:Z

    iput-wide p2, p0, Lcom/appyet/mobile/manager/l;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/appyet/mobile/manager/l;->c:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v0, "1"

    iget-boolean v2, p0, Lcom/appyet/mobile/manager/l;->a:Z

    if-nez v2, :cond_0

    const-string v0, "0"

    :cond_0
    const-string v2, "UPDATE FeedItem SET IsDeleted = ?, Article = \'\', Description = \'\', Snippet = \'\', Link = \'\', Author = \'\', CommentsLink = \'\', EnclosureLink = \'\', Thumbnail = \'\' WHERE IsDeleted <> ? AND FeedId = ? AND IsStar = 0"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/appyet/mobile/manager/l;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appyet/mobile/manager/l;->c:Lcom/appyet/mobile/manager/bo;

    iget-wide v1, p0, Lcom/appyet/mobile/manager/l;->b:J

    invoke-static {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;J)V

    const/4 v0, 0x0

    return-object v0
.end method
