.class public Lcom/appyet/mobile/activity/ManageSourceSearchActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/appyet/mobile/d/o;

.field private c:Lcom/appyet/mobile/context/ApplicationContext;

.field private d:I

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->c:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;Lcom/appyet/mobile/d/o;)Lcom/appyet/mobile/d/o;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->b:Lcom/appyet/mobile/d/o;

    return-object p1
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Lcom/appyet/mobile/d/o;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->b:Lcom/appyet/mobile/d/o;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->d:I

    iget v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->d:I

    if-gtz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->setProgressBarIndeterminateVisibility(Z)V

    iput v1, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->d:I

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)V
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->d:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f0d009d

    const/4 v2, 0x3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    const v1, 0x7f020072

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->setTitle(I)V

    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->a:Landroid/widget/ListView;

    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0d009c

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->e:Landroid/widget/Button;

    new-instance v2, Lcom/appyet/mobile/activity/t;

    invoke-direct {v2, p0, v1}, Lcom/appyet/mobile/activity/t;-><init>(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ManageSourceSearchActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
