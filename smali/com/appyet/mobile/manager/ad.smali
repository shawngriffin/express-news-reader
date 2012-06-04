.class final Lcom/appyet/mobile/manager/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Ljava/lang/Long;

.field private synthetic b:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/ad;->b:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/ad;->a:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/manager/ad;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const-string v1, "DELETE FROM FeedItem WHERE IsDeleted = 1 AND FeedId=?"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/appyet/mobile/manager/ad;->a:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "UPDATE Feed SET StreamHash = \'\', HTTPLastModified = \'\', HTTPETag = \'\' WHERE FeedId=?"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/appyet/mobile/manager/ad;->a:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
