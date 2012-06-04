.class final Lcom/appyet/mobile/manager/bw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/Widget;

.field private synthetic b:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;Lcom/appyet/mobile/data/Widget;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/bw;->b:Lcom/appyet/mobile/manager/bo;

    iput-object p2, p0, Lcom/appyet/mobile/manager/bw;->a:Lcom/appyet/mobile/data/Widget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bw;->b:Lcom/appyet/mobile/manager/bo;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;)Lcom/appyet/mobile/data/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getWidgetDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bw;->a:Lcom/appyet/mobile/data/Widget;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Widget;->getWidgetId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/appyet/mobile/manager/bw;->a:Lcom/appyet/mobile/data/Widget;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    const/4 v0, 0x0

    return-object v0
.end method
