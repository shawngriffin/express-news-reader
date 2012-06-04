.class public Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;
.super Landroid/app/ListActivity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    const v1, 0x7f030025

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->setContentView(I)V

    const v1, 0x7f020072

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/manager/cm;

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v1, v2}, Lcom/appyet/mobile/manager/cm;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f030026

    const v4, 0x7f0d0079

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/cm;->a()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, p0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/cm;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Lcom/appyet/mobile/activity/dj;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/dj;-><init>(Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_0
    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->setTitle(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ManageSourceChoiceActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method
