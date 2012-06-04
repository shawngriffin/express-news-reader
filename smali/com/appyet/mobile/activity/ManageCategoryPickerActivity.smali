.class public Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;
.super Landroid/app/ListActivity;


# instance fields
.field private a:Lcom/appyet/mobile/d/v;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;

.field private c:J

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Lcom/appyet/mobile/activity/df;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/df;-><init>(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->d:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/dg;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/dg;-><init>(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)Lcom/appyet/mobile/d/v;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->a:Lcom/appyet/mobile/d/v;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

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
    .locals 8

    const/high16 v3, 0x7f0b

    const/4 v2, -0x1

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "categoryid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "categoryid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getCategoryId()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->c:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-virtual {v0, v7}, Lcom/appyet/mobile/data/Feed;->setIsSelected(Z)V

    goto :goto_1

    :cond_1
    const/high16 v0, 0x7f0b

    const/4 v1, 0x1

    :try_start_1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lcom/appyet/mobile/activity/de;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/activity/de;-><init>(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/appyet/mobile/d/v;

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/d/v;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->a:Lcom/appyet/mobile/d/v;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->a:Lcom/appyet/mobile/d/v;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method
