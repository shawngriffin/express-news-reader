.class final Lcom/appyet/mobile/activity/di;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/MainActivity;


# direct methods
.method synthetic constructor <init>(Lcom/appyet/mobile/activity/MainActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appyet/mobile/activity/di;-><init>(Lcom/appyet/mobile/activity/MainActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/appyet/mobile/activity/MainActivity;B)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/di;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    return-void
.end method

.method private varargs c()Ljava/lang/Boolean;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/di;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/MainActivity;->a(Lcom/appyet/mobile/activity/MainActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/activity/di;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/MainActivity;->a(Lcom/appyet/mobile/activity/MainActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->G()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->g(Ljava/util/List;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/di;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/di;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/MainActivity;->e(Lcom/appyet/mobile/activity/MainActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/appyet/mobile/activity/di;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/MainActivity;->d(Lcom/appyet/mobile/activity/MainActivity;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/di;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-virtual {v0, v4}, Lcom/appyet/mobile/activity/MainActivity;->setResult(I)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/di;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/MainActivity;->a(Lcom/appyet/mobile/activity/MainActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    invoke-virtual {v0, v3, v3, v3}, Lcom/appyet/mobile/manager/bl;->a(ZZZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/di;->a:Lcom/appyet/mobile/activity/MainActivity;

    iget-object v1, p0, Lcom/appyet/mobile/activity/di;->a:Lcom/appyet/mobile/activity/MainActivity;

    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
