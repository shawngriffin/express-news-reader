.class final Lcom/appyet/mobile/activity/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    const/high16 v11, 0x7f0b

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    const v1, 0x7f0d0090

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    const v2, 0x7f0d0092

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    const v3, 0x7f0d0095

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    const v4, 0x7f0d0096

    invoke-virtual {v3, v4}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    const v5, 0x7f0d0094

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    const v6, 0x7f0d0097

    invoke-virtual {v5, v6}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    const v7, 0x7f0d0098

    invoke-virtual {v6, v7}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    :try_start_0
    iget-object v7, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    invoke-static {v7}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v7

    iget-object v7, v7, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v8, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    invoke-static {v8}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->a(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)Lcom/appyet/mobile/data/Feed;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/appyet/mobile/manager/bo;->b(J)Lcom/appyet/mobile/data/Feed;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/appyet/mobile/data/Feed;->setIsDownloadNewArticle(Z)V

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/appyet/mobile/data/Feed;->setIsDownloadNewEnclosure(Z)V

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/appyet/mobile/data/Feed;->setIsSkipAutoUpdate(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->c(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->c(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/appyet/mobile/data/Feed;->setEncoding(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->d(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/appyet/mobile/data/Feed;->setCategoryId(J)V

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/appyet/mobile/data/Feed;->setHttpAuthPassword(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/appyet/mobile/data/Feed;->setHttpAuthUserName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, v7}, Lcom/appyet/mobile/manager/bo;->d(Lcom/appyet/mobile/data/Feed;)Z

    iget-object v0, p0, Lcom/appyet/mobile/activity/ce;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f0b

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

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
