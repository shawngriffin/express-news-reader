.class public Lcom/appyet/mobile/activity/ManageSourceActivity;
.super Landroid/app/ListActivity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:Lcom/appyet/mobile/manager/cm;

.field private c:Lcom/appyet/mobile/d/r;

.field private d:Landroid/widget/ListView;

.field private e:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Lcom/appyet/mobile/activity/az;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/az;-><init>(Lcom/appyet/mobile/activity/ManageSourceActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->e:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageSourceActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Lcom/appyet/mobile/c/e;
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/e;

    iget-object v4, v0, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/ManageSourceActivity;)Lcom/appyet/mobile/d/r;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->c:Lcom/appyet/mobile/d/r;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eq p2, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->b:Lcom/appyet/mobile/manager/cm;

    invoke-virtual {v0, p2}, Lcom/appyet/mobile/manager/cm;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/appyet/mobile/manager/cm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/ManageSourceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/appyet/mobile/manager/cm;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/ManageSourceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/appyet/mobile/manager/cm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/ManageSourceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/appyet/mobile/manager/cm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/GoogleAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/ManageSourceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_1
    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACCOUNT"

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ACCOUNT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/ManageSourceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceActivity;->setContentView(I)V

    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceActivity;->setTitle(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceActivity;->setResult(I)V

    new-instance v0, Lcom/appyet/mobile/manager/cm;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/cm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->b:Lcom/appyet/mobile/manager/cm;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->d:Landroid/widget/ListView;

    const v0, 0x7f0d0077

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0d0078

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/ManageSourceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0098

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/ManageSourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->F()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->F()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    new-instance v1, Lcom/appyet/mobile/activity/bb;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/bb;-><init>(Lcom/appyet/mobile/activity/ManageSourceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/appyet/mobile/activity/ba;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/ba;-><init>(Lcom/appyet/mobile/activity/ManageSourceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ManageSourceActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2}, Lcom/appyet/mobile/manager/bl;->a(ZZZ)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceActivity;->finish()V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->b:Lcom/appyet/mobile/manager/cm;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/cm;->b()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->c:Lcom/appyet/mobile/d/r;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appyet/mobile/d/r;

    invoke-direct {v0, p0, v4}, Lcom/appyet/mobile/d/r;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->c:Lcom/appyet/mobile/d/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->c:Lcom/appyet/mobile/d/r;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->e:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/r;->sort(Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->c:Lcom/appyet/mobile/d/r;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/e;

    iget-object v6, v0, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->c:Lcom/appyet/mobile/d/r;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->c:Lcom/appyet/mobile/d/r;

    invoke-virtual {v1}, Lcom/appyet/mobile/d/r;->getCount()I

    move-result v7

    move v3, v2

    :goto_3
    if-ge v3, v7, :cond_2

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->c:Lcom/appyet/mobile/d/r;

    invoke-virtual {v1, v3}, Lcom/appyet/mobile/d/r;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/c/e;

    iget-object v8, v1, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_4
    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->c:Lcom/appyet/mobile/d/r;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/d/r;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_4

    :cond_3
    iget-object v3, v0, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    iput-object v3, v1, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/appyet/mobile/c/e;->h:Ljava/lang/String;

    iput-object v3, v1, Lcom/appyet/mobile/c/e;->h:Ljava/lang/String;

    iget-object v0, v0, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->c:Lcom/appyet/mobile/d/r;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/r;->getCount()I

    move-result v5

    move v1, v2

    :goto_5
    if-ge v1, v5, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->c:Lcom/appyet/mobile/d/r;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/e;

    iget-object v2, v0, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/appyet/mobile/activity/ManageSourceActivity;->a(Ljava/util/List;Ljava/lang/String;)Lcom/appyet/mobile/c/e;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/e;

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->c:Lcom/appyet/mobile/d/r;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/d/r;->remove(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->c:Lcom/appyet/mobile/d/r;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->e:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/r;->sort(Ljava/util/Comparator;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_7
    :try_start_5
    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceActivity;->c:Lcom/appyet/mobile/d/r;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/r;->notifyDataSetChanged()V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7
.end method
