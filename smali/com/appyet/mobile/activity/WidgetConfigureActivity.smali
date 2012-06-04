.class public Lcom/appyet/mobile/activity/WidgetConfigureActivity;
.super Landroid/app/ListActivity;


# instance fields
.field a:I

.field private b:Lcom/appyet/mobile/d/b;

.field private c:Lcom/appyet/mobile/context/ApplicationContext;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->a:I

    new-instance v0, Lcom/appyet/mobile/activity/ct;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ct;-><init>(Lcom/appyet/mobile/activity/WidgetConfigureActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->d:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/cu;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/cu;-><init>(Lcom/appyet/mobile/activity/WidgetConfigureActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/WidgetConfigureActivity;)Lcom/appyet/mobile/d/b;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->b:Lcom/appyet/mobile/d/b;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/WidgetConfigureActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->c:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->a:I

    :cond_0
    iget v0, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->a:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->E()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget v2, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->a:I

    invoke-static {v1, v0, v2, v3}, Lcom/appyet/mobile/provider/WidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->finish()V

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lcom/appyet/mobile/activity/cs;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/activity/cs;-><init>(Lcom/appyet/mobile/activity/WidgetConfigureActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/appyet/mobile/d/b;

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/d/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->b:Lcom/appyet/mobile/d/b;

    iget-object v0, p0, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->b:Lcom/appyet/mobile/d/b;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method
