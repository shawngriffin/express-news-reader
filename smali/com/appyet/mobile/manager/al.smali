.class final Lcom/appyet/mobile/manager/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

.field private synthetic b:Lcom/appyet/mobile/data/Category;

.field private synthetic c:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;Lcom/appyet/mobile/data/Category;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/al;->c:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/al;->a:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    iput-object p3, p0, Lcom/appyet/mobile/manager/al;->b:Lcom/appyet/mobile/data/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/appyet/mobile/manager/al;->c:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const-string v1, "UPDATE FeedItem SET EnclosureStatus = ? WHERE FeedId IN (SELECT FeedId FROM Feed WHERE CategoryId = ?) AND EnclosureStatus <> ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appyet/mobile/manager/al;->a:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/appyet/mobile/manager/al;->b:Lcom/appyet/mobile/data/Category;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
