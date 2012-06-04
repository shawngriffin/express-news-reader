.class final Lcom/appyet/mobile/base/activity/az;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private synthetic c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->y:Lcom/appyet/mobile/manager/cg;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/cg;->c()V

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/az;->b:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/az;->a:Ljava/util/List;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 14

    const-wide/16 v12, -0x1

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/az;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Ljava/util/List;J)Lcom/appyet/mobile/data/Category;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Category;->applyChanges(Lcom/appyet/mobile/data/Category;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v3, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/az;->b:Ljava/util/List;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Ljava/util/List;J)Lcom/appyet/mobile/data/Category;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_4
    iget-object v3, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v3, v3, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/bu;->s()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v3, v3, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->w()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v12

    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v1, v1, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->y:Lcom/appyet/mobile/manager/cg;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/cg;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Category;->setFeeds(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->refreshTotal()V

    goto :goto_3

    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/az;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getCategoryId()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v4}, Lcom/appyet/mobile/data/Category;->applyFeedChanges(Ljava/util/List;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v10

    if-ltz v1, :cond_d

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getUnreadCount()J

    move-result-wide v5

    cmp-long v1, v5, v10

    if-nez v1, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_d
    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v10

    if-ltz v1, :cond_b

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->g(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/s;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    new-instance v1, Lcom/appyet/mobile/d/s;

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v4, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v4}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v5}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->h(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/ExpandableListView;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/appyet/mobile/d/s;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ExpandableListView;)V

    invoke-static {v0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/d/s;)Lcom/appyet/mobile/d/s;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->h(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v1}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :goto_7
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->i(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    move v1, v2

    :goto_8
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_10

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    const/4 v2, 0x1

    :cond_10
    if-eqz v2, :cond_14

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->j(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->h(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_11
    :goto_9
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->d(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->n(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/base/activity/az;

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/s;->notifyDataSetChanged()V

    goto :goto_7

    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_14
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->j(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->h(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_15
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/az;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->l()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->l(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getUnreadCount()J

    move-result-wide v3

    cmp-long v0, v3, v10

    if-nez v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_17
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->l(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/w;->clear()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/w;->notifyDataSetChanged()V

    :cond_18
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->j(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_19
    :goto_b
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/w;->notifyDataSetChanged()V

    goto/16 :goto_9

    :cond_1a
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->j(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->s()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->w()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->l(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v3, v3, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->y:Lcom/appyet/mobile/manager/cg;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/cg;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :cond_1b
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    new-instance v1, Lcom/appyet/mobile/d/w;

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->l(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/appyet/mobile/d/w;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/d/w;)Lcom/appyet/mobile/d/w;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->m(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->j(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v1}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_c
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/w;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_1c
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_1d
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->l(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;J)Lcom/appyet/mobile/data/Feed;

    move-result-object v3

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/d/w;->add(Ljava/lang/Object;)V

    goto :goto_d

    :cond_1e
    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Feed;->applyChange(Lcom/appyet/mobile/data/Feed;)V

    goto :goto_d

    :cond_1f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/w;->getCount()I

    move-result v4

    move v1, v2

    :goto_e
    if-ge v1, v4, :cond_21

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->l(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Ljava/util/List;J)Lcom/appyet/mobile/data/Feed;

    move-result-object v2

    if-nez v2, :cond_20

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_21
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/d/w;->remove(Ljava/lang/Object;)V

    goto :goto_f

    :cond_22
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->m(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/az;->c:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/w;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_c
.end method
