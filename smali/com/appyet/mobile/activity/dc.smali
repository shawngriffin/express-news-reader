.class final Lcom/appyet/mobile/activity/dc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/appyet/mobile/activity/ManageCategoryActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageCategoryActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/dc;->b:Lcom/appyet/mobile/activity/ManageCategoryActivity;

    iput p2, p0, Lcom/appyet/mobile/activity/dc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/dc;->b:Lcom/appyet/mobile/activity/ManageCategoryActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/d/j;

    iget v1, p0, Lcom/appyet/mobile/activity/dc;->a:I

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/j;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/dc;->b:Lcom/appyet/mobile/activity/ManageCategoryActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/dc;->b:Lcom/appyet/mobile/activity/ManageCategoryActivity;

    invoke-virtual {v1}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/appyet/mobile/activity/dc;->b:Lcom/appyet/mobile/activity/ManageCategoryActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/ManageCategoryActivity;->c(Lcom/appyet/mobile/activity/ManageCategoryActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v2, v1}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/data/Category;)Z

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/j;->remove(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
