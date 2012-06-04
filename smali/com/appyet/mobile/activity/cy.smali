.class final Lcom/appyet/mobile/activity/cy;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/appyet/mobile/activity/ImageViewerActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ImageViewerActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/mobile/activity/cy;->c:Lcom/appyet/mobile/activity/ImageViewerActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/mobile/activity/cy;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/activity/cy;->b:Ljava/lang/String;

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 10

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/cy;->c:Lcom/appyet/mobile/activity/ImageViewerActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ImageViewerActivity;->b(Lcom/appyet/mobile/activity/ImageViewerActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cy;->c:Lcom/appyet/mobile/activity/ImageViewerActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ImageViewerActivity;->a(Lcom/appyet/mobile/activity/ImageViewerActivity;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/appyet/mobile/manager/bo;->c(J)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/cy;->c:Lcom/appyet/mobile/activity/ImageViewerActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ImageViewerActivity;->b(Lcom/appyet/mobile/activity/ImageViewerActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getCacheGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/manager/bo;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/cy;->c:Lcom/appyet/mobile/activity/ImageViewerActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ImageViewerActivity;->b(Lcom/appyet/mobile/activity/ImageViewerActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->l:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/ch;->e()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FileCache;

    iget-object v4, p0, Lcom/appyet/mobile/activity/cy;->c:Lcom/appyet/mobile/activity/ImageViewerActivity;

    invoke-static {v4}, Lcom/appyet/mobile/activity/ImageViewerActivity;->b(Lcom/appyet/mobile/activity/ImageViewerActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v4

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FileCache;->getFileCacheName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/appyet/mobile/activity/cy;->c:Lcom/appyet/mobile/activity/ImageViewerActivity;

    invoke-static {v6}, Lcom/appyet/mobile/activity/ImageViewerActivity;->b(Lcom/appyet/mobile/activity/ImageViewerActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v6

    iget-object v6, v6, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v6}, Lcom/appyet/mobile/manager/f;->r()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/appyet/mobile/manager/ch;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "%03d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/appyet/mobile/activity/cy;->c:Lcom/appyet/mobile/activity/ImageViewerActivity;

    invoke-static {v5}, Lcom/appyet/mobile/activity/ImageViewerActivity;->b(Lcom/appyet/mobile/activity/ImageViewerActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v5

    iget-object v5, v5, Lcom/appyet/mobile/context/ApplicationContext;->l:Lcom/appyet/mobile/manager/ch;

    iget-object v6, p0, Lcom/appyet/mobile/activity/cy;->c:Lcom/appyet/mobile/activity/ImageViewerActivity;

    invoke-static {v6}, Lcom/appyet/mobile/activity/ImageViewerActivity;->b(Lcom/appyet/mobile/activity/ImageViewerActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v6

    iget-object v6, v6, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FileCache;->getFileCacheName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FileCache;->getFileCacheName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/ch;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/appyet/mobile/activity/cy;->c:Lcom/appyet/mobile/activity/ImageViewerActivity;

    invoke-static {v5}, Lcom/appyet/mobile/activity/ImageViewerActivity;->c(Lcom/appyet/mobile/activity/ImageViewerActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FileCache;->getFileCacheName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FileCache;->getFileCacheName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".png"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/cy;->b:Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/activity/cy;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/mobile/activity/cy;->a:Z

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/mobile/activity/cy;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    iput-boolean v2, p0, Lcom/appyet/mobile/activity/cy;->a:Z

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/cy;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 0

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/appyet/mobile/activity/cy;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cy;->c:Lcom/appyet/mobile/activity/ImageViewerActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ImageViewerActivity;->b(Lcom/appyet/mobile/activity/ImageViewerActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->l:Lcom/appyet/mobile/manager/ch;

    iget-object v2, p0, Lcom/appyet/mobile/activity/cy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/manager/ch;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cy;->c:Lcom/appyet/mobile/activity/ImageViewerActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/activity/ImageViewerActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/cy;->c:Lcom/appyet/mobile/activity/ImageViewerActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/ImageViewerActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/cy;->c:Lcom/appyet/mobile/activity/ImageViewerActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ImageViewerActivity;->b(Lcom/appyet/mobile/activity/ImageViewerActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    const/high16 v1, 0x7f0b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
