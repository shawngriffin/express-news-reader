.class public Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;
.super Landroid/app/ListActivity;


# instance fields
.field private a:Lcom/appyet/mobile/d/t;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;

.field private c:Ljava/util/List;

.field private d:Lcom/appyet/mobile/view/TouchListView$DropListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Lcom/appyet/mobile/activity/al;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/al;-><init>(Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->d:Lcom/appyet/mobile/view/TouchListView$DropListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;)Lcom/appyet/mobile/d/t;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->a:Lcom/appyet/mobile/d/t;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

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

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/view/TouchListView;

    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bo;->f()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/appyet/mobile/activity/am;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/am;-><init>(Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;)V

    new-instance v2, Lcom/appyet/mobile/d/t;

    iget-object v3, p0, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->c:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/appyet/mobile/d/t;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->a:Lcom/appyet/mobile/d/t;

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->a:Lcom/appyet/mobile/d/t;

    invoke-virtual {v2, v1}, Lcom/appyet/mobile/d/t;->sort(Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->a:Lcom/appyet/mobile/d/t;

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->d:Lcom/appyet/mobile/view/TouchListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/TouchListView;->setDropListener(Lcom/appyet/mobile/view/TouchListView$DropListener;)V

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method
