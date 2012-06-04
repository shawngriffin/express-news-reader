.class final Lcom/appyet/mobile/activity/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/ImageView;

.field private synthetic b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iput-object p2, p0, Lcom/appyet/mobile/activity/bk;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getDisplayMode()Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;->Article:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;->Feed:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setDisplayMode(Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/bk;->a:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/view/viewflow/ViewFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/view/TextViewEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/TextViewEx;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-virtual {v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v3, v3, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    new-instance v4, Lcom/appyet/mobile/f/c;

    iget-object v5, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v5, v5, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v6, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v6, v6, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v6, v6, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v6}, Lcom/appyet/mobile/manager/f;->r()I

    move-result v6

    iget-object v7, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v7, v7, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v7, v7, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v7}, Lcom/appyet/mobile/manager/f;->p()Z

    move-result v7

    invoke-direct {v4, v5, v1, v6, v7}, Lcom/appyet/mobile/f/c;-><init>(Lcom/appyet/mobile/context/ApplicationContext;IIZ)V

    invoke-virtual {v2, v3, v4}, Lcom/appyet/mobile/data/FeedItem;->getDescriptionSpanned(Lcom/appyet/mobile/context/ApplicationContext;Landroid/text/Html$ImageGetter;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/TextViewEx;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->f()V

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;->Article:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setDisplayMode(Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/bk;->a:Landroid/widget/ImageView;

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/view/viewflow/ViewFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/view/TextViewEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/TextViewEx;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v1, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-virtual {v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v3, v3, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    new-instance v4, Lcom/appyet/mobile/f/c;

    iget-object v5, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v5, v5, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v6, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v6, v6, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v6, v6, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v6}, Lcom/appyet/mobile/manager/f;->r()I

    move-result v6

    iget-object v7, p0, Lcom/appyet/mobile/activity/bk;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v7, v7, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v7, v7, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v7}, Lcom/appyet/mobile/manager/f;->p()Z

    move-result v7

    invoke-direct {v4, v5, v1, v6, v7}, Lcom/appyet/mobile/f/c;-><init>(Lcom/appyet/mobile/context/ApplicationContext;IIZ)V

    invoke-virtual {v2, v3, v4}, Lcom/appyet/mobile/data/FeedItem;->getArticleSpanned(Lcom/appyet/mobile/context/ApplicationContext;Landroid/text/Html$ImageGetter;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/TextViewEx;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->f()V

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method
