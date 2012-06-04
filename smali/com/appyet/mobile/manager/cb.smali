.class final Lcom/appyet/mobile/manager/cb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/cb;->b:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/cb;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/appyet/mobile/manager/cb;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getFileCacheDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/mobile/manager/cb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FileCache;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
