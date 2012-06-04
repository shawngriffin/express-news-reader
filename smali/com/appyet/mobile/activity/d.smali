.class final Lcom/appyet/mobile/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/d;->a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/d;->a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    const v1, 0x7f0d0072

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/d;->a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->a(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)Lcom/appyet/mobile/data/Category;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/Category;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/d;->a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->a(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)Lcom/appyet/mobile/data/Category;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/d;->a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->b(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Category;->setColor(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/d;->a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->c(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/activity/d;->a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->a(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)Lcom/appyet/mobile/data/Category;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->e(Lcom/appyet/mobile/data/Category;)Z

    iget-object v0, p0, Lcom/appyet/mobile/activity/d;->a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->setResult(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/d;->a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/d;->a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->c(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    const/high16 v2, 0x7f0b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
