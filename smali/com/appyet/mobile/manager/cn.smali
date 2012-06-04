.class final Lcom/appyet/mobile/manager/cn;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Z

.field private c:Z

.field private d:Z

.field private synthetic e:Lcom/appyet/mobile/manager/bl;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/manager/bl;Ljava/lang/Long;ZZZ)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/appyet/mobile/manager/cn;->e:Lcom/appyet/mobile/manager/bl;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/cn;->a:Ljava/lang/Long;

    iput-boolean v1, p0, Lcom/appyet/mobile/manager/cn;->b:Z

    iput-boolean v1, p0, Lcom/appyet/mobile/manager/cn;->c:Z

    iput-boolean v1, p0, Lcom/appyet/mobile/manager/cn;->d:Z

    iput-object p2, p0, Lcom/appyet/mobile/manager/cn;->a:Ljava/lang/Long;

    iput-boolean p3, p0, Lcom/appyet/mobile/manager/cn;->b:Z

    iput-boolean p4, p0, Lcom/appyet/mobile/manager/cn;->c:Z

    iput-boolean p5, p0, Lcom/appyet/mobile/manager/cn;->d:Z

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/appyet/mobile/manager/cn;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/cn;->e:Lcom/appyet/mobile/manager/bl;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bl;->c()V

    :cond_0
    iget-boolean v0, p0, Lcom/appyet/mobile/manager/cn;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/manager/cn;->e:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->g(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->b()Z

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/cn;->e:Lcom/appyet/mobile/manager/bl;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cn;->a:Ljava/lang/Long;

    iget-boolean v2, p0, Lcom/appyet/mobile/manager/cn;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bl;->a(Ljava/lang/Long;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/manager/cn;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
