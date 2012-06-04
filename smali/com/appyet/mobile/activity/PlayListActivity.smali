.class public Lcom/appyet/mobile/activity/PlayListActivity;
.super Landroid/app/Activity;


# static fields
.field public static c:Lcom/appyet/mobile/activity/bo;


# instance fields
.field protected a:Lcom/appyet/mobile/activity/dp;

.field public b:Lcom/appyet/mobile/d/n;

.field private d:Lcom/appyet/mobile/context/ApplicationContext;

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:Lcom/appyet/mobile/view/TouchListView;

.field private h:Landroid/view/GestureDetector;

.field private i:Z

.field private j:I

.field private k:Ljava/util/List;

.field private l:Landroid/view/View$OnTouchListener;

.field private m:Lcom/appyet/mobile/view/TouchListView$DropListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->e:I

    iput-boolean v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->i:Z

    iput v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->j:I

    new-instance v0, Lcom/appyet/mobile/activity/cq;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/cq;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->l:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/appyet/mobile/activity/cp;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/cp;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->m:Lcom/appyet/mobile/view/TouchListView$DropListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/PlayListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->k:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/d/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLinkMD5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/appyet/mobile/activity/PlayListActivity;->c(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/appyet/mobile/activity/PlayListActivity;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/appyet/mobile/activity/PlayListActivity;->c:Lcom/appyet/mobile/activity/bo;

    sget-object v2, Lcom/appyet/mobile/activity/bo;->a:Lcom/appyet/mobile/activity/bo;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/data/FeedItem;)V

    :cond_2
    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->e()Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->e()Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/manager/e;->a(Lcom/appyet/mobile/data/FeedItem;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->i()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/manager/e;->a(Lcom/appyet/mobile/data/FeedItem;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->i()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/PlayListActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appyet/mobile/activity/PlayListActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/PlayListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/PlayListActivity;I)I
    .locals 0

    iput p1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->j:I

    return p1
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/PlayListActivity;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->h:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/d/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private c()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private c(I)V
    .locals 5

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/d/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLinkMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/appyet/mobile/manager/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/PlayListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/appyet/mobile/activity/PlayListActivity;)I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->j:I

    return v0
.end method

.method private d()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private d(I)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/d/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/data/FeedItem;)V

    return-void
.end method

