.class final Lcom/appyet/mobile/activity/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/p;->a:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/p;->a:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/p;->a:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/p;->a:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/f;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/c/f;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/p;->a:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->c(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/p;->a:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->b(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Lcom/appyet/mobile/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/i;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/p;->a:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->c(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/activity/p;->a:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->f(Ljava/util/List;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
