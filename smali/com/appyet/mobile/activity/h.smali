.class final Lcom/appyet/mobile/activity/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appyet/mobile/view/viewflow/ViewFlow$ViewSwitchListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSwitched(Landroid/view/View;I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0, p2}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;I)I

    iget-object v1, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-static {v1, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Lcom/appyet/mobile/data/FeedItem;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v2

    iget-object v0, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->o:Ljava/lang/Long;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getIsStar()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/data/FeedItem;->setIsRead(Z)V

    :cond_1
    sget-object v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->Update:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/data/FeedItem;->setFlag(Lcom/appyet/mobile/data/FeedItem$FlagEnum;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->J()Lcom/appyet/mobile/context/a;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/context/a;->b:Lcom/appyet/mobile/context/a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/l;->notifyDataSetChanged()V

    :cond_2
    iget-object v1, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    const v0, 0x7f0d0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;

    invoke-static {v1, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Lcom/appyet/mobile/view/scrollview/ObservableScrollView;)Lcom/appyet/mobile/view/scrollview/ObservableScrollView;

    iget-object v0, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    const v1, 0x7f0d00d5

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    const v3, 0x7f0d00d6

    invoke-virtual {v1, v3}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v3

    sget-object v4, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getDisplayMode()Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    move-result-object v1

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;->None:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;->Article:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    invoke-virtual {v1, v3}, Lcom/appyet/mobile/data/FeedItem;->setDisplayMode(Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;)V

    :cond_3
    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getDisplayMode()Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    move-result-object v1

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;->Article:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    if-ne v1, v3, :cond_5

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    const v1, 0x7f0d00d3

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getIsStar()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->e(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->f(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    :cond_4
    iget-object v0, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->g(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    iget-object v1, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-virtual {v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/h;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v2, v2, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FeedItemDetailActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_5
    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_6
    const/16 v3, 0x8

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
