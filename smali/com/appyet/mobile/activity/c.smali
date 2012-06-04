.class final Lcom/appyet/mobile/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/GoogleAccountActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/GoogleAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/c;->a:Lcom/appyet/mobile/activity/GoogleAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/activity/c;->a:Lcom/appyet/mobile/activity/GoogleAccountActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->a(Lcom/appyet/mobile/activity/GoogleAccountActivity;)Lcom/appyet/mobile/d/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/appyet/mobile/d/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/h;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "ACCOUNT"

    iget-object v0, v0, Lcom/appyet/mobile/c/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/mobile/activity/c;->a:Lcom/appyet/mobile/activity/GoogleAccountActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/c;->a:Lcom/appyet/mobile/activity/GoogleAccountActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->finish()V

    return-void
.end method
