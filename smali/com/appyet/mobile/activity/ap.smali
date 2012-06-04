.class final Lcom/appyet/mobile/activity/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageSourceUrlActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageSourceUrlActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ap;->a:Lcom/appyet/mobile/activity/ManageSourceUrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ap;->a:Lcom/appyet/mobile/activity/ManageSourceUrlActivity;

    const v1, 0x7f0d009f

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    :try_start_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ap;->a:Lcom/appyet/mobile/activity/ManageSourceUrlActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->a(Lcom/appyet/mobile/activity/ManageSourceUrlActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0099

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/appyet/mobile/data/Feed;

    invoke-direct {v0}, Lcom/appyet/mobile/data/Feed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/activity/ap;->a:Lcom/appyet/mobile/activity/ManageSourceUrlActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->a(Lcom/appyet/mobile/activity/ManageSourceUrlActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/data/Feed;)Z

    iget-object v0, p0, Lcom/appyet/mobile/activity/ap;->a:Lcom/appyet/mobile/activity/ManageSourceUrlActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->setResult(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ap;->a:Lcom/appyet/mobile/activity/ManageSourceUrlActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
