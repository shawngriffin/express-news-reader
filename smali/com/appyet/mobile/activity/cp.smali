.class final Lcom/appyet/mobile/activity/cp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appyet/mobile/view/TouchListView$DropListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/PlayListActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/PlayListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/cp;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final drop(II)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/cp;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/d/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    iget-object v2, p0, Lcom/appyet/mobile/activity/cp;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v2, v2, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/d/n;->remove(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/appyet/mobile/activity/cp;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v2, v2, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v2, v0, p2}, Lcom/appyet/mobile/d/n;->insert(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cp;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/n;->getCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/cp;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/appyet/mobile/data/FeedItem;->setQueueOrder(J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appyet/mobile/activity/an;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cp;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-direct {v0, v1}, Lcom/appyet/mobile/activity/an;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/an;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
