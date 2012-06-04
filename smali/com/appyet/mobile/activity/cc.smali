.class final Lcom/appyet/mobile/activity/cc;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Lcom/appyet/mobile/data/FeedItem;

.field private synthetic b:Lcom/appyet/mobile/activity/PlayListActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/activity/PlayListActivity;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/cc;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput-object p2, p0, Lcom/appyet/mobile/activity/cc;->a:Lcom/appyet/mobile/data/FeedItem;

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/cc;->a:Lcom/appyet/mobile/data/FeedItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/cc;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/cc;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/cc;->a:Lcom/appyet/mobile/data/FeedItem;

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureStatus(Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cc;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cc;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/cc;->a:Lcom/appyet/mobile/data/FeedItem;

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureStatus(Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cc;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cc;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/cc;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cc;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->f(Lcom/appyet/mobile/activity/PlayListActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cc;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/n;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cc;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->b()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cc;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/cc;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    const v1, 0x7f0b017b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/cc;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->e(Lcom/appyet/mobile/activity/PlayListActivity;)V

    return-void
.end method
