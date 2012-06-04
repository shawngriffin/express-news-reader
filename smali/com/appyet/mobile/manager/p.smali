.class final Lcom/appyet/mobile/manager/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/appyet/mobile/data/FeedItem;

.field private synthetic c:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Ljava/lang/String;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/p;->c:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/p;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/appyet/mobile/manager/p;->b:Lcom/appyet/mobile/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/appyet/mobile/manager/p;->c:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const-string v1, "UPDATE FeedItem SET Article = ?, ArticleStatus = ? WHERE FeedItemId = ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appyet/mobile/manager/p;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/appyet/mobile/manager/p;->b:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
