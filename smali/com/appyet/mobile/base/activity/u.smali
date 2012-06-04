.class final Lcom/appyet/mobile/base/activity/u;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Ljava/util/List;

.field private synthetic b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/appyet/mobile/base/activity/ar;->a:[I

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v1, v1, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->a:Lcom/appyet/mobile/context/d;

    invoke-virtual {v1}, Lcom/appyet/mobile/context/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/u;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->f(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)I

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e:Lcom/appyet/mobile/data/Category;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v1, v1, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v2, v2, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/appyet/mobile/manager/bo;->a(J)Lcom/appyet/mobile/data/Category;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e:Lcom/appyet/mobile/data/Category;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v1, v1, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->q:Ljava/util/Hashtable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v1, v1, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v1, Lcom/appyet/mobile/context/ApplicationContext;->q:Ljava/util/Hashtable;

    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v2, v2, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->q:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->k()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/u;->a:Ljava/util/List;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->p()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/u;->a:Ljava/util/List;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->o()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/u;->a:Ljava/util/List;

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/u;->a:Ljava/util/List;

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v1, v1, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v2, v2, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/u;->a:Ljava/util/List;

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->j()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/u;->a:Ljava/util/List;

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v1, v1, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/u;->a:Ljava/util/List;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->q:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/u;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 5

    const/4 v1, 0x0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/u;->a:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->a(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;Ljava/util/List;)Lcom/appyet/mobile/base/activity/q;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Lcom/appyet/mobile/d/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v2, Lcom/appyet/mobile/base/activity/q;->c:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ad()Lcom/appyet/mobile/manager/ax;

    move-result-object v0

    sget-object v2, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->f(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Lcom/appyet/mobile/d/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Lcom/appyet/mobile/d/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Lcom/appyet/mobile/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    const v3, 0x7f0b0007

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->f(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    :goto_2
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Lcom/appyet/mobile/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/e;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Lcom/appyet/mobile/d/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->None:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/data/FeedItem;->setFlag(Lcom/appyet/mobile/data/FeedItem$FlagEnum;)V

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v2, v2, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Lcom/appyet/mobile/d/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :goto_3
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->i(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Lcom/appyet/mobile/base/activity/u;

    return-void

    :cond_3
    :try_start_1
    iget v0, v2, Lcom/appyet/mobile/base/activity/q;->c:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, v2, Lcom/appyet/mobile/base/activity/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    iget-object v4, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v4}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Lcom/appyet/mobile/d/e;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/appyet/mobile/d/e;->add(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    iget-object v0, v2, Lcom/appyet/mobile/base/activity/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v3}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Lcom/appyet/mobile/d/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/d/e;->remove(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ad()Lcom/appyet/mobile/manager/ax;

    move-result-object v0

    sget-object v2, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->f(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->f(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->h(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/u;->b:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
