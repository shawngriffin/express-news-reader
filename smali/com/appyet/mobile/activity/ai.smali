.class final Lcom/appyet/mobile/activity/ai;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput-object p2, p0, Lcom/appyet/mobile/activity/ai;->a:Ljava/lang/String;

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->c(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->z:Lcom/appyet/mobile/manager/cf;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    iget-object v2, p0, Lcom/appyet/mobile/activity/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/cf;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->c(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->z:Lcom/appyet/mobile/manager/cf;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/cf;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->c(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/c/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/c/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/c/f;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/ai;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->g(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    new-instance v1, Lcom/appyet/mobile/d/i;

    iget-object v2, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    iget-object v3, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v3}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/appyet/mobile/d/i;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->a(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;Lcom/appyet/mobile/d/i;)Lcom/appyet/mobile/d/i;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->d(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->b(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Lcom/appyet/mobile/d/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->d(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->e(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->f(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    const/high16 v2, 0x7f0b

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->d(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->e(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->d(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ai;->b:Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;->e(Lcom/appyet/mobile/activity/ManageSourceGoogleReaderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
