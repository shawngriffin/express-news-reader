.class final Lcom/appyet/mobile/base/activity/bc;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Lcom/appyet/mobile/data/FeedItem;

.field private b:I

.field private synthetic c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/bc;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput p2, p0, Lcom/appyet/mobile/base/activity/bc;->b:I

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->a:Lcom/appyet/mobile/data/FeedItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->a:Lcom/appyet/mobile/data/FeedItem;

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setArticleStatus(Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/bc;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->a:Lcom/appyet/mobile/data/FeedItem;

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setArticleStatus(Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/bc;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/bc;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 3

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget v1, p0, Lcom/appyet/mobile/base/activity/bc;->b:I

    invoke-static {v0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->a:Lcom/appyet/mobile/data/FeedItem;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->a:Lcom/appyet/mobile/data/FeedItem;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget v1, p0, Lcom/appyet/mobile/base/activity/bc;->b:I

    invoke-static {v0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/bc;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v1, v2, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f020009

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v1, 0x7f0b017c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bc;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    return-void
.end method
