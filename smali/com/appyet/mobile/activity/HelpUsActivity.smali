.class public Lcom/appyet/mobile/activity/HelpUsActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/appyet/mobile/activity/s;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/s;-><init>(Lcom/appyet/mobile/activity/HelpUsActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/HelpUsActivity;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/r;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/r;-><init>(Lcom/appyet/mobile/activity/HelpUsActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/HelpUsActivity;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/HelpUsActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/HelpUsActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

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

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/HelpUsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    const v1, 0x7f03001d

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/HelpUsActivity;->setContentView(I)V

    const v1, 0x7f020030

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/HelpUsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/HelpUsActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/HelpUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/HelpUsActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d006d

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/HelpUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0d006e

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/HelpUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/HelpUsActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d006f

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/HelpUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/HelpUsActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/HelpUsActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/HelpUsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/HelpUsActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HelpUsActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
