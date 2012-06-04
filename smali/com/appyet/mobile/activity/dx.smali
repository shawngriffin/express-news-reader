.class final Lcom/appyet/mobile/activity/dx;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/PlayListActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/PlayListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/appyet/mobile/activity/ca;->a:[I

    sget-object v1, Lcom/appyet/mobile/activity/PlayListActivity;->c:Lcom/appyet/mobile/activity/bo;

    invoke-virtual {v1}, Lcom/appyet/mobile/activity/bo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->q:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v1, Lcom/appyet/mobile/context/ApplicationContext;->q:Ljava/util/Hashtable;

    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-object v2, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->q:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_1
    :goto_2
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v1, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bo;->n()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v1, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bo;->m()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->q:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/dx;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->k(Lcom/appyet/mobile/activity/PlayListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->f(Lcom/appyet/mobile/activity/PlayListActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    new-instance v1, Lcom/appyet/mobile/d/n;

    iget-object v2, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v3, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v3}, Lcom/appyet/mobile/activity/PlayListActivity;->g(Lcom/appyet/mobile/activity/PlayListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/appyet/mobile/d/n;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->j(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/view/TouchListView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v1, v1, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/TouchListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/n;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->k(Lcom/appyet/mobile/activity/PlayListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->k(Lcom/appyet/mobile/activity/PlayListActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/activity/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->b()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/n;->notifyDataSetChanged()V

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/activity/dx;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->e(Lcom/appyet/mobile/activity/PlayListActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
