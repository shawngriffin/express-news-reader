.class final Lcom/appyet/mobile/activity/eb;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureStatus(Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureStatus(Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V
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

    invoke-direct {p0}, Lcom/appyet/mobile/activity/eb;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->q(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/view/viewflow/ViewFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v1, v2, :cond_0

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->p(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/activity/eb;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v1, v1, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v2, 0x7f0b017b

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