.method private e(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/d/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    new-instance v1, Lcom/appyet/mobile/activity/cc;

    invoke-direct {v1, p0, v0}, Lcom/appyet/mobile/activity/cc;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;Lcom/appyet/mobile/data/FeedItem;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/activity/cc;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/appyet/mobile/activity/PlayListActivity;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->e:I

    iget v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->e:I

    if-gtz v0, :cond_0

    const v0, 0x7f0d00d0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/appyet/mobile/activity/PlayListActivity;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->e:I

    const v0, 0x7f0d00d0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

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

.method static synthetic g(Lcom/appyet/mobile/activity/PlayListActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/appyet/mobile/activity/PlayListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->d()V

    return-void
.end method

.method static synthetic i(Lcom/appyet/mobile/activity/PlayListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->c()V

    return-void
.end method

.method static synthetic j(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/view/TouchListView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->g:Lcom/appyet/mobile/view/TouchListView;

    return-object v0
.end method

.method static synthetic k(Lcom/appyet/mobile/activity/PlayListActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/activity/dx;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/dx;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/dx;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Lcom/appyet/mobile/data/FeedItem;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/activity/bw;

    invoke-direct {v0, p0, p1}, Lcom/appyet/mobile/activity/bw;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;Lcom/appyet/mobile/data/FeedItem;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/bw;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    const v0, 0x7f0d00c9

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    sget-object v2, Lcom/appyet/mobile/activity/ca;->a:[I

    sget-object v3, Lcom/appyet/mobile/activity/PlayListActivity;->c:Lcom/appyet/mobile/activity/bo;

    invoke-virtual {v3}, Lcom/appyet/mobile/activity/bo;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->e()Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->e()Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->e()Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->e()Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0b00d5

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0b00d4

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    const v3, 0x7f0d012e

    if-ne v2, v3, :cond_0

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/d/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    new-instance v2, Lcom/appyet/mobile/activity/bv;

    invoke-direct {v2, p0, v0}, Lcom/appyet/mobile/activity/bv;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;Lcom/appyet/mobile/data/FeedItem;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/activity/bv;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0134

    if-ne v2, v3, :cond_1

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->e(I)V

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0136

    if-ne v2, v3, :cond_2

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v2, p0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/d/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    new-instance v2, Lcom/appyet/mobile/activity/aq;

    invoke-direct {v2, p0, v0}, Lcom/appyet/mobile/activity/aq;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;Lcom/appyet/mobile/data/FeedItem;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/activity/aq;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0135

    if-ne v2, v3, :cond_3

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->e(I)V

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0137

    if-ne v2, v3, :cond_6

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    iget-object v2, p0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/d/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    if-nez v0, :cond_5

    :cond_4
    :goto_3
    move v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsDeleted()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/data/FeedItem;->setIsDeleted(Z)V

    new-instance v2, Lcom/appyet/mobile/activity/cv;

    invoke-direct {v2, p0, v0}, Lcom/appyet/mobile/activity/cv;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;Lcom/appyet/mobile/data/FeedItem;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/activity/cv;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d012f

    if-ne v2, v3, :cond_7

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a(I)V

    move v0, v1

    goto/16 :goto_1

    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0130

    if-ne v2, v3, :cond_8

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->b(I)V

    move v0, v1

    goto/16 :goto_1

    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0131

    if-ne v2, v3, :cond_9

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->c(I)V

    move v0, v1

    goto/16 :goto_1

    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0132

    if-ne v2, v3, :cond_a

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->d(I)V

    move v0, v1

    goto/16 :goto_1

    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d0133

    if-ne v2, v3, :cond_b

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->d(I)V

    move v0, v1

    goto/16 :goto_1

    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v0

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    invoke-virtual {v0, p0}, Lcom/appyet/mobile/manager/bn;->a(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030036

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    const v0, 0x7f0d002c

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0d00a9

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0d00a7

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/appyet/mobile/activity/by;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/by;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/appyet/mobile/activity/dp;

    invoke-direct {v0, p0, p0}, Lcom/appyet/mobile/activity/dp;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->a:Lcom/appyet/mobile/activity/dp;

    sget-object v0, Lcom/appyet/mobile/activity/bo;->a:Lcom/appyet/mobile/activity/bo;

    sput-object v0, Lcom/appyet/mobile/activity/PlayListActivity;->c:Lcom/appyet/mobile/activity/bo;

    const v0, 0x7f0d00ce

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0d00cf

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0d00ad

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/view/TouchListView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->g:Lcom/appyet/mobile/view/TouchListView;

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->g:Lcom/appyet/mobile/view/TouchListView;

    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->m:Lcom/appyet/mobile/view/TouchListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/TouchListView;->setDropListener(Lcom/appyet/mobile/view/TouchListView$DropListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->g:Lcom/appyet/mobile/view/TouchListView;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->registerForContextMenu(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const v0, 0x7f0d00ce

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/appyet/mobile/activity/cm;

    invoke-direct {v1, p0, v0}, Lcom/appyet/mobile/activity/cm;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->g:Lcom/appyet/mobile/view/TouchListView;

    new-instance v1, Lcom/appyet/mobile/activity/bz;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/bz;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;)V

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/TouchListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->g()V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/appyet/mobile/activity/dh;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/dh;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->h:Landroid/view/GestureDetector;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const v0, 0x7f0d00c7

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->l:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->E()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0b01ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    const v1, 0x7f0b01b1

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0095

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/activity/cb;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/activity/cb;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlayListActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->finish()V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e0007

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const v1, 0x7f0d0134

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    const v1, 0x7f0d0135

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    const v1, 0x7f0d0136

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    const v1, 0x7f0d012f

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsQueued()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0d0132

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    :goto_1
    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->e()Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->e()Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v0

    if-ne v1, v0, :cond_1

    const v0, 0x7f0d0133

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    const v0, 0x7f0d0132

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v1, v2, :cond_3

    const v1, 0x7f0d0134

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    const v1, 0x7f0d0135

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_3
    const v1, 0x7f0d0136

    :try_start_1
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v1, v2, :cond_4

    const v1, 0x7f0d0134

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    const v1, 0x7f0d012f

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    :cond_4
    const v1, 0x7f0d0135

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    const v1, 0x7f0d012f

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    :cond_5
    const v1, 0x7f0d0133

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/appyet/mobile/activity/PlayListActivity;->c:Lcom/appyet/mobile/activity/bo;

    sget-object v1, Lcom/appyet/mobile/activity/bo;->b:Lcom/appyet/mobile/activity/bo;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d00ce

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/appyet/mobile/activity/bo;->a:Lcom/appyet/mobile/activity/bo;

    sput-object v1, Lcom/appyet/mobile/activity/PlayListActivity;->c:Lcom/appyet/mobile/activity/bo;

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d013a

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/appyet/mobile/activity/a;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/a;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/a;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0138

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    const v1, 0x7f0b000a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/mobile/manager/bl;->a(ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0139

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bl;->b()V

    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    const v1, 0x7f0d013c

    if-ne v0, v1, :cond_4

    :try_start_2
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0195

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->e()I

    move-result v2

    new-instance v3, Lcom/appyet/mobile/activity/co;

    invoke-direct {v3, p0}, Lcom/appyet/mobile/activity/co;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    const v1, 0x7f0d013b

    if-ne v0, v1, :cond_5

    :try_start_4
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0191

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->f()I

    move-result v2

    new-instance v3, Lcom/appyet/mobile/activity/cn;

    invoke-direct {v3, p0}, Lcom/appyet/mobile/activity/cn;-><init>(Lcom/appyet/mobile/activity/PlayListActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d013d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/e;->a(ZI)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    const v1, 0x7f0b019b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/SleepTimerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    const v7, 0x7f0b0195

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0b019e

    const v3, 0x7f0b0191

    const v0, 0x7f0d0138

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d0139

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    const v0, 0x7f0d013b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->h()Lcom/appyet/mobile/context/n;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/context/n;->c:Lcom/appyet/mobile/context/n;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b00d5

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_1
    const v0, 0x7f0d013c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->g()Lcom/appyet/mobile/context/g;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/context/g;->b:Lcom/appyet/mobile/context/g;

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b019d

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_2
    const v0, 0x7f0d013d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0198

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b019d

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->h()Lcom/appyet/mobile/context/n;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/context/n;->b:Lcom/appyet/mobile/context/n;

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b00d4

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0198

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_3
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ae()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->c()V

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0, p0}, Lcom/appyet/mobile/manager/e;->a(Lcom/appyet/mobile/activity/PlayListActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/n;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/appyet/mobile/activity/PlayListActivity;->d()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
