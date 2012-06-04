.class final Lcom/appyet/mobile/manager/cd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/Feed;

.field private synthetic b:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/Feed;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/cd;->b:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/cd;->a:Lcom/appyet/mobile/data/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/appyet/mobile/manager/cd;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const-string v1, "DELETE FROM FeedItem WHERE FeedId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appyet/mobile/manager/cd;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appyet/mobile/manager/cd;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/cd;->a:Lcom/appyet/mobile/data/Feed;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/appyet/mobile/manager/cd;->b:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->b()Z

    const/4 v0, 0x0

    return-object v0
.end method
