.class public Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:I

.field private c:Landroid/widget/ListView;

.field private d:Lcom/appyet/mobile/d/i;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/util/List;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->b:I

    new-instance v0, Lcom/appyet/mobile/activity/p;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/p;-><init>(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;Lcom/appyet/mobile/d/i;)Lcom/appyet/mobile/d/i;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->d:Lcom/appyet/mobile/d/i;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Lcom/appyet/mobile/d/i;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->d:Lcom/appyet/mobile/d/i;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic d(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->b:I

    iget v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->b:I

    if-gtz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->setProgressBarIndeterminateVisibility(Z)V

    iput v1, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->b:I

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)V
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->b:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->setContentView(I)V

    const v1, 0x7f020072

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->c:Landroid/widget/ListView;

    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/appyet/mobile/activity/ai;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->e:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/activity/ai;-><init>(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/ai;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ManageSourceGoogleActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
