.class final Lcom/appyet/mobile/activity/dd;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Lcom/appyet/mobile/data/FeedItem;

.field private synthetic b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/dd;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput-object p2, p0, Lcom/appyet/mobile/activity/dd;->a:Lcom/appyet/mobile/data/FeedItem;

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->a:Lcom/appyet/mobile/data/FeedItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsStar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->a:Lcom/appyet/mobile/data/FeedItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setIsStar(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/activity/dd;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/mobile/manager/bo;->a(JZ)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->a:Lcom/appyet/mobile/data/FeedItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setIsRead(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/activity/dd;->a:Lcom/appyet/mobile/data/FeedItem;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/data/FeedItem;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->a:Lcom/appyet/mobile/data/FeedItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setIsStar(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/activity/dd;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/mobile/manager/bo;->a(JZ)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->a:Lcom/appyet/mobile/data/FeedItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setIsRead(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/activity/dd;->a:Lcom/appyet/mobile/data/FeedItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/data/FeedItem;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/dd;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->q(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->p(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    const v1, 0x7f0d00d3

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/appyet/mobile/activity/dd;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getIsStar()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/dd;->b:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/view/viewflow/ViewFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appyet/mobile/activity/dd;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getIsStar()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
