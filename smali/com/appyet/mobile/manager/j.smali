.class final Lcom/appyet/mobile/manager/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/j;->a:Lcom/appyet/mobile/manager/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/j;->a:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const-string v1, "UPDATE FeedItem SET IsDeleted = 1, Author = NULL, CommentsLink = NULL, Description = NULL, EnclosureCurrentPosition = NULL, EnclosureDuration = NULL, EnclosureLength = NULL, EnclosureLink = NULL, EnclosureType = NULL, Title = \'\', Thumbnail = NULL, Snippet = NULL, Link = NULL, Article = NULL WHERE IsDeleted <> 1 AND IsStar = 0 AND IsRead = 1"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appyet/mobile/manager/j;->a:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/manager/bo;)V

    const/4 v0, 0x0

    return-object v0
.end method
