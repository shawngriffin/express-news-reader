.class final Lcom/appyet/mobile/activity/q;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Lcom/appyet/mobile/data/FeedItem;

.field private b:Landroid/view/View;

.field private synthetic c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Landroid/view/View;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput-object p3, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    iput-object p2, p0, Lcom/appyet/mobile/activity/q;->b:Landroid/view/View;

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsQueued()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setIsQueued(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    iget-object v2, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getIsQueued()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/data/FeedItem;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/q;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->q(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLinkMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v1, 0x7f0b00da

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/view/viewflow/ViewFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getIsQueued()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->p(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v2, v2, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    iget-object v3, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLinkMD5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/manager/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->e()Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->e()Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->f()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    iget-object v1, p0, Lcom/appyet/mobile/activity/q;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/e;->a(Lcom/appyet/mobile/data/FeedItem;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->i()V

    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    const-class v2, Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/q;->c:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
