.class final Lcom/appyet/mobile/activity/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/CleanUpActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/CleanUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/x;->a:Lcom/appyet/mobile/activity/CleanUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/x;->a:Lcom/appyet/mobile/activity/CleanUpActivity;

    const v1, 0x7f0d0018

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/CleanUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/appyet/mobile/activity/x;->a:Lcom/appyet/mobile/activity/CleanUpActivity;

    const v2, 0x7f0d0010

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/activity/CleanUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/x;->a:Lcom/appyet/mobile/activity/CleanUpActivity;

    const v2, 0x7f0d0011

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/activity/CleanUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v1, Lcom/appyet/mobile/activity/dv;

    iget-object v2, p0, Lcom/appyet/mobile/activity/x;->a:Lcom/appyet/mobile/activity/CleanUpActivity;

    iget-object v3, p0, Lcom/appyet/mobile/activity/x;->a:Lcom/appyet/mobile/activity/CleanUpActivity;

    invoke-static {v3}, Lcom/appyet/mobile/activity/CleanUpActivity;->a(Lcom/appyet/mobile/activity/CleanUpActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/appyet/mobile/activity/x;->a:Lcom/appyet/mobile/activity/CleanUpActivity;

    invoke-static {v4}, Lcom/appyet/mobile/activity/CleanUpActivity;->b(Lcom/appyet/mobile/activity/CleanUpActivity;)I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/appyet/mobile/activity/dv;-><init>(Lcom/appyet/mobile/activity/CleanUpActivity;IIZ)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/activity/dv;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/x;->a:Lcom/appyet/mobile/activity/CleanUpActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/CleanUpActivity;->c(Lcom/appyet/mobile/activity/CleanUpActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    const/high16 v1, 0x7f0b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
