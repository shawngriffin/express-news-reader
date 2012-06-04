.class final Lcom/appyet/mobile/base/activity/ag;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

.field private synthetic b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/ag;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput-object p2, p0, Lcom/appyet/mobile/base/activity/ag;->a:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    return-void
.end method

.method private varargs a([Lcom/appyet/mobile/data/Category;)Ljava/lang/Long;
    .locals 3

    const/4 v0, 0x0

    aget-object v1, p1, v0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ag;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/ag;->a:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/data/Category;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v0

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

    invoke-direct {p0, p1}, Lcom/appyet/mobile/base/activity/ag;->a([Lcom/appyet/mobile/data/Category;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ag;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Long;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ag;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ag;->a:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ag;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v1, 0x7f0b017c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ag;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->d(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    return-void
.end method
