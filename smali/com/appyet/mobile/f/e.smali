.class public final Lcom/appyet/mobile/f/e;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/appyet/mobile/f/f;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;

.field private c:Landroid/os/Handler;

.field private d:Ljava/util/Map;

.field private e:I

.field private f:Lcom/appyet/mobile/f/d;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/f/e;->d:Ljava/util/Map;

    new-instance v0, Lcom/appyet/mobile/f/f;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/f/f;-><init>(Lcom/appyet/mobile/f/e;)V

    iput-object v0, p0, Lcom/appyet/mobile/f/e;->a:Lcom/appyet/mobile/f/f;

    new-instance v0, Lcom/appyet/mobile/f/d;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/f/d;-><init>(Lcom/appyet/mobile/f/e;)V

    iput-object v0, p0, Lcom/appyet/mobile/f/e;->f:Lcom/appyet/mobile/f/d;

    iput-object p1, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, p0, Lcom/appyet/mobile/f/e;->f:Lcom/appyet/mobile/f/d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/f/d;->setPriority(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/f/e;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->r()I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/f/e;->e:I

    return-void
.end method

.method private a(Lcom/appyet/mobile/f/a;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p1, Lcom/appyet/mobile/f/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v1, v3}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    :cond_0
    invoke-virtual {v1, v3}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v3}, Lcom/appyet/mobile/manager/ch;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->ar()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    :try_start_1
    new-instance v1, Lcom/appyet/mobile/c/c;

    invoke-direct {v1}, Lcom/appyet/mobile/c/c;-><init>()V

    iget-object v2, p1, Lcom/appyet/mobile/f/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/c/c;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v2, v1}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/c;)Lcom/appyet/mobile/c/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :try_start_2
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/d;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v2, Lcom/appyet/mobile/c/d;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/appyet/mobile/e/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v4, v2, Lcom/appyet/mobile/c/d;->e:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-ltz v1, :cond_6

    iget-wide v4, v2, Lcom/appyet/mobile/c/d;->e:J

    const-wide/32 v6, 0x100000

    cmp-long v1, v4, v6

    if-gtz v1, :cond_6

    iget-object v1, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    iget-object v4, v2, Lcom/appyet/mobile/c/d;->b:Ljava/io/InputStream;

    invoke-virtual {v1, v4, v3}, Lcom/appyet/mobile/manager/ch;->a(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    iget-object v1, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->C:I

    iget-object v4, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->D:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v4, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const/high16 v5, 0x41c0

    invoke-static {v4, v5}, Lcom/appyet/mobile/e/f;->a(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    iget-object v6, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v6, v6, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    sub-int/2addr v1, v4

    invoke-virtual {v5, v6, v3, v1}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/ch;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f09000d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v4, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v4, v3}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    iget-object v5, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v4, v5, v3, v1}, Lcom/appyet/mobile/manager/ch;->b(Lcom/appyet/mobile/manager/ch;Ljava/lang/String;I)V

    :goto_1
    iget-object v1, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v1, v3}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v1, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    :cond_4
    invoke-virtual {v1, v3}, Lcom/appyet/mobile/manager/ch;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    :try_start_3
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    :try_start_4
    iget-object v4, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    iget-object v5, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v4, v5, v3, v1}, Lcom/appyet/mobile/manager/ch;->b(Lcom/appyet/mobile/manager/ch;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    :try_start_5
    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_6
    :try_start_7
    iget-object v1, p1, Lcom/appyet/mobile/f/a;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/appyet/mobile/f/e;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p1, Lcom/appyet/mobile/f/a;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v1

    :try_start_8
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_3
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/appyet/mobile/f/e;Lcom/appyet/mobile/f/a;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/appyet/mobile/f/e;->a(Lcom/appyet/mobile/f/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/mobile/f/e;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/f/e;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/mobile/f/e;)I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/f/e;->e:I

    return v0
.end method

.method static synthetic c(Lcom/appyet/mobile/f/e;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/f/e;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/f/e;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/f/e;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    invoke-static {p1}, Lcom/appyet/mobile/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/mobile/f/e;->a:Lcom/appyet/mobile/f/f;

    invoke-virtual {v0, p2}, Lcom/appyet/mobile/f/f;->a(Landroid/widget/ImageView;)V

    :try_start_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/appyet/mobile/f/e;->d:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/appyet/mobile/f/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/appyet/mobile/f/a;-><init>(Lcom/appyet/mobile/f/e;Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/appyet/mobile/f/e;->a:Lcom/appyet/mobile/f/f;

    invoke-static {v1}, Lcom/appyet/mobile/f/f;->a(Lcom/appyet/mobile/f/f;)Ljava/util/Stack;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/appyet/mobile/f/e;->a:Lcom/appyet/mobile/f/f;

    invoke-static {v2}, Lcom/appyet/mobile/f/f;->a(Lcom/appyet/mobile/f/f;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appyet/mobile/f/e;->a:Lcom/appyet/mobile/f/f;

    invoke-static {v0}, Lcom/appyet/mobile/f/f;->a(Lcom/appyet/mobile/f/f;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/appyet/mobile/f/e;->f:Lcom/appyet/mobile/f/d;

    invoke-virtual {v0}, Lcom/appyet/mobile/f/d;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/f/e;->f:Lcom/appyet/mobile/f/d;

    invoke-virtual {v0}, Lcom/appyet/mobile/f/d;->start()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/f/e;->f:Lcom/appyet/mobile/f/d;

    invoke-virtual {v0}, Lcom/appyet/mobile/f/d;->interrupt()V

    return-void
.end method
