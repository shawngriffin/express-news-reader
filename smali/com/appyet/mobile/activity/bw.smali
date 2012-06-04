.class final Lcom/appyet/mobile/activity/bw;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Lcom/appyet/mobile/data/FeedItem;

.field private synthetic b:Lcom/appyet/mobile/activity/PlayListActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/activity/PlayListActivity;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/bw;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput-object p2, p0, Lcom/appyet/mobile/activity/bw;->a:Lcom/appyet/mobile/data/FeedItem;

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/activity/bw;->a:Lcom/appyet/mobile/data/FeedItem;

    iget-object v0, p0, Lcom/appyet/mobile/activity/bw;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsQueued()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/FeedItem;->setIsQueued(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/bw;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/activity/bw;->a:Lcom/appyet/mobile/data/FeedItem;

    iget-object v2, p0, Lcom/appyet/mobile/activity/bw;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getIsQueued()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/data/FeedItem;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/bw;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/bw;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->f(Lcom/appyet/mobile/activity/PlayListActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    :try_start_0
    sget-object v0, Lcom/appyet/mobile/activity/PlayListActivity;->c:Lcom/appyet/mobile/activity/bo;

    sget-object v1, Lcom/appyet/mobile/activity/bo;->a:Lcom/appyet/mobile/activity/bo;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/bw;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsQueued()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/bw;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    iget-object v1, p0, Lcom/appyet/mobile/activity/bw;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/n;->remove(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/bw;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/n;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/bw;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->e(Lcom/appyet/mobile/activity/PlayListActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
