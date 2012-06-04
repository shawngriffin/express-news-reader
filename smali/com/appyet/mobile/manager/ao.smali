.class final Lcom/appyet/mobile/manager/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/appyet/mobile/data/FeedItem;

.field private synthetic c:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;ZLcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/ao;->c:Lcom/appyet/mobile/manager/bo;

    iput-boolean p2, p0, Lcom/appyet/mobile/manager/ao;->a:Z

    iput-object p3, p0, Lcom/appyet/mobile/manager/ao;->b:Lcom/appyet/mobile/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/appyet/mobile/manager/ao;->c:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v0, "1"

    iget-boolean v2, p0, Lcom/appyet/mobile/manager/ao;->a:Z

    if-nez v2, :cond_0

    const-string v0, "0"

    :cond_0
    const-string v2, "UPDATE FeedItem SET IsRead = ? WHERE FeedItemId = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/appyet/mobile/manager/ao;->b:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appyet/mobile/manager/ao;->c:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/manager/ao;->b:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeed()Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;J)V

    const/4 v0, 0x0

    return-object v0
.end method
