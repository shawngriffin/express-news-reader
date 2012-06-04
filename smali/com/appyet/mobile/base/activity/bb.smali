.class final Lcom/appyet/mobile/base/activity/bb;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/bb;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bb;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/bb;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v1, v1, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->h(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/bb;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bb;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bb;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->a:Lcom/appyet/mobile/context/d;

    sget-object v1, Lcom/appyet/mobile/context/d;->g:Lcom/appyet/mobile/context/d;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bb;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->a:Lcom/appyet/mobile/context/d;

    sget-object v1, Lcom/appyet/mobile/context/d;->e:Lcom/appyet/mobile/context/d;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bb;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->finish()V

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bb;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bb;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
