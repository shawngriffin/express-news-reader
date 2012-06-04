.class public Lcom/appyet/mobile/base/activity/BaseFeedActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/appyet/mobile/activity/bm;
.implements Lcom/appyet/mobile/activity/ec;


# instance fields
.field protected a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:I

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/ExpandableListView;

.field private f:Lcom/appyet/mobile/d/w;

.field private g:Lcom/appyet/mobile/d/s;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Lcom/appyet/mobile/receiver/Service2UiReceiver;

.field private k:Z

.field private l:Lcom/appyet/mobile/base/activity/az;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b:I

    iput-boolean v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/s;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->g:Lcom/appyet/mobile/d/s;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/d/s;)Lcom/appyet/mobile/d/s;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->g:Lcom/appyet/mobile/d/s;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/d/w;)Lcom/appyet/mobile/d/w;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f:Lcom/appyet/mobile/d/w;

    return-object p1
.end method

.method static synthetic a(Ljava/util/List;J)Lcom/appyet/mobile/data/Category;
    .locals 4

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;J)Lcom/appyet/mobile/data/Feed;
    .locals 5

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f:Lcom/appyet/mobile/d/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f:Lcom/appyet/mobile/d/w;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/w;->getCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f:Lcom/appyet/mobile/d/w;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/Feed;)V
    .locals 4

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/LatestExActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/UnreadExActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/StarExActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/PodcastExActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/SourceItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "feed_id"

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private a(Lcom/appyet/mobile/data/Category;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/base/activity/ag;

    invoke-direct {v0, p0, p2}, Lcom/appyet/mobile/base/activity/ag;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appyet/mobile/data/Category;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/ag;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Lcom/appyet/mobile/data/Category;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/base/activity/z;

    invoke-direct {v0, p0, p2}, Lcom/appyet/mobile/base/activity/z;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appyet/mobile/data/Category;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/z;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Lcom/appyet/mobile/data/Feed;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/base/activity/s;

    invoke-direct {v0, p0, p2}, Lcom/appyet/mobile/base/activity/s;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appyet/mobile/data/Feed;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/s;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Lcom/appyet/mobile/data/Feed;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/base/activity/ay;

    invoke-direct {v0, p0, p2}, Lcom/appyet/mobile/base/activity/ay;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appyet/mobile/data/Feed;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/ay;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic b(Ljava/util/List;J)Lcom/appyet/mobile/data/Feed;
    .locals 5

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/d/w;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f:Lcom/appyet/mobile/d/w;

    return-object v0
.end method

.method private d()Ljava/util/Comparator;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/appyet/mobile/base/activity/b;->a:[I

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->aa()Lcom/appyet/mobile/context/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appyet/mobile/context/i;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/appyet/mobile/base/activity/an;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/an;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/appyet/mobile/base/activity/ao;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/ao;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/appyet/mobile/base/activity/al;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/al;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/appyet/mobile/base/activity/am;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/am;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/appyet/mobile/base/activity/ap;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/ap;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/appyet/mobile/base/activity/j;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/j;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic d(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 2

    iget v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b:I

    iget v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b:I

    if-gtz v0, :cond_0

    const v0, 0x7f0d00d0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b:I

    :cond_0
    return-void
.end method

.method private e()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const v0, 0x7f0d00ce

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0d00cf

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0d00cc

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0d00cd

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 2

    iget v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b:I

    const v0, 0x7f0d00d0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d00cc

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/appyet/mobile/base/activity/i;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/base/activity/i;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0d00ca

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/appyet/mobile/base/activity/l;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/base/activity/l;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0d00ce

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/appyet/mobile/base/activity/k;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/base/activity/k;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k:Z

    return v0
.end method

.method private g()V
    .locals 5

    const/4 v0, 0x0

    const v4, 0x7f0d0025

    const v3, 0x7f0d0024

    const v2, 0x7f0d0023

    const/16 v1, 0x8

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f:Lcom/appyet/mobile/d/w;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->g:Lcom/appyet/mobile/d/s;

    iget-boolean v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->d:Landroid/widget/ListView;

    invoke-virtual {p0, v4}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/appyet/mobile/base/activity/m;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/base/activity/m;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/appyet/mobile/base/activity/p;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/base/activity/p;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/appyet/mobile/base/activity/o;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/base/activity/o;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/appyet/mobile/base/activity/h;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/base/activity/h;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->d:Landroid/widget/ListView;

    invoke-virtual {p0, v4}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->d:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/appyet/mobile/base/activity/g;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/base/activity/g;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->i:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lcom/appyet/mobile/base/activity/b;->b:[I

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->ab()Lcom/appyet/mobile/context/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appyet/mobile/context/c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->i:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->d()Ljava/util/Comparator;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/appyet/mobile/base/activity/f;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/f;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/appyet/mobile/base/activity/e;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/e;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/appyet/mobile/base/activity/d;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/d;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/appyet/mobile/base/activity/c;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/c;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic h(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic i(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->i:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getIsExpand()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_1
.end method

.method static synthetic j(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic k(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f:Lcom/appyet/mobile/d/w;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->d()Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f:Lcom/appyet/mobile/d/w;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/d/w;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Lcom/appyet/mobile/base/activity/az;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->l:Lcom/appyet/mobile/base/activity/az;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f:Lcom/appyet/mobile/d/w;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->g:Lcom/appyet/mobile/d/s;

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->l:Lcom/appyet/mobile/base/activity/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->l:Lcom/appyet/mobile/base/activity/az;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/az;->b()Lcom/appyet/mobile/b/f;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/b/f;->c:Lcom/appyet/mobile/b/f;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/appyet/mobile/base/activity/az;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/az;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->l:Lcom/appyet/mobile/base/activity/az;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->l:Lcom/appyet/mobile/base/activity/az;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/az;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 10

    const/4 v2, 0x0

    const v0, 0x7f0d00c8

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0d00c9

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b005e

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    int-to-long v6, v3

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getTotalCount()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v3, v6

    int-to-long v6, v2

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getUnreadCount()J

    move-result-wide v1

    add-long/2addr v1, v6

    long-to-int v1, v1

    move v2, v3

    :goto_1
    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (%d/%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_1
    move v1, v2

    move v2, v3

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    iget-wide v5, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v5

    iget-wide v6, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    iget-wide v6, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v6

    if-ne v5, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    move v8, v2

    move-object v2, v3

    move-object v3, v0

    move v0, v8

    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    const v5, 0x7f0d0148

    if-ne v4, v5, :cond_4

    :try_start_1
    new-instance v0, Lcom/appyet/mobile/base/activity/aj;

    invoke-direct {v0, p0, v2}, Lcom/appyet/mobile/base/activity/aj;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/Category;)V

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->o()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b014a

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0b00a4

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00a3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0095

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0096

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v0, v1

    :goto_2
    return v0

    :cond_0
    if-nez v5, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    move-object v3, v4

    move-object v8, v0

    move v0, v2

    move-object v2, v8

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v4, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f:Lcom/appyet/mobile/d/w;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v0}, Lcom/appyet/mobile/d/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v8, v2

    move-object v2, v3

    move-object v3, v0

    move v0, v8

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v0, Lcom/appyet/mobile/base/activity/bg;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/bg;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/appyet/mobile/data/Category;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/base/activity/bg;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_2

    :cond_4
    :try_start_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v4

    const v5, 0x7f0d0150

    if-ne v4, v5, :cond_5

    :try_start_6
    new-instance v0, Lcom/appyet/mobile/base/activity/ai;

    invoke-direct {v0, p0, v2}, Lcom/appyet/mobile/base/activity/ai;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/Category;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b014a

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0b00a4

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00a3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0095

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0096

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_3
    move v0, v1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v4

    const v5, 0x7f0d0151

    if-ne v4, v5, :cond_6

    :try_start_8
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "categoryid"

    invoke-virtual {v2}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :goto_4
    move v0, v1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_4

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-result v4

    const v5, 0x7f0d0147

    if-ne v4, v5, :cond_8

    :try_start_a
    new-instance v0, Lcom/appyet/mobile/base/activity/n;

    invoke-direct {v0, p0, v2}, Lcom/appyet/mobile/base/activity/n;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/Category;)V

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->o()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b014a

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0b00a4

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00a3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0095

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0096

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_5
    move v0, v1

    goto/16 :goto_2

    :cond_7
    new-instance v0, Lcom/appyet/mobile/base/activity/t;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/t;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/appyet/mobile/data/Category;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/base/activity/t;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_5

    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0d0149

    if-ne v4, v5, :cond_9

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-direct {p0, v2, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/data/Category;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V

    move v0, v1

    goto/16 :goto_2

    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0d014a

    if-ne v4, v5, :cond_a

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-direct {p0, v2, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/data/Category;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V

    move v0, v1

    goto/16 :goto_2

    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0d014b

    if-ne v4, v5, :cond_b

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-direct {p0, v2, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/data/Category;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    move v0, v1

    goto/16 :goto_2

    :cond_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0d014c

    if-ne v4, v5, :cond_c

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-direct {p0, v2, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/data/Category;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    move v0, v1

    goto/16 :goto_2

    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0d014d

    if-ne v4, v5, :cond_e

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    const v0, 0x7f0b01b6

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_d
    move v0, v1

    goto/16 :goto_2

    :cond_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0d014e

    if-ne v4, v5, :cond_10

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    const v0, 0x7f0b01b6

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_f
    move v0, v1

    goto/16 :goto_2

    :cond_10
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v4, 0x7f0d014f

    if-ne v0, v4, :cond_11

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "categoryid"

    invoke-virtual {v2}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v2, 0x12

    invoke-virtual {p0, v0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    goto/16 :goto_2

    :cond_11
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-result v0

    const v2, 0x7f0d0145

    if-ne v0, v2, :cond_12

    :try_start_c
    new-instance v0, Lcom/appyet/mobile/base/activity/ah;

    invoke-direct {v0, p0, v3}, Lcom/appyet/mobile/base/activity/ah;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/Feed;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b00a4

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00a3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0095

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0096

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :goto_6
    move v0, v1

    goto/16 :goto_2

    :catch_5
    move-exception v0

    :try_start_d
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_6

    :cond_12
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move-result v0

    const v2, 0x7f0d013f

    if-ne v0, v2, :cond_14

    :try_start_e
    new-instance v0, Lcom/appyet/mobile/base/activity/ak;

    invoke-direct {v0, p0, v3}, Lcom/appyet/mobile/base/activity/ak;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/Feed;)V

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->o()Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b00a4

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00a3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0095

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0096

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_7
    move v0, v1

    goto/16 :goto_2

    :cond_13
    new-instance v0, Lcom/appyet/mobile/base/activity/bd;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/bd;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/appyet/mobile/data/Feed;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/base/activity/bd;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :try_start_f
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_7

    :cond_14
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    move-result v0

    const v2, 0x7f0d0144

    if-ne v0, v2, :cond_15

    :try_start_10
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    :goto_8
    move v0, v1

    goto/16 :goto_2

    :catch_7
    move-exception v0

    :try_start_11
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_8

    :cond_15
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    move-result v0

    const v2, 0x7f0d013e

    if-ne v0, v2, :cond_16

    :try_start_12
    new-instance v0, Lcom/appyet/mobile/base/activity/aq;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/aq;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/appyet/mobile/data/Feed;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/base/activity/aq;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    :goto_9
    move v0, v1

    goto/16 :goto_2

    :catch_8
    move-exception v0

    :try_start_13
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_9

    :cond_16
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0d0140

    if-ne v0, v2, :cond_17

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-direct {p0, v3, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/data/Feed;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V

    move v0, v1

    goto/16 :goto_2

    :cond_17
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0d0141

    if-ne v0, v2, :cond_18

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-direct {p0, v3, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/data/Feed;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V

    move v0, v1

    goto/16 :goto_2

    :cond_18
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0d0142

    if-ne v0, v2, :cond_19

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-direct {p0, v3, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/data/Feed;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    move v0, v1

    goto/16 :goto_2

    :cond_19
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0d0143

    if-ne v0, v2, :cond_1a

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-direct {p0, v3, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/data/Feed;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    move v0, v1

    goto/16 :goto_2

    :cond_1a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0d0146

    if-ne v0, v2, :cond_1b

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "source_url"

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    goto/16 :goto_2

    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    move-result v0

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    invoke-virtual {v0, p0}, Lcom/appyet/mobile/manager/bn;->a(Landroid/app/Activity;)V

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->B()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k:Z

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->g()V

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e()V

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b00de

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    const-wide/16 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k:Z

    if-eqz v0, :cond_b

    check-cast p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    iget-wide v0, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    iget-wide v1, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iget-wide v2, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v3, 0x7f0e0009

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :goto_0
    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-gez v0, :cond_1

    const v0, 0x7f0d0145

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    const v0, 0x7f0d0146

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    const v0, 0x7f0d0144

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->k()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0d0146

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->t()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0d0145

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_5
    if-nez v0, :cond_3

    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0e000a

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_7

    :cond_6
    const v1, 0x7f0d0150

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    const v1, 0x7f0d014f

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    const v1, 0x7f0d0147

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    const v1, 0x7f0d0148

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    const v1, 0x7f0d0149

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    const v1, 0x7f0d014a

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    const v1, 0x7f0d014b

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    const v1, 0x7f0d014c

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_7
    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->B()Z

    move-result v1

    if-nez v1, :cond_8

    const v1, 0x7f0d014b

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    const v1, 0x7f0d014c

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_8
    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->o()Z

    move-result v1

    if-nez v1, :cond_9

    const v1, 0x7f0d0149

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    const v1, 0x7f0d014a

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_9
    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getIsExpand()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d014d

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto/16 :goto_1

    :cond_a
    const v0, 0x7f0d014e

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f:Lcom/appyet/mobile/d/w;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_c
    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :goto_2
    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-gez v0, :cond_d

    const v0, 0x7f0d0145

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    const v0, 0x7f0d0146

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    const v0, 0x7f0d0144

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_d
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->k()Z

    move-result v0

    if-nez v0, :cond_e

    const v0, 0x7f0d0146

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_e
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->t()Z

    move-result v0

    if-nez v0, :cond_f

    const v0, 0x7f0d0145

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_f
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->B()Z

    move-result v0

    if-nez v0, :cond_10

    const v0, 0x7f0d0142

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    const v0, 0x7f0d0143

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_10
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->o()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0d0140

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    const v0, 0x7f0d0141

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public onLowMemory()V
    .locals 0

    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->f()V

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->j:Lcom/appyet/mobile/receiver/Service2UiReceiver;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->x:Lcom/appyet/mobile/f/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/f/e;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->a:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->a:Z

    new-instance v0, Lcom/appyet/mobile/receiver/Service2UiReceiver;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/receiver/Service2UiReceiver;-><init>(Lcom/appyet/mobile/activity/bm;)V

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->j:Lcom/appyet/mobile/receiver/Service2UiReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->j:Lcom/appyet/mobile/receiver/Service2UiReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    :cond_0
    iget-boolean v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k:Z

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->B()Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->B()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->k:Z

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->g()V

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->e()V

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->f()V

    :cond_1
    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b()V

    return-void
.end method
