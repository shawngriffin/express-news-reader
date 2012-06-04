.class public Lcom/appyet/mobile/activity/FeedItemDetailActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/appyet/mobile/view/scrollview/OnScrollViewListener;


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Landroid/view/View$OnClickListener;

.field private H:Landroid/view/View$OnClickListener;

.field protected a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:I

.field private c:Lcom/appyet/mobile/data/FeedItem;

.field private d:J

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/appyet/mobile/d/l;

.field private i:Lcom/appyet/mobile/d/a;

.field private j:Lcom/appyet/mobile/view/viewflow/ViewFlow;

.field private k:Landroid/view/GestureDetector;

.field private l:I

.field private m:Landroid/widget/ProgressBar;

.field private n:Lcom/appyet/mobile/view/scrollview/ObservableScrollView;

.field private o:Lcom/appyet/mobile/view/viewflow/ViewFlow$ViewOutOfBoundListener;

.field private p:Lcom/appyet/mobile/view/viewflow/ViewFlow$ViewSwitchListener;

.field private q:Lcom/appyet/mobile/view/viewflow/ViewFlow$ViewAddListener;

.field private r:Lcom/appyet/mobile/view/viewflow/ViewFlow$OutOfBoundListener;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/view/View$OnTouchListener;

.field private w:Landroid/view/View$OnClickListener;

.field private x:Landroid/view/View$OnClickListener;

.field private y:Landroid/view/View$OnClickListener;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->e:I

    iput-boolean v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->f:Z

    iput-boolean v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->g:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->l:I

    new-instance v0, Lcom/appyet/mobile/activity/g;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/g;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->o:Lcom/appyet/mobile/view/viewflow/ViewFlow$ViewOutOfBoundListener;

    new-instance v0, Lcom/appyet/mobile/activity/h;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/h;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->p:Lcom/appyet/mobile/view/viewflow/ViewFlow$ViewSwitchListener;

    new-instance v0, Lcom/appyet/mobile/activity/i;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/i;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->q:Lcom/appyet/mobile/view/viewflow/ViewFlow$ViewAddListener;

    new-instance v0, Lcom/appyet/mobile/activity/j;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/j;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->r:Lcom/appyet/mobile/view/viewflow/ViewFlow$OutOfBoundListener;

    new-instance v0, Lcom/appyet/mobile/activity/k;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/k;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->s:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/m;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/m;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->t:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/l;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/l;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->u:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/o;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/o;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->v:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/appyet/mobile/activity/n;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/n;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->w:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/bl;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/bl;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->x:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/bf;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/bf;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->y:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/bc;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/bc;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->z:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/bd;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/bd;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->A:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/bh;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/bh;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->B:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/bi;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/bi;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->C:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/bg;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/bg;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->D:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/av;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/av;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->E:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/aw;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/aw;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->F:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/ax;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ax;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->G:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/ay;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ay;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->H:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic A(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;I)I
    .locals 0

    iput p1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b:I

    return p1
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Lcom/appyet/mobile/data/FeedItem;)Lcom/appyet/mobile/data/FeedItem;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Lcom/appyet/mobile/view/scrollview/ObservableScrollView;)Lcom/appyet/mobile/view/scrollview/ObservableScrollView;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->n:Lcom/appyet/mobile/view/scrollview/ObservableScrollView;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/view/viewflow/ViewFlow;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->j:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0d0036

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0037

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0049

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d0041

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/FeedItemDetailActivity;I)I
    .locals 0

    iput p1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->l:I

    return p1
.end method

.method private b()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/activity/aj;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/aj;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/aj;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c(Lcom/appyet/mobile/data/FeedItem;)V

    return-void
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/d/l;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->h:Lcom/appyet/mobile/d/l;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/16 v3, 0x8

    const v0, 0x7f0d004a

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->J()Lcom/appyet/mobile/context/a;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/context/a;->b:Lcom/appyet/mobile/context/a;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HIDDEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->f()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->h:Lcom/appyet/mobile/d/l;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/l;->notifyDataSetChanged()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/widget/Gallery;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->f:Z

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {v0}, Landroid/widget/Gallery;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->f:Z

    if-eqz v1, :cond_0

    :cond_4
    iget-boolean v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->f:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private c(Lcom/appyet/mobile/data/FeedItem;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p1}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f0b01bb

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/16 v3, 0x8

    const v0, 0x7f0d005b

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->J()Lcom/appyet/mobile/context/a;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/context/a;->c:Lcom/appyet/mobile/context/a;

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->g:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->g:Z

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->g:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getWindow()Landroid/view/Window;

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

