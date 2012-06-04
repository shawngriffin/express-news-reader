.class final Lcom/appyet/mobile/manager/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/appyet/mobile/manager/bo;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bo;J)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/ap;->b:Lcom/appyet/mobile/manager/bo;

    iput-wide p2, p0, Lcom/appyet/mobile/manager/ap;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/ap;->b:Lcom/appyet/mobile/manager/bo;

    iget-wide v1, p0, Lcom/appyet/mobile/manager/ap;->a:J

    invoke-static {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/manager/bo;J)V

    const/4 v0, 0x0

    return-object v0
.end method
