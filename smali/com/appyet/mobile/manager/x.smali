.class final Lcom/appyet/mobile/manager/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/x;->a:Lcom/appyet/mobile/manager/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/manager/x;->a:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/x;->a:Lcom/appyet/mobile/manager/bo;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/x;->a:Lcom/appyet/mobile/manager/bo;

    invoke-static {v2}, Lcom/appyet/mobile/manager/bo;->c(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "UPDATE FeedItem SET IsRead = 1 WHERE IsStar = 0 AND IsRead <> 1"

    new-array v2, v4, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appyet/mobile/manager/x;->a:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/manager/bo;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v2, "UPDATE FeedItem SET IsRead = 1 WHERE IsRead <> 1"

    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "UPDATE Feed SET UnreadCount = 0 WHERE UnreadCount <> 0"

    new-array v2, v4, [Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
