.class final Lcom/appyet/mobile/manager/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/bz;->a:Lcom/appyet/mobile/manager/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/bz;->a:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFileCacheDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const-string v1, "DELETE FROM FileCache WHERE CacheGuid NOT IN (SELECT CacheGuid FROM FeedItem WHERE IsDeleted = 0 AND CacheGuid IS NOT NULL UNION ALL SELECT CacheGuid FROM Feed WHERE CacheGuid IS NOT NULL)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
