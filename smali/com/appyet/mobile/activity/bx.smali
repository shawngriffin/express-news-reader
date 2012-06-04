.class final Lcom/appyet/mobile/activity/bx;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/appyet/mobile/c/i;

.field private synthetic c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput-object p2, p0, Lcom/appyet/mobile/activity/bx;->a:Ljava/lang/String;

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/bx;->a:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/appyet/mobile/activity/bx;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/appyet/mobile/c/c;

    invoke-direct {v0}, Lcom/appyet/mobile/c/c;-><init>()V

    iget-object v1, p0, Lcom/appyet/mobile/activity/bx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/c/c;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->b(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/c;)Lcom/appyet/mobile/c/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    invoke-static {v1}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/appyet/mobile/h/c;

    iget-object v3, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v3}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->b(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/appyet/mobile/h/c;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iget-object v3, v1, Lcom/appyet/mobile/c/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/h/c;->a(Ljava/io/InputStream;)Lcom/appyet/mobile/c/i;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/bx;->b:Lcom/appyet/mobile/c/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :cond_0
    :try_start_3
    invoke-static {v1}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v3, v2

    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/appyet/mobile/activity/bx;->b:Lcom/appyet/mobile/c/i;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appyet/mobile/activity/bx;->b:Lcom/appyet/mobile/c/i;

    invoke-virtual {v0}, Lcom/appyet/mobile/c/i;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->b(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/activity/bx;->b:Lcom/appyet/mobile/c/i;

    invoke-virtual {v1}, Lcom/appyet/mobile/c/i;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/c/j;

    invoke-virtual {v1}, Lcom/appyet/mobile/c/j;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/c/j;->a(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_3
    return-object v2

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_7
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-static {v1}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    move-object v3, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    invoke-static {v1}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    throw v0

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/appyet/mobile/activity/bx;->a:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4, v1, v3}, Lcom/appyet/mobile/e/g;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :cond_6
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    new-instance v0, Lcom/appyet/mobile/h/c;

    iget-object v3, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v3}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->b(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/appyet/mobile/h/c;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/h/c;->a(Ljava/io/InputStream;)Lcom/appyet/mobile/c/i;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/bx;->b:Lcom/appyet/mobile/c/i;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-object v3, v1

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_3

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v2, :cond_8

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_8
    :goto_7
    throw v0

    :catch_5
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_6

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    goto/16 :goto_5

    :catch_7
    move-exception v0

    goto/16 :goto_4

    :cond_9
    move-object v3, v2

    goto/16 :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/bx;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->g(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->h(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    new-instance v1, Lcom/appyet/mobile/d/c;

    iget-object v2, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    iget-object v3, p0, Lcom/appyet/mobile/activity/bx;->b:Lcom/appyet/mobile/c/i;

    invoke-virtual {v3}, Lcom/appyet/mobile/c/i;->a()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/appyet/mobile/d/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->a(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;Lcom/appyet/mobile/d/c;)Lcom/appyet/mobile/d/c;

    iget-object v0, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->d(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->c(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Lcom/appyet/mobile/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->d(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->e(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->f(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->g(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    const/high16 v2, 0x7f0b

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->d(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/bx;->c:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->e(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
