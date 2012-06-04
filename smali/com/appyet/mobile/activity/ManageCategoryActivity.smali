.class public Lcom/appyet/mobile/activity/ManageCategoryActivity;
.super Landroid/app/ListActivity;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;

.field private c:Lcom/appyet/mobile/d/j;

.field private d:Lcom/appyet/mobile/view/TouchListView$DropListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Lcom/appyet/mobile/activity/db;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/db;-><init>(Lcom/appyet/mobile/activity/ManageCategoryActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->d:Lcom/appyet/mobile/view/TouchListView$DropListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageCategoryActivity;)Lcom/appyet/mobile/d/j;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->c:Lcom/appyet/mobile/d/j;

    return-object v0
.end method

.method private a()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->s()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/appyet/mobile/activity/da;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/da;-><init>(Lcom/appyet/mobile/activity/ManageCategoryActivity;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->a:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lcom/appyet/mobile/d/j;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->a:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/appyet/mobile/d/j;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/util/List;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->c:Lcom/appyet/mobile/d/j;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->c:Lcom/appyet/mobile/d/j;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/ManageCategoryActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/ManageCategoryActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->a()V

    :pswitch_1
    invoke-direct {p0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d012c

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/d/j;

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/d/j;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "categoryid"

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v0, 0x10

    invoke-virtual {p0, v2, v0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d012b

    if-ne v2, v3, :cond_1

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    :try_start_1
    new-instance v2, Lcom/appyet/mobile/activity/dc;

    invoke-direct {v2, p0, v0}, Lcom/appyet/mobile/activity/dc;-><init>(Lcom/appyet/mobile/activity/ManageCategoryActivity;I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b00a4

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f02002b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0b00a3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0b0095

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0b0096

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->setContentView(I)V

    const v0, 0x7f0b0147

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/view/TouchListView;

    invoke-direct {p0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->a()V

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->d:Lcom/appyet/mobile/view/TouchListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/TouchListView;->setDropListener(Lcom/appyet/mobile/view/TouchListView$DropListener;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryActivity;->c:Lcom/appyet/mobile/d/j;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/j;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e0005

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const v0, 0x7f0d012b

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d012d

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method
