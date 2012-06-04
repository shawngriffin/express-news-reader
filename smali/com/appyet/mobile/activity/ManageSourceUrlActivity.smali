.class public Lcom/appyet/mobile/activity/ManageSourceUrlActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/appyet/mobile/activity/ap;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ap;-><init>(Lcom/appyet/mobile/activity/ManageSourceUrlActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/ao;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ao;-><init>(Lcom/appyet/mobile/activity/ManageSourceUrlActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageSourceUrlActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
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

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    const v1, 0x7f030034

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->setContentView(I)V

    const v1, 0x7f020072

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v0, 0x7f0d00a0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00a1

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "feedurl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "feedurl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d009f

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ManageSourceUrlActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
