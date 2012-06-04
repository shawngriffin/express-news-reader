.class final Lcom/appyet/mobile/manager/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/Category;

.field private synthetic b:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/Category;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/z;->b:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/z;->a:Lcom/appyet/mobile/data/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/z;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE FeedItem SET IsDeleted = 1, Author = NULL, CommentsLink = NULL, Description = NULL, EnclosureCurrentPosition = NULL, EnclosureDuration = NULL, EnclosureLength = NULL, EnclosureLink = NULL, EnclosureType = NULL, Title = \'\', Thumbnail = NULL, Snippet = NULL, Link = NULL, Article = NULL WHERE IsStar = 0 AND IsDeleted <> 1 AND FeedId IN (SELECT FeedId FROM Feed WHERE CategoryId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/z;->a:Lcom/appyet/mobile/data/Category;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appyet/mobile/manager/z;->b:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/manager/z;->a:Lcom/appyet/mobile/data/Category;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/manager/bo;J)V

    const/4 v0, 0x0

    return-object v0
.end method
