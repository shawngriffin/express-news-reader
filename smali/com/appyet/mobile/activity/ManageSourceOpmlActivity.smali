.class public Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/AutoCompleteTextView;

.field private d:I

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/appyet/mobile/d/c;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->d:I

    new-instance v0, Lcom/appyet/mobile/activity/dt;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/dt;-><init>(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->c:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;Lcom/appyet/mobile/d/c;)Lcom/appyet/mobile/d/c;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->g:Lcom/appyet/mobile/d/c;

    return-object p1
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Lcom/appyet/mobile/d/c;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->g:Lcom/appyet/mobile/d/c;

    return-object v0
.end method

.method static synthetic d(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->d:I

    iget v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->d:I

    if-gtz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->setProgressBarIndeterminateVisibility(Z)V

    iput v1, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->d:I

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)V
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->d:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->setProgressBarIndeterminateVisibility(Z)V

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

    const/4 v2, 0x3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    const v1, 0x7f03002d

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->setContentView(I)V

    const v1, 0x7f020072

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->e:Landroid/widget/ListView;

    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->e:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d008d

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->c:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ManageSourceOpmlActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
