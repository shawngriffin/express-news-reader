.class final Lcom/appyet/mobile/d/p;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Lcom/appyet/mobile/view/TextViewEx;

.field private b:Landroid/text/Spanned;

.field private c:Lcom/appyet/mobile/data/FeedItem;

.field private d:Landroid/widget/ProgressBar;

.field private synthetic e:Lcom/appyet/mobile/d/a;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/d/a;Lcom/appyet/mobile/view/TextViewEx;Landroid/widget/ProgressBar;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput-object p2, p0, Lcom/appyet/mobile/d/p;->a:Lcom/appyet/mobile/view/TextViewEx;

    iput-object p4, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    iput-object p3, p0, Lcom/appyet/mobile/d/p;->d:Landroid/widget/ProgressBar;

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/p;->a:Lcom/appyet/mobile/view/TextViewEx;

    invoke-virtual {v0}, Lcom/appyet/mobile/view/TextViewEx;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object v7

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v0}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/data/FeedItem;)Lcom/appyet/mobile/data/FeedItem;

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v0}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getDisplayMode()Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;->None:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;->Article:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/FeedItem;->setDisplayMode(Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;)V

    iget-object v1, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    iget-object v2, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v2}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/f/c;

    iget-object v4, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v4}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v5, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v5}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v5

    iget-object v5, v5, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v5}, Lcom/appyet/mobile/manager/f;->r()I

    move-result v5

    iget-object v6, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v6}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v6

    iget-object v6, v6, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v6}, Lcom/appyet/mobile/manager/f;->p()Z

    move-result v6

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/appyet/mobile/f/c;-><init>(Lcom/appyet/mobile/context/ApplicationContext;IIZ)V

    invoke-virtual {v1, v2, v3}, Lcom/appyet/mobile/data/FeedItem;->getArticleSpanned(Lcom/appyet/mobile/context/ApplicationContext;Landroid/text/Html$ImageGetter;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/d/p;->b:Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getDisplayMode()Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;->Article:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    iget-object v2, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v2}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/f/c;

    iget-object v4, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v4}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v5, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v5}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v5

    iget-object v5, v5, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v5}, Lcom/appyet/mobile/manager/f;->r()I

    move-result v5

    iget-object v6, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v6}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v6

    iget-object v6, v6, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v6}, Lcom/appyet/mobile/manager/f;->p()Z

    move-result v6

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/appyet/mobile/f/c;-><init>(Lcom/appyet/mobile/context/ApplicationContext;IIZ)V

    invoke-virtual {v1, v2, v3}, Lcom/appyet/mobile/data/FeedItem;->getArticleSpanned(Lcom/appyet/mobile/context/ApplicationContext;Landroid/text/Html$ImageGetter;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/d/p;->b:Landroid/text/Spanned;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->f()V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;->Feed:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/FeedItem;->setDisplayMode(Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;)V

    iget-object v1, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    iget-object v2, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v2}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/f/c;

    iget-object v4, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v4}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v5, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v5}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v5

    iget-object v5, v5, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v5}, Lcom/appyet/mobile/manager/f;->r()I

    move-result v5

    iget-object v6, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v6}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v6

    iget-object v6, v6, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v6}, Lcom/appyet/mobile/manager/f;->p()Z

    move-result v6

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/appyet/mobile/f/c;-><init>(Lcom/appyet/mobile/context/ApplicationContext;IIZ)V

    invoke-virtual {v1, v2, v3}, Lcom/appyet/mobile/data/FeedItem;->getDescriptionSpanned(Lcom/appyet/mobile/context/ApplicationContext;Landroid/text/Html$ImageGetter;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/d/p;->b:Landroid/text/Spanned;

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;->Feed:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/FeedItem;->setDisplayMode(Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;)V

    iget-object v1, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    iget-object v2, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v2}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/f/c;

    iget-object v4, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v4}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v5, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v5}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v5

    iget-object v5, v5, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v5}, Lcom/appyet/mobile/manager/f;->r()I

    move-result v5

    iget-object v6, p0, Lcom/appyet/mobile/d/p;->e:Lcom/appyet/mobile/d/a;

    invoke-static {v6}, Lcom/appyet/mobile/d/a;->a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v6

    iget-object v6, v6, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v6}, Lcom/appyet/mobile/manager/f;->p()Z

    move-result v6

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/appyet/mobile/f/c;-><init>(Lcom/appyet/mobile/context/ApplicationContext;IIZ)V

    invoke-virtual {v1, v2, v3}, Lcom/appyet/mobile/data/FeedItem;->getDescriptionSpanned(Lcom/appyet/mobile/context/ApplicationContext;Landroid/text/Html$ImageGetter;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/d/p;->b:Landroid/text/Spanned;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/d/p;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/d/p;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/p;->a:Lcom/appyet/mobile/view/TextViewEx;

    invoke-virtual {v0}, Lcom/appyet/mobile/view/TextViewEx;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/d/p;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/d/p;->a:Lcom/appyet/mobile/view/TextViewEx;

    iget-object v1, p0, Lcom/appyet/mobile/d/p;->b:Landroid/text/Spanned;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/view/TextViewEx;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/d/p;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->f()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
