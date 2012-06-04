.class final Lcom/appyet/mobile/base/activity/ax;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Lcom/appyet/mobile/data/FeedItem;

.field private b:I

.field private synthetic c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/ax;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput p2, p0, Lcom/appyet/mobile/base/activity/ax;->b:I

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->a:Lcom/appyet/mobile/data/FeedItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setIsRead(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/ax;->a:Lcom/appyet/mobile/data/FeedItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/data/FeedItem;Z)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->a:Lcom/appyet/mobile/data/FeedItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setIsRead(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/ax;->a:Lcom/appyet/mobile/data/FeedItem;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/data/FeedItem;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/ax;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 15

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget v2, p0, Lcom/appyet/mobile/base/activity/ax;->b:I

    invoke-static {v0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->a:Lcom/appyet/mobile/data/FeedItem;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->a:Lcom/appyet/mobile/data/FeedItem;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget v2, p0, Lcom/appyet/mobile/base/activity/ax;->b:I

    invoke-static {v0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0d004f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ad()Lcom/appyet/mobile/manager/ax;

    move-result-object v0

    sget-object v2, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/ax;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v6

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/appyet/mobile/manager/bn;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v5, v0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v5 .. v14}, Lcom/appyet/mobile/manager/bn;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    move v6, v1

    goto :goto_1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ax;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    return-void
.end method
