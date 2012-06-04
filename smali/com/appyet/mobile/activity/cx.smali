.class final Lcom/appyet/mobile/activity/cx;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/CommentsActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/CommentsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    new-instance v1, Lcom/appyet/mobile/data/Feed;

    invoke-direct {v1}, Lcom/appyet/mobile/data/Feed;-><init>()V

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/CommentsActivity;->a(Lcom/appyet/mobile/activity/CommentsActivity;Lcom/appyet/mobile/data/Feed;)Lcom/appyet/mobile/data/Feed;

    iget-object v0, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/CommentsActivity;->b(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/data/Feed;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/CommentsActivity;->a(Lcom/appyet/mobile/activity/CommentsActivity;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    new-instance v0, Lcom/appyet/mobile/a/x;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/CommentsActivity;->c(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appyet/mobile/a/x;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/CommentsActivity;->b(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/a/x;->a(Lcom/appyet/mobile/data/Feed;)Lcom/appyet/mobile/a/af;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->b()Lcom/appyet/mobile/a/av;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/a/av;->a:Lcom/appyet/mobile/a/av;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->a()Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/Feed$FeedTypeEnum;->RSS:Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setFeedType(Lcom/appyet/mobile/data/Feed$FeedTypeEnum;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->b()Lcom/appyet/mobile/a/av;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/a/av;->b:Lcom/appyet/mobile/a/av;

    if-ne v1, v2, :cond_2

    :cond_1
    new-instance v0, Lcom/appyet/mobile/a/w;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/CommentsActivity;->c(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appyet/mobile/a/w;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/CommentsActivity;->b(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/a/w;->a(Lcom/appyet/mobile/data/Feed;)Lcom/appyet/mobile/a/af;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->b()Lcom/appyet/mobile/a/av;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/a/av;->a:Lcom/appyet/mobile/a/av;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->a()Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/Feed$FeedTypeEnum;->ATOM:Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setFeedType(Lcom/appyet/mobile/data/Feed$FeedTypeEnum;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->b()Lcom/appyet/mobile/a/av;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/a/av;->b:Lcom/appyet/mobile/a/av;

    if-ne v1, v2, :cond_4

    :cond_3
    new-instance v0, Lcom/appyet/mobile/a/bj;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/CommentsActivity;->c(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appyet/mobile/a/bj;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/CommentsActivity;->b(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/a/bj;->a(Lcom/appyet/mobile/data/Feed;)Lcom/appyet/mobile/a/af;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->b()Lcom/appyet/mobile/a/av;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/a/av;->a:Lcom/appyet/mobile/a/av;

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->a()Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/Feed$FeedTypeEnum;->RDF:Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setFeedType(Lcom/appyet/mobile/data/Feed$FeedTypeEnum;)V

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->a()Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->a()Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedItems()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/CommentsActivity;->a(Lcom/appyet/mobile/activity/CommentsActivity;Lcom/appyet/mobile/data/Feed;)Lcom/appyet/mobile/data/Feed;

    :goto_0
    return-object v3

    :cond_7
    iget-object v1, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->a()Lcom/appyet/mobile/data/Feed;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/appyet/mobile/activity/CommentsActivity;->a(Lcom/appyet/mobile/activity/CommentsActivity;Lcom/appyet/mobile/data/Feed;)Lcom/appyet/mobile/data/Feed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/cx;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/CommentsActivity;->f(Lcom/appyet/mobile/activity/CommentsActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 6

    const/high16 v5, 0x7f0b

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/CommentsActivity;->b(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/data/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/CommentsActivity;->finish()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-virtual {v1, v5}, Lcom/appyet/mobile/activity/CommentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/CommentsActivity;->b(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/data/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/CommentsActivity;->b(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/CommentsActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    new-instance v1, Lcom/appyet/mobile/d/k;

    iget-object v2, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    iget-object v3, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v3}, Lcom/appyet/mobile/activity/CommentsActivity;->b(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/data/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getFeedItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/appyet/mobile/d/k;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/CommentsActivity;->a(Lcom/appyet/mobile/activity/CommentsActivity;Lcom/appyet/mobile/d/k;)Lcom/appyet/mobile/d/k;

    iget-object v0, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/CommentsActivity;->d(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/d/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/CommentsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/CommentsActivity;->e(Lcom/appyet/mobile/activity/CommentsActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-virtual {v1, v5}, Lcom/appyet/mobile/activity/CommentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cx;->a:Lcom/appyet/mobile/activity/CommentsActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/CommentsActivity;->finish()V

    goto :goto_0
.end method
