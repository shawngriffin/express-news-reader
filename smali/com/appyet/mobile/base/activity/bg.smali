.class final Lcom/appyet/mobile/base/activity/bg;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/bg;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    return-void
.end method

.method private varargs a([Lcom/appyet/mobile/data/Category;)Ljava/lang/Void;
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/base/activity/bg;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v1, v1, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/manager/bo;->c(Lcom/appyet/mobile/data/Category;)V
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

    check-cast p1, [Lcom/appyet/mobile/data/Category;

    invoke-direct {p0, p1}, Lcom/appyet/mobile/base/activity/bg;->a([Lcom/appyet/mobile/data/Category;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bg;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bg;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bg;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->d(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    return-void
.end method
