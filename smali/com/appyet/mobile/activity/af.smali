.class final Lcom/appyet/mobile/activity/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageCategoryAddActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageCategoryAddActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/af;->a:Lcom/appyet/mobile/activity/ManageCategoryAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/af;->a:Lcom/appyet/mobile/activity/ManageCategoryAddActivity;

    const v1, 0x7f0d0072

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/af;->a:Lcom/appyet/mobile/activity/ManageCategoryAddActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->a(Lcom/appyet/mobile/activity/ManageCategoryAddActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/appyet/mobile/data/Category;

    invoke-direct {v1}, Lcom/appyet/mobile/data/Category;-><init>()V

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/Category;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/af;->a:Lcom/appyet/mobile/activity/ManageCategoryAddActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->a(Lcom/appyet/mobile/activity/ManageCategoryAddActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/data/Category;)Z

    iget-object v0, p0, Lcom/appyet/mobile/activity/af;->a:Lcom/appyet/mobile/activity/ManageCategoryAddActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->setResult(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/af;->a:Lcom/appyet/mobile/activity/ManageCategoryAddActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/af;->a:Lcom/appyet/mobile/activity/ManageCategoryAddActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->a(Lcom/appyet/mobile/activity/ManageCategoryAddActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    const v1, 0x7f0b0169

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/af;->a:Lcom/appyet/mobile/activity/ManageCategoryAddActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->a(Lcom/appyet/mobile/activity/ManageCategoryAddActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