.method static synthetic e(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 7

    const/4 v3, 0x0

    const v0, 0x7f0d00c8

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->q:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getFeed()Lcom/appyet/mobile/data/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/Feed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/appyet/mobile/manager/ch;->e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const v0, 0x7f0d00c9

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_2

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v2, v3, 0x1

    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    goto :goto_1

    :cond_0
    const v2, 0x7f0200a6

    :try_start_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const v2, 0x7f0200a6

    :try_start_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :goto_3
    return-void

    :cond_1
    const v2, 0x7f0200a6

    :try_start_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_4
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (%d/%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_4
.end method

.method private f()V
    .locals 3

    const v0, 0x7f0d004a

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iget v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->l:I

    iget v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Gallery;->setSelection(IZ)V

    :cond_0
    iget v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b:I

    iput v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->f()V

    return-void
.end method

.method private g()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->j:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 4

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->G()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->a(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->G()I

    move-result v0

    const/16 v1, 0x320

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bv;->a()Lcom/appyet/mobile/manager/ck;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/manager/ck;->a:Lcom/appyet/mobile/manager/ck;

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0b009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    const v1, 0x7f0b01b3

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    const v2, 0x7f0b009d

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/activity/at;

    invoke-direct {v3, p0}, Lcom/appyet/mobile/activity/at;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    const v2, 0x7f0b0096

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/activity/au;

    invoke-direct {v3, p0}, Lcom/appyet/mobile/activity/au;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->s:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private h()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->j:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->t:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private i()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getWindow()Landroid/view/Window;

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

.method static synthetic j(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->u:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic k(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->k:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic l(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c()V

    return-void
.end method

.method static synthetic m(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->g:Z

    return v0
.end method

.method static synthetic n(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d()V

    return-void
.end method

.method static synthetic o(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->e:I

    iget v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->e:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->m:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->e:I
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

.method static synthetic q(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->e:I

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->m:Landroid/widget/ProgressBar;

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

.method static synthetic r(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->h()V

    return-void
.end method

.method static synthetic s(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.instapaper.com/m?u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic t(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.google.com/gwt/x?u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic u(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->g()V

    return-void
.end method

.method static synthetic v(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.facebook.com/sharer.php?u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic w(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://twitter.com/share?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic x(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/d/a;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->i:Lcom/appyet/mobile/d/a;

    return-object v0
.end method

.method static synthetic y(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b:I

    return v0
.end method

.method static synthetic z(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->i()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/activity/eb;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/eb;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/eb;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
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

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/appyet/mobile/data/FeedItem;->getIsDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/appyet/mobile/data/FeedItem;->setIsDeleted(Z)V

    new-instance v0, Lcom/appyet/mobile/activity/cz;

    invoke-direct {v0, p0, p1}, Lcom/appyet/mobile/activity/cz;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Lcom/appyet/mobile/data/FeedItem;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/cz;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    goto :goto_0
.end method

.method public final b(Lcom/appyet/mobile/data/FeedItem;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/activity/dd;

    invoke-direct {v0, p0, p1}, Lcom/appyet/mobile/activity/dd;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Lcom/appyet/mobile/data/FeedItem;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/dd;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->ac()Lcom/appyet/mobile/context/f;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/context/f;->c:Lcom/appyet/mobile/context/f;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->h()V

    goto :goto_0

    :pswitch_1
    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->g()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->ac()Lcom/appyet/mobile/context/f;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/context/f;->b:Lcom/appyet/mobile/context/f;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->n:Lcom/appyet/mobile/view/scrollview/ObservableScrollView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->n:Lcom/appyet/mobile/view/scrollview/ObservableScrollView;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->pageScroll(I)Z

    goto :goto_0

    :pswitch_3
    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->n:Lcom/appyet/mobile/view/scrollview/ObservableScrollView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->n:Lcom/appyet/mobile/view/scrollview/ObservableScrollView;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->j:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    invoke-virtual {v0, p0}, Lcom/appyet/mobile/manager/bn;->a(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030012

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "feeditemid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "feeditemid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->finish()V

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b:I

    :cond_5
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/appyet/mobile/activity/ak;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/ak;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->k:Landroid/view/GestureDetector;

    const v0, 0x7f0d00cc

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0d00cd

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->B()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    const v0, 0x7f0d004a

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->J()Lcom/appyet/mobile/context/a;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/context/a;->b:Lcom/appyet/mobile/context/a;

    if-ne v1, v2, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    new-instance v1, Lcom/appyet/mobile/d/l;

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v1, v2}, Lcom/appyet/mobile/d/l;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iput-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->h:Lcom/appyet/mobile/d/l;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->h:Lcom/appyet/mobile/d/l;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/appyet/mobile/activity/be;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/be;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    const v0, 0x7f0d005b

    :try_start_7
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->J()Lcom/appyet/mobile/context/a;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/context/a;->c:Lcom/appyet/mobile/context/a;

    if-ne v1, v2, :cond_12

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0d005c

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0d005d

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f0d005e

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f0d005f

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v4, 0x7f0d0060

    invoke-virtual {p0, v4}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    const v5, 0x7f0d0061

    invoke-virtual {p0, v5}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    const v6, 0x7f0d0062

    invoke-virtual {p0, v6}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    const v7, 0x7f0d0063

    invoke-virtual {p0, v7}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    const v8, 0x7f0d0064

    invoke-virtual {p0, v8}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    const v9, 0x7f0d0065

    invoke-virtual {p0, v9}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iget-object v10, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v10, v10, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v10}, Lcom/appyet/mobile/manager/f;->M()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->N()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_5
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->O()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_6
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->P()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_7
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->Q()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_8
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->R()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_9
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->S()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_a
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->T()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_b
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->U()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_c
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->V()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_d
    const v0, 0x7f0d00cc

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/appyet/mobile/activity/as;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/as;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00d0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->m:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/appyet/mobile/d/a;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/mobile/d/a;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->i:Lcom/appyet/mobile/d/a;

    const v0, 0x7f0d0032

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/view/viewflow/ViewFlow;

    iput-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->j:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->j:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->i:Lcom/appyet/mobile/d/a;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->setAdapter(Landroid/widget/Adapter;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->j:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->p:Lcom/appyet/mobile/view/viewflow/ViewFlow$ViewSwitchListener;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->setOnViewSwitchListener(Lcom/appyet/mobile/view/viewflow/ViewFlow$ViewSwitchListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->j:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->o:Lcom/appyet/mobile/view/viewflow/ViewFlow$ViewOutOfBoundListener;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->setOnViewSwitchOutOfBoundListener(Lcom/appyet/mobile/view/viewflow/ViewFlow$ViewOutOfBoundListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->j:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->q:Lcom/appyet/mobile/view/viewflow/ViewFlow$ViewAddListener;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->setOnViewAddListener(Lcom/appyet/mobile/view/viewflow/ViewFlow$ViewAddListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->j:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->r:Lcom/appyet/mobile/view/viewflow/ViewFlow$OutOfBoundListener;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->setOnOutOfBoundListener(Lcom/appyet/mobile/view/viewflow/ViewFlow$OutOfBoundListener;)V

    const v0, 0x7f0d0030

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->j:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->setFlowIndicator(Lcom/appyet/mobile/view/viewflow/FlowIndicator;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const v0, 0x7f0d00c7

    :try_start_8
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->v:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_e
    const v0, 0x7f0d00d3

    :try_start_9
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/appyet/mobile/activity/bj;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/bj;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00d5

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/appyet/mobile/activity/bk;

    invoke-direct {v1, p0, v0}, Lcom/appyet/mobile/activity/bk;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :goto_f
    :try_start_a
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->j:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    iget v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b:I

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->setSelection(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :try_start_b
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-boolean v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    sget-object v1, Lcom/appyet/mobile/context/e;->b:Lcom/appyet/mobile/context/e;

    iput-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->E:Lcom/appyet/mobile/context/e;

    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->B:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    new-instance v1, Lcom/google/ads/AdView;

    sget-object v2, Lcom/google/ads/am;->c:Lcom/google/ads/am;

    iget-object v3, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/bu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/am;Ljava/lang/String;)V

    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/google/ads/at;

    invoke-direct {v0}, Lcom/google/ads/at;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/ads/AdView;->a(Lcom/google/ads/at;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_6
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_2

    :cond_7
    const/16 v1, 0x8

    :try_start_d
    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    :try_start_e
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_3

    :cond_8
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_4

    :cond_9
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_5

    :cond_a
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_6

    :cond_b
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_7

    :cond_c
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_8

    :cond_d
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_9

    :cond_e
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_a

    :cond_f
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_b

    :cond_10
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_c

    :cond_11
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_d

    :cond_12
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_d

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_e

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_f

    :cond_13
    :try_start_f
    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    new-instance v1, Lcom/google/ads/AdView;

    sget-object v2, Lcom/google/ads/am;->c:Lcom/google/ads/am;

    iget-object v3, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/bu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/am;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_14
    new-instance v1, Lcom/google/ads/AdView;

    sget-object v2, Lcom/google/ads/am;->a:Lcom/google/ads/am;

    iget-object v3, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/bu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/am;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_10
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->f()V

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00f2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b(Lcom/appyet/mobile/data/FeedItem;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00f3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a(Lcom/appyet/mobile/data/FeedItem;)V
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

    const v1, 0x7f0d00f0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_3
    const v0, 0x7f0b0059

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :cond_4
    :try_start_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00f1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.instapaper.com/m?u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00fa

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "html/text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const v0, 0x7f0b01bb

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00f9

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-direct {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c(Lcom/appyet/mobile/data/FeedItem;)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00fe

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->e()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->e(Z)V

    const v0, 0x7f0b00c3

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00ff

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->i()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->e(Z)V

    const v0, 0x7f0b00c3

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result v0

    const v1, 0x7f0d00f4

    if-ne v0, v1, :cond_a

    :try_start_a
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00c4

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->d()I

    move-result v2

    new-instance v3, Lcom/appyet/mobile/activity/ar;

    invoke-direct {v3, p0}, Lcom/appyet/mobile/activity/ar;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-result v0

    const v1, 0x7f0d00fb

    if-ne v0, v1, :cond_b

    :try_start_c
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getCommentsLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "feedurl"

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getCommentsLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    :try_start_d
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    move-result v0

    const v1, 0x7f0d00fc

    if-ne v0, v1, :cond_c

    :try_start_e
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iget-object v1, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0176

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :try_start_f
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_7
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V

    goto/16 :goto_0

    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00f5

    if-ne v0, v1, :cond_d

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b()V

    goto/16 :goto_0

    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00f6

    if-ne v0, v1, :cond_e

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b()V

    goto/16 :goto_0

    :cond_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00f7

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a()V

    goto/16 :goto_0

    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00f8

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a()V

    goto/16 :goto_0

    :cond_10
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00fd

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/TranslateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "URL"

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/activity/bu;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/bu;-><init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/bu;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
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
    .locals 6

    const v0, 0x7f0d00fe

    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d00ff

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->B:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->B:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    const v0, 0x7f0d00f5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d00f6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v2

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v2, v3, :cond_8

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    const v2, 0x7f0d00f7

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0d00f8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v4

    sget-object v5, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/bu;->B()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    const v2, 0x7f0d00fb

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem;->getCommentsLink()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const v2, 0x7f0d00f1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/bu;->n()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->o()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->ae()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_7
    const/4 v2, 0x1

    :try_start_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v2

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v2, v3, :cond_9

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_a
    iget-object v4, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v4

    sget-object v5, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v4, v5, :cond_b

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_b
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method protected onResume()V
    .locals 1

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c:Lcom/appyet/mobile/data/FeedItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ae()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->e()V

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->i()V

    goto :goto_0
.end method

.method public onScrollChanged(Lcom/appyet/mobile/view/scrollview/ObservableScrollView;IIII)V
    .locals 3

    sub-int v0, p5, p3

    if-gez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->J()Lcom/appyet/mobile/context/a;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/context/a;->b:Lcom/appyet/mobile/context/a;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->f:Z

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->J()Lcom/appyet/mobile/context/a;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/context/a;->c:Lcom/appyet/mobile/context/a;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->g:Z

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->J()Lcom/appyet/mobile/context/a;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/context/a;->b:Lcom/appyet/mobile/context/a;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->f:Z

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->c()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->J()Lcom/appyet/mobile/context/a;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/context/a;->c:Lcom/appyet/mobile/context/a;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->g:Z

    invoke-direct {p0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
