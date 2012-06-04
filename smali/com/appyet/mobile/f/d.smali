.class final Lcom/appyet/mobile/f/d;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/f/e;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/f/e;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/f/d;->a:Lcom/appyet/mobile/f/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/f/d;->a:Lcom/appyet/mobile/f/e;

    iget-object v0, v0, Lcom/appyet/mobile/f/e;->a:Lcom/appyet/mobile/f/f;

    invoke-static {v0}, Lcom/appyet/mobile/f/f;->a(Lcom/appyet/mobile/f/f;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/f/d;->a:Lcom/appyet/mobile/f/e;

    iget-object v0, v0, Lcom/appyet/mobile/f/e;->a:Lcom/appyet/mobile/f/f;

    invoke-static {v0}, Lcom/appyet/mobile/f/f;->a(Lcom/appyet/mobile/f/f;)Ljava/util/Stack;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/f/d;->a:Lcom/appyet/mobile/f/e;

    iget-object v0, v0, Lcom/appyet/mobile/f/e;->a:Lcom/appyet/mobile/f/f;

    invoke-static {v0}, Lcom/appyet/mobile/f/f;->a(Lcom/appyet/mobile/f/f;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/appyet/mobile/f/d;->a:Lcom/appyet/mobile/f/e;

    iget-object v0, v0, Lcom/appyet/mobile/f/e;->a:Lcom/appyet/mobile/f/f;

    invoke-static {v0}, Lcom/appyet/mobile/f/f;->a(Lcom/appyet/mobile/f/f;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/f/d;->a:Lcom/appyet/mobile/f/e;

    iget-object v0, v0, Lcom/appyet/mobile/f/e;->a:Lcom/appyet/mobile/f/f;

    invoke-static {v0}, Lcom/appyet/mobile/f/f;->a(Lcom/appyet/mobile/f/f;)Ljava/util/Stack;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, p0, Lcom/appyet/mobile/f/d;->a:Lcom/appyet/mobile/f/e;

    iget-object v0, v0, Lcom/appyet/mobile/f/e;->a:Lcom/appyet/mobile/f/f;

    invoke-static {v0}, Lcom/appyet/mobile/f/f;->a(Lcom/appyet/mobile/f/f;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/f/a;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/appyet/mobile/f/d;->a:Lcom/appyet/mobile/f/e;

    invoke-static {v1}, Lcom/appyet/mobile/f/e;->a(Lcom/appyet/mobile/f/e;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/appyet/mobile/f/a;->c:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/appyet/mobile/f/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appyet/mobile/f/d;->a:Lcom/appyet/mobile/f/e;

    invoke-static {v1, v0}, Lcom/appyet/mobile/f/e;->a(Lcom/appyet/mobile/f/e;Lcom/appyet/mobile/f/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v1, p0, Lcom/appyet/mobile/f/d;->a:Lcom/appyet/mobile/f/e;

    invoke-static {v1}, Lcom/appyet/mobile/f/e;->a(Lcom/appyet/mobile/f/e;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, v0, Lcom/appyet/mobile/f/a;->c:Landroid/widget/ImageView;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, v0, Lcom/appyet/mobile/f/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/appyet/mobile/f/d;->a:Lcom/appyet/mobile/f/e;

    invoke-static {v3}, Lcom/appyet/mobile/f/e;->b(Lcom/appyet/mobile/f/e;)I

    move-result v3

    if-lt v1, v3, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/appyet/mobile/f/d;->a:Lcom/appyet/mobile/f/e;

    invoke-static {v3}, Lcom/appyet/mobile/f/e;->b(Lcom/appyet/mobile/f/e;)I

    move-result v3

    if-lt v1, v3, :cond_2

    new-instance v1, Lcom/appyet/mobile/f/b;

    iget-object v3, p0, Lcom/appyet/mobile/f/d;->a:Lcom/appyet/mobile/f/e;

    iget-object v4, v0, Lcom/appyet/mobile/f/a;->c:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/appyet/mobile/f/a;->b:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v4, v0}, Lcom/appyet/mobile/f/b;-><init>(Lcom/appyet/mobile/f/e;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/f/d;->a:Lcom/appyet/mobile/f/e;

    invoke-static {v0}, Lcom/appyet/mobile/f/e;->c(Lcom/appyet/mobile/f/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
