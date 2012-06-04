.class final Lcom/appyet/mobile/manager/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/av;->b:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/av;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/appyet/mobile/manager/av;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getWidgetDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/mobile/manager/av;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Widget;

    const-string v3, "DELETE FROM Widget WHERE WidgetId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Widget;->getWidgetId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/av;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/util/Collection;)I

    const/4 v0, 0x0

    return-object v0
.end method
