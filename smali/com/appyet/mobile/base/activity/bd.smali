.class final Lcom/appyet/mobile/base/activity/bd;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/bd;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    return-void
.end method

.method private varargs a([Lcom/appyet/mobile/data/Feed;)Ljava/lang/Long;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    aget-object v1, p1, v0

    :try_start_0
    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getTotalCount()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getUnreadCount()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appyet/mobile/data/Feed;->setTotalCount(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appyet/mobile/data/Feed;->setUnreadCount(J)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bd;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/appyet/mobile/manager/bo;->h(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/appyet/mobile/data/Feed;

    invoke-direct {p0, p1}, Lcom/appyet/mobile/base/activity/bd;->a([Lcom/appyet/mobile/data/Feed;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bd;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Long;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bd;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/bd;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->d(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    return-void
.end method
