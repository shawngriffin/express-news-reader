.class public Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/appyet/mobile/activity/bm;
.implements Lcom/appyet/mobile/activity/ec;


# instance fields
.field protected a:Lcom/appyet/mobile/context/d;

.field protected b:Lcom/appyet/mobile/context/ApplicationContext;

.field protected c:Ljava/lang/Long;

.field protected d:Ljava/lang/Long;

.field protected e:Lcom/appyet/mobile/data/Category;

.field protected f:Ljava/lang/String;

.field private g:Lcom/appyet/mobile/d/e;

.field private h:I

.field private i:Landroid/widget/TextView;

.field private j:Lcom/appyet/mobile/receiver/Service2UiReceiver;

.field private k:Landroid/widget/ListView;

.field private l:Landroid/widget/GridView;

.field private m:Lcom/appyet/mobile/base/activity/u;

.field private n:Lcom/appyet/mobile/base/activity/av;

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->h:I

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d:Ljava/lang/Long;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e:Lcom/appyet/mobile/data/Category;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->f:Ljava/lang/String;

    iput v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->o:I

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;Ljava/util/List;)Lcom/appyet/mobile/base/activity/q;
    .locals 1

    invoke-direct {p0, p1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->a(Ljava/util/List;)Lcom/appyet/mobile/base/activity/q;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Lcom/appyet/mobile/base/activity/q;
    .locals 10

    const/4 v2, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ad()Lcom/appyet/mobile/manager/ax;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/appyet/mobile/d/e;

    const v1, 0x7f030016

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    if-nez v3, :cond_0

    :goto_0
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/appyet/mobile/d/e;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    :goto_1
    new-instance v0, Lcom/appyet/mobile/base/activity/q;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/q;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    const/4 v1, 0x2

    iput v1, v0, Lcom/appyet/mobile/base/activity/q;->c:I

    :goto_2
    return-object v0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->K()Lcom/appyet/mobile/context/o;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/context/o;->b:Lcom/appyet/mobile/context/o;

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/appyet/mobile/d/e;

    const v1, 0x7f030018

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    if-nez v3, :cond_2

    :goto_3
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/appyet/mobile/d/e;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move v2, v4

    goto :goto_3

    :cond_3
    :try_start_1
    new-instance v0, Lcom/appyet/mobile/d/e;

    const v1, 0x7f030017

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    if-nez v3, :cond_4

    :goto_4
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/appyet/mobile/d/e;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_4

    :cond_5
    new-instance v3, Lcom/appyet/mobile/base/activity/q;

    invoke-direct {v3, p0}, Lcom/appyet/mobile/base/activity/q;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/appyet/mobile/base/activity/q;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/appyet/mobile/base/activity/q;->b:Ljava/util/List;

    move v1, v4

    :goto_5
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/e;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    sget-object v5, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->None:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    invoke-virtual {v0, v5}, Lcom/appyet/mobile/data/FeedItem;->setFlag(Lcom/appyet/mobile/data/FeedItem$FlagEnum;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/d/e;->getCount()I

    move-result v7

    move v5, v4

    :goto_6
    if-ge v5, v7, :cond_12

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v1, v5}, Lcom/appyet/mobile/d/e;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsDeleted()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/appyet/mobile/data/FeedItem;->setIsDeleted(Z)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/appyet/mobile/data/FeedItem;->setIsRead(Z)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsStar()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/appyet/mobile/data/FeedItem;->setIsStar(Z)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/appyet/mobile/data/FeedItem;->setArticleStatus(Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureStatus(Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->Update:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/FeedItem;->setFlag(Lcom/appyet/mobile/data/FeedItem$FlagEnum;)V

    move v0, v2

    :goto_7
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ad()Lcom/appyet/mobile/manager/ax;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    if-ne v0, v1, :cond_a

    new-instance v0, Lcom/appyet/mobile/d/e;

    const v1, 0x7f030016

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    if-nez v3, :cond_9

    :goto_8
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/appyet/mobile/d/e;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    :goto_9
    new-instance v0, Lcom/appyet/mobile/base/activity/q;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/q;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    const/4 v1, 0x2

    iput v1, v0, Lcom/appyet/mobile/base/activity/q;->c:I

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_6

    :cond_9
    move v2, v4

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->K()Lcom/appyet/mobile/context/o;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/context/o;->b:Lcom/appyet/mobile/context/o;

    if-ne v0, v1, :cond_c

    new-instance v0, Lcom/appyet/mobile/d/e;

    const v1, 0x7f030018

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    if-nez v3, :cond_b

    :goto_a
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/appyet/mobile/d/e;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    goto :goto_9

    :cond_b
    move v2, v4

    goto :goto_a

    :cond_c
    new-instance v0, Lcom/appyet/mobile/d/e;

    const v1, 0x7f030017

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    if-nez v3, :cond_d

    :goto_b
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/appyet/mobile/d/e;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    goto :goto_9

    :cond_d
    move v2, v4

    goto :goto_b

    :cond_e
    move v5, v4

    move v1, v4

    :goto_c
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/e;->getCount()I

    move-result v0

    if-ge v5, v0, :cond_f

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v0, v5}, Lcom/appyet/mobile/d/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFlag()Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    move-result-object v6

    sget-object v7, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->None:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    if-ne v6, v7, :cond_11

    iget-object v1, v3, Lcom/appyet/mobile/base/activity/q;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    :goto_d
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_c

    :cond_f
    if-eqz v1, :cond_10

    :goto_e
    iput v2, v3, Lcom/appyet/mobile/base/activity/q;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    goto/16 :goto_2

    :cond_10
    move v2, v4

    goto :goto_e

    :cond_11
    move v0, v1

    goto :goto_d

    :cond_12
    move v0, v4

    goto/16 :goto_7
.end method

.method static synthetic a(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k()V

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(I)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "feeditemid"

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    return-object v0
.end method

.method private b(I)Lcom/appyet/mobile/data/FeedItem;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->ad()Lcom/appyet/mobile/manager/ax;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/manager/ax;->b:Lcom/appyet/mobile/manager/ax;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/widget/HeaderViewListAdapter;

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, p1, -0x1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/d/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/d/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    goto :goto_0
.end method

.method static synthetic b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->f(I)V

    return-void
.end method

.method private c(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ad()Lcom/appyet/mobile/manager/ax;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V
    .locals 2

    iget v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->h:I

    iget v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->h:I

    if-gtz v0, :cond_0

    const v0, 0x7f0d00d0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->h:I

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g(I)V

    return-void
.end method

.method static synthetic d(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)Lcom/appyet/mobile/data/FeedItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(I)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    return-object v0
.end method

.method private d(I)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/base/activity/bc;

    invoke-direct {v0, p0, p1}, Lcom/appyet/mobile/base/activity/bc;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/bc;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V
    .locals 2

    iget v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->h:I

    const v0, 0x7f0d00d0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static synthetic e(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Lcom/appyet/mobile/d/e;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    return-object v0
.end method

.method private e(I)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/base/activity/at;

    invoke-direct {v0, p0, p1}, Lcom/appyet/mobile/base/activity/at;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/at;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)I
    .locals 0

    iput p1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->o:I

    return p1
.end method

.method static synthetic f(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l:Landroid/widget/GridView;

    return-object v0
.end method

.method private f(I)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/base/activity/ax;

    invoke-direct {v0, p0, p1}, Lcom/appyet/mobile/base/activity/ax;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/ax;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private g(I)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/base/activity/aw;

    invoke-direct {v0, p0, p1}, Lcom/appyet/mobile/base/activity/aw;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/aw;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l()V

    return-void
.end method

.method static synthetic i(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Lcom/appyet/mobile/base/activity/u;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->m:Lcom/appyet/mobile/base/activity/u;

    return-object v0
.end method

.method private k()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const v0, 0x7f0d00d1

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->ad()Lcom/appyet/mobile/manager/ax;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/e;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setVisibility(I)V

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/appyet/mobile/base/activity/av;

    invoke-direct {v0, p0, p0, v3}, Lcom/appyet/mobile/base/activity/av;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->n:Lcom/appyet/mobile/base/activity/av;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->n:Lcom/appyet/mobile/base/activity/av;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private l()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->o:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/e;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->o:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    add-int/lit8 v0, v1, -0x1

    if-ltz v0, :cond_3

    add-int/lit8 v0, v1, -0x1

    :goto_1
    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->ad()Lcom/appyet/mobile/manager/ax;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v6, v0, Lcom/appyet/mobile/context/ApplicationContext;->o:Ljava/lang/Long;

    :goto_3
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v6, v0, Lcom/appyet/mobile/context/ApplicationContext;->o:Ljava/lang/Long;

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v6, v1, Lcom/appyet/mobile/context/ApplicationContext;->o:Ljava/lang/Long;

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private m()V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f0b0007

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/e;->clear()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/e;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->o:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/d/e;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b()V

    goto :goto_0

    :cond_4
    move v2, v7

    :goto_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/d/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/FeedItem;

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b()V

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    move v8, v7

    :goto_2
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    invoke-direct {p0, v8}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appyet/mobile/data/FeedItem;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->q:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem;->getFeed()Lcom/appyet/mobile/data/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appyet/mobile/data/Feed;

    new-instance v2, Lcom/appyet/mobile/d/u;

    invoke-direct {v2}, Lcom/appyet/mobile/d/u;-><init>()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ad()Lcom/appyet/mobile/manager/ax;

    move-result-object v0

    sget-object v4, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    if-ne v0, v4, :cond_9

    const v0, 0x7f0d004e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->n:Landroid/widget/ImageView;

    const v0, 0x7f0d004f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v1, 0x7f030016

    iget-object v4, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    if-nez v4, :cond_8

    move v4, v6

    :goto_3
    invoke-static/range {v0 .. v5}, Lcom/appyet/mobile/d/e;->a(Lcom/appyet/mobile/context/ApplicationContext;ILcom/appyet/mobile/d/u;Lcom/appyet/mobile/data/FeedItem;ZLcom/appyet/mobile/data/Feed;)V

    :cond_7
    :goto_4
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_8
    move v4, v7

    goto :goto_3

    :cond_9
    const v0, 0x7f0d0052

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->a:Landroid/widget/TextView;

    const v0, 0x7f0d004f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->b:Landroid/widget/TextView;

    const v0, 0x7f0d0051

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->c:Landroid/widget/TextView;

    const v0, 0x7f0d005a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->d:Landroid/widget/TextView;

    const v0, 0x7f0d0056

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->e:Landroid/widget/TextView;

    const v0, 0x7f0d0058

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->f:Landroid/widget/ImageView;

    const v0, 0x7f0d0054

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->g:Landroid/widget/ImageView;

    const v0, 0x7f0d0055

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->h:Landroid/widget/ImageView;

    const v0, 0x7f0d0059

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->i:Landroid/widget/ImageView;

    const v0, 0x7f0d0057

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->j:Landroid/widget/ProgressBar;

    const v0, 0x7f0d004e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->k:Landroid/widget/ImageView;

    const v0, 0x7f0d0050

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0053

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->K()Lcom/appyet/mobile/context/o;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/context/o;->b:Lcom/appyet/mobile/context/o;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v1, 0x7f030018

    iget-object v4, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    if-nez v4, :cond_a

    move v4, v6

    :goto_5
    invoke-static/range {v0 .. v5}, Lcom/appyet/mobile/d/e;->a(Lcom/appyet/mobile/context/ApplicationContext;ILcom/appyet/mobile/d/u;Lcom/appyet/mobile/data/FeedItem;ZLcom/appyet/mobile/data/Feed;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_a
    move v4, v7

    goto :goto_5

    :cond_b
    :try_start_4
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v1, 0x7f030017

    iget-object v4, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    if-nez v4, :cond_c

    move v4, v6

    :goto_6
    invoke-static/range {v0 .. v5}, Lcom/appyet/mobile/d/e;->a(Lcom/appyet/mobile/context/ApplicationContext;ILcom/appyet/mobile/d/u;Lcom/appyet/mobile/data/FeedItem;ZLcom/appyet/mobile/data/Feed;)V

    goto/16 :goto_4

    :cond_c
    move v4, v7

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    return-void
.end method

.method public final a(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(I)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsDeleted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setIsDeleted(Z)V

    new-instance v1, Lcom/appyet/mobile/base/activity/a;

    invoke-direct {v1, p0, v0}, Lcom/appyet/mobile/base/activity/a;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;Lcom/appyet/mobile/data/FeedItem;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/base/activity/a;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "feedid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "feedid"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    if-ne v0, v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->m:Lcom/appyet/mobile/base/activity/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->m:Lcom/appyet/mobile/base/activity/u;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/u;->b()Lcom/appyet/mobile/b/f;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/b/f;->c:Lcom/appyet/mobile/b/f;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/appyet/mobile/base/activity/u;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/u;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->m:Lcom/appyet/mobile/base/activity/u;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->m:Lcom/appyet/mobile/base/activity/u;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/u;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
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
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/e;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 7

    const/4 v2, 0x0

    const v0, 0x7f0d00c8

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->q:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/Feed;

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/appyet/mobile/manager/ch;->e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const v0, 0x7f0d00c9

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->q:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->a:Lcom/appyet/mobile/context/d;

    sget-object v4, Lcom/appyet/mobile/context/d;->g:Lcom/appyet/mobile/context/d;

    if-ne v3, v4, :cond_9

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->f:Ljava/lang/String;

    move-object v5, v1

    :goto_2
    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/d/e;->getCount()I

    move-result v3

    move v4, v2

    :goto_3
    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/d/e;->getCount()I

    move-result v1

    if-ge v4, v1, :cond_6

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    invoke-virtual {v1, v4}, Lcom/appyet/mobile/d/e;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-nez v1, :cond_7

    add-int/lit8 v1, v2, 0x1

    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_3

    :cond_0
    const v1, 0x7f0200a6

    :try_start_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const v1, 0x7f0200a6

    :try_start_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_1
    :goto_5
    return-void

    :cond_2
    const v1, 0x7f0200a6

    :try_start_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/appyet/mobile/base/activity/ar;->a:[I

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->a:Lcom/appyet/mobile/context/d;

    invoke-virtual {v3}, Lcom/appyet/mobile/context/d;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_0
    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_1
    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_2
    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_3
    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_4
    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_5
    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_6
    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_4
    :try_start_6
    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d:Ljava/lang/Long;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e:Lcom/appyet/mobile/data/Category;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Category;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    sget-object v1, Lcom/appyet/mobile/base/activity/ar;->a:[I

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->a:Lcom/appyet/mobile/context/d;

    invoke-virtual {v3}, Lcom/appyet/mobile/context/d;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    const v1, 0x7f0b01bb

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_7
    const v1, 0x7f0b005f

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_8
    const v1, 0x7f0b005a

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_9
    const v1, 0x7f0b005d

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_a
    const v1, 0x7f0b0091

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_b
    const v1, 0x7f0b005e

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_c
    const v1, 0x7f0b005c

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_d
    const v1, 0x7f0b005b

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    move v1, v3

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (%d/%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    :cond_7
    move v1, v2

    goto/16 :goto_4

    :cond_8
    move v1, v2

    goto :goto_6

    :cond_9
    move-object v5, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method protected final e()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/base/activity/ae;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/ae;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0095

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appyet/mobile/base/activity/bb;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/bb;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/bb;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final f()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/base/activity/ad;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/ad;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0095

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appyet/mobile/base/activity/r;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/r;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/r;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final g()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/base/activity/ac;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/ac;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0095

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appyet/mobile/base/activity/be;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/be;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/be;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final h()V
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected final i()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/base/activity/ab;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/ab;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0095

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appyet/mobile/base/activity/bh;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/bh;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/bh;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final j()V
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0101

    if-ne v2, v3, :cond_0

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0105

    if-ne v2, v3, :cond_1

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d(I)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0106

    if-ne v2, v3, :cond_2

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d(I)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0107

    if-ne v2, v3, :cond_3

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e(I)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0109

    if-ne v2, v3, :cond_4

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lcom/appyet/mobile/base/activity/af;

    invoke-direct {v2, p0, v0}, Lcom/appyet/mobile/base/activity/af;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/base/activity/af;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0108

    if-ne v2, v3, :cond_5

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->e(I)V

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0102

    if-ne v2, v3, :cond_6

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->f(I)V

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0103

    if-ne v2, v3, :cond_7

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    new-instance v2, Lcom/appyet/mobile/base/activity/bf;

    invoke-direct {v2, p0, v0}, Lcom/appyet/mobile/base/activity/bf;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/base/activity/bf;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    move v0, v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0104

    if-ne v2, v3, :cond_8

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    new-instance v2, Lcom/appyet/mobile/base/activity/as;

    invoke-direct {v2, p0, v0}, Lcom/appyet/mobile/base/activity/as;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/base/activity/as;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    move v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d010a

    if-ne v2, v3, :cond_9

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->a(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v0

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x0

    const v5, 0x7f0d00cc

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    invoke-virtual {v0, p0}, Lcom/appyet/mobile/manager/bn;->a(Landroid/app/Activity;)V

    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->setContentView(I)V

    const v0, 0x7f0d002c

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    const v0, 0x7f0d002e

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->o:Ljava/lang/Long;

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k()V

    invoke-virtual {p0, v5}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0d00cd

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    new-instance v1, Lcom/appyet/mobile/base/activity/aa;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/base/activity/aa;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l:Landroid/widget/GridView;

    new-instance v1, Lcom/appyet/mobile/base/activity/y;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/base/activity/y;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l:Landroid/widget/GridView;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->registerForContextMenu(Landroid/view/View;)V

    const v0, 0x7f0d00d1

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/appyet/mobile/base/activity/x;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/base/activity/x;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v5}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/appyet/mobile/base/activity/w;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/base/activity/w;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00ca

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/appyet/mobile/base/activity/v;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/base/activity/v;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->g:Lcom/appyet/mobile/d/e;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v1, v2, :cond_4

    const v1, 0x7f0d0105

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_1
    const v1, 0x7f0d0106

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->B()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    const v0, 0x7f0d0107

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    const v0, 0x7f0d0108

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    const v0, 0x7f0d0109

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    :goto_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->o()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0d0105

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    const v0, 0x7f0d0106

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v1, v2, :cond_1

    const v1, 0x7f0d0105

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v1, v2, :cond_7

    const v0, 0x7f0d0107

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_6
    const v0, 0x7f0d0108

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_1

    :cond_7
    const v1, 0x7f0d0109

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v0, v1, :cond_6

    const v0, 0x7f0d0107

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->k:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->l:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V
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

.method public onLowMemory()V
    .locals 0

    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->f()V

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->j:Lcom/appyet/mobile/receiver/Service2UiReceiver;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->x:Lcom/appyet/mobile/f/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/f/e;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->a:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->h()V

    :goto_0
    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->a:Z

    new-instance v0, Lcom/appyet/mobile/receiver/Service2UiReceiver;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/receiver/Service2UiReceiver;-><init>(Lcom/appyet/mobile/activity/bm;)V

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->j:Lcom/appyet/mobile/receiver/Service2UiReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->j:Lcom/appyet/mobile/receiver/Service2UiReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b()V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->j()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->m()V

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->d()V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->n:Lcom/appyet/mobile/base/activity/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->n:Lcom/appyet/mobile/base/activity/av;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/av;->a:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->n:Lcom/appyet/mobile/base/activity/av;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/av;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
