.class final Lcom/appyet/mobile/activity/df;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/df;->a:Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/activity/df;->a:Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->setResult(I)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/df;->a:Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->a(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)Lcom/appyet/mobile/d/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/d/v;->getCount()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/df;->a:Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->a(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)Lcom/appyet/mobile/d/v;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/v;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getIsSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getCategoryId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/appyet/mobile/activity/df;->a:Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;

    invoke-static {v6}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->b(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/appyet/mobile/activity/df;->a:Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;

    invoke-static {v4}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->b(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/appyet/mobile/data/Feed;->setCategoryId(J)V

    iget-object v4, p0, Lcom/appyet/mobile/activity/df;->a:Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;

    invoke-static {v4}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->c(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v4

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v4, v0}, Lcom/appyet/mobile/manager/bo;->d(Lcom/appyet/mobile/data/Feed;)Z

    iget-object v0, p0, Lcom/appyet/mobile/activity/df;->a:Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->setResult(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/df;->a:Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/high16 v0, 0x7f0b

    invoke-static {v2, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
