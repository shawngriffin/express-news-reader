.class public Lcom/appyet/mobile/activity/ManageSourceIntentActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceIntentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceIntentActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceIntentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourceIntentActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/manager/bo;->b(Ljava/lang/String;)Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/appyet/mobile/data/Feed;

    invoke-direct {v1}, Lcom/appyet/mobile/data/Feed;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appyet/mobile/data/Feed;->setCategoryId(J)V

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceIntentActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/data/Feed;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceIntentActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/mobile/manager/bl;->a(JZ)V

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceIntentActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v1, 0x7f0b0180

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourceIntentActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourceIntentActivity;->finish()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceIntentActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v1, 0x7f0b0099

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourceIntentActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const/high16 v1, 0x7f0b

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
