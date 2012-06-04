.class final Lcom/appyet/mobile/manager/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/manager/e;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/e;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    const/high16 v5, 0x4348

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->e(Lcom/appyet/mobile/manager/e;)Z

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    new-instance v1, Lcom/appyet/mobile/manager/MediaProgressNotification;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v2}, Lcom/appyet/mobile/manager/e;->g(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v3}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/appyet/mobile/manager/MediaProgressNotification;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/appyet/mobile/manager/e;->a(Lcom/appyet/mobile/manager/e;Lcom/appyet/mobile/manager/MediaProgressNotification;)Lcom/appyet/mobile/manager/MediaProgressNotification;

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v1}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v2}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v1}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v2}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->g(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v1}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v2}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->b(Ljava/lang/Long;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v1}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureDuration(Ljava/lang/Integer;)V

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->g(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v1}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLinkMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->b(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v2}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v2}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v2}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v2}, Lcom/appyet/mobile/manager/e;->g(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v3, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v3}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v3

    long-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/appyet/mobile/manager/bo;->c(Ljava/lang/Long;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v2}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureLength(Ljava/lang/Integer;)V

    :cond_3
    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->g(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v1}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureStatus(Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    :cond_4
    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v1}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v2}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v1}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_5
    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->i(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/activity/PlayListActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->i(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/activity/PlayListActivity;

    move-result-object v0

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_6
    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->k()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->j(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/manager/MediaProgressNotification;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v1}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v2}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/MediaProgressNotification;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->k(Lcom/appyet/mobile/manager/e;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->i(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/activity/PlayListActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->i(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/activity/PlayListActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->i(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/activity/PlayListActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/n;->notifyDataSetChanged()V

    :cond_7
    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v2}, Lcom/appyet/mobile/manager/e;->g(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    const-class v3, Lcom/appyet/mobile/service/MediaService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/appyet/mobile/manager/e;->a(Lcom/appyet/mobile/manager/e;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->g(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bj;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v1}, Lcom/appyet/mobile/manager/e;->l(Lcom/appyet/mobile/manager/e;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
