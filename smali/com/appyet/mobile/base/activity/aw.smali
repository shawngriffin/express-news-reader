.class final Lcom/appyet/mobile/base/activity/aw;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:I

.field private b:Lcom/appyet/mobile/data/FeedItem;

.field private synthetic c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/aw;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput p2, p0, Lcom/appyet/mobile/base/activity/aw;->a:I

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->b:Lcom/appyet/mobile/data/FeedItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->b:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsStar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->b:Lcom/appyet/mobile/data/FeedItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setIsStar(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/aw;->b:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/mobile/manager/bo;->a(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->b:Lcom/appyet/mobile/data/FeedItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setIsStar(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/aw;->b:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/mobile/manager/bo;->a(JZ)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->b:Lcom/appyet/mobile/data/FeedItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setIsRead(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/aw;->b:Lcom/appyet/mobile/data/FeedItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/data/FeedItem;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/aw;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 15

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget v1, p0, Lcom/appyet/mobile/base/activity/aw;->a:I

    invoke-static {v0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->b:Lcom/appyet/mobile/data/FeedItem;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->b:Lcom/appyet/mobile/data/FeedItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget v1, p0, Lcom/appyet/mobile/base/activity/aw;->a:I

    invoke-static {v0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0d0058

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/aw;->b:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getIsStar()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->b:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d004f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ad()Lcom/appyet/mobile/manager/ax;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    const/4 v1, 0x0

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
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v5, v0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    const/4 v6, 0x0

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
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/aw;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    return-void
.end method
