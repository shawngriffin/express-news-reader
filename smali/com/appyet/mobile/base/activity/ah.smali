.class final Lcom/appyet/mobile/base/activity/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/Feed;

.field private synthetic b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/Feed;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/ah;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iput-object p2, p0, Lcom/appyet/mobile/base/activity/ah;->a:Lcom/appyet/mobile/data/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ah;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/ah;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/data/Feed;)Z

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ah;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ah;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ah;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/ah;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/appyet/mobile/data/Category;->getFeedByFeedId(J)Lcom/appyet/mobile/data/Feed;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ah;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ah;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/ah;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;J)Lcom/appyet/mobile/data/Feed;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/ah;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v1}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/d/w;->remove(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ah;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
