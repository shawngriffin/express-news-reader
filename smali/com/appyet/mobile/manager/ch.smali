.class public final Lcom/appyet/mobile/manager/ch;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/appyet/mobile/context/ApplicationContext;

.field private f:I

.field private g:J

.field private h:J

.field private i:Lcom/appyet/mobile/manager/cl;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/appyet/mobile/manager/ch;->e:Lcom/appyet/mobile/context/ApplicationContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/manager/ch;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appyet/mobile/manager/ch;->e:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/manager/ch;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/mobile/manager/ch;->e:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->r()I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/manager/ch;->f:I

    return-void
.end method

.method private i(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/appyet/mobile/manager/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/appyet/mobile/manager/cl;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/ch;->i:Lcom/appyet/mobile/manager/cl;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/appyet/mobile/manager/ch;Ljava/lang/String;I)V
    .locals 12

    const/4 v7, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/manager/ch;->e:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1, p2}, Lcom/appyet/mobile/manager/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p0, Lcom/appyet/mobile/manager/ch;->f:I

    if-lt v3, v4, :cond_0

    iget v4, p0, Lcom/appyet/mobile/manager/ch;->f:I

    if-lt v2, v4, :cond_0

    if-gt v3, p3, :cond_2

    if-le v2, p3, :cond_0

    :cond_2
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v2, p3, :cond_3

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v2, p3, :cond_4

    :cond_3
    const-wide/high16 v2, 0x4000

    int-to-double v4, p3

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v8, 0x3fe0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {p1, p2}, Lcom/appyet/mobile/manager/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    int-to-float v1, p3

    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    move-object v2, v0

    :goto_1
    :try_start_2
    invoke-direct {p0, p2}, Lcom/appyet/mobile/manager/ch;->j(Ljava/lang/String;)Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v7

    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {v2, v1, v3, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_8

    if-eqz v7, :cond_5

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_7
    :try_start_5
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    :goto_3
    :try_start_6
    invoke-direct {p0, p2}, Lcom/appyet/mobile/manager/ch;->i(Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v2, :cond_8

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v7

    move-object v1, v7

    :goto_5
    :try_start_8
    invoke-direct {p0, p2}, Lcom/appyet/mobile/manager/ch;->i(Ljava/lang/String;)Z

    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->f()V

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v1, :cond_a

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_a
    :goto_6
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    move-object v1, v7

    :goto_7
    if-eqz v1, :cond_c

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_c
    :goto_8
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_8

    :catchall_1
    move-exception v1

    move-object v2, v7

    move-object v10, v0

    move-object v0, v1

    move-object v1, v7

    move-object v7, v10

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v7

    move-object v7, v0

    move-object v0, v10

    goto :goto_7

    :catchall_3
    move-exception v1

    move-object v10, v1

    move-object v1, v7

    move-object v7, v0

    move-object v0, v10

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v10, v1

    move-object v1, v2

    move-object v2, v7

    move-object v7, v10

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v1

    move-object v2, v7

    move-object v10, v0

    move-object v0, v1

    move-object v1, v7

    move-object v7, v10

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v10, v1

    move-object v1, v7

    move-object v7, v0

    move-object v0, v10

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v10, v1

    move-object v1, v7

    move-object v7, v0

    move-object v0, v10

    goto :goto_5

    :catch_9
    move-exception v1

    move-object v2, v7

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_3

    :catch_a
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    move-object v11, v2

    move-object v2, v7

    move-object v7, v11

    goto/16 :goto_3

    :catch_b
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    move-object v11, v2

    move-object v2, v7

    move-object v7, v11

    goto/16 :goto_3
.end method

.method public final a(Lcom/appyet/mobile/manager/ch;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1, p2}, Lcom/appyet/mobile/manager/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, p3}, Lcom/appyet/mobile/manager/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    const-wide/16 v2, 0x0

    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_6
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_7
    :goto_3
    :try_start_a
    throw v0

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :catch_6
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public final a(Lcom/appyet/mobile/manager/cl;)V
    .locals 1

    sget-object v0, Lcom/appyet/mobile/manager/cl;->b:Lcom/appyet/mobile/manager/cl;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/ch;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/appyet/mobile/manager/ch;->i:Lcom/appyet/mobile/manager/cl;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/ch;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appyet/mobile/manager/ch;->g:J

    iput-wide v0, p0, Lcom/appyet/mobile/manager/ch;->h:J

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v3, p0, Lcom/appyet/mobile/manager/ch;->g:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/appyet/mobile/manager/ch;->g:J

    iget-wide v3, p0, Lcom/appyet/mobile/manager/ch;->h:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/appyet/mobile/manager/ch;->h:J

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    move v0, v1

    :cond_2
    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    const/16 v3, 0x400

    :try_start_5
    new-array v3, v3, [B

    :goto_2
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_8

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v2

    move-object v3, v4

    :goto_3
    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_5
    :goto_4
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_7
    :goto_6
    move v0, v1

    goto/16 :goto_1

    :cond_8
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :goto_7
    if-eqz p1, :cond_2

    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_7

    :cond_9
    if-eqz p1, :cond_a

    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_a
    :goto_8
    move v0, v1

    goto/16 :goto_1

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_8

    :catch_6
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_9
    if-eqz v3, :cond_b

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_b
    :goto_a
    if-eqz p1, :cond_c

    :try_start_e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :cond_c
    :goto_b
    throw v0

    :catch_7
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_5

    :catch_8
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_6

    :catch_9
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_a

    :catch_a
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v3, v4

    goto :goto_9

    :catch_b
    move-exception v0

    move-object v0, v3

    goto :goto_3

    :catch_c
    move-exception v0

    move-object v0, v2

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/appyet/mobile/manager/ch;->e:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0, p1}, Lcom/appyet/mobile/manager/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p0, Lcom/appyet/mobile/manager/ch;->f:I

    if-lt v2, v4, :cond_0

    iget v4, p0, Lcom/appyet/mobile/manager/ch;->f:I

    if-lt v3, v4, :cond_0

    if-gt v2, p2, :cond_2

    if-le v3, p2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    new-instance v4, Lcom/appyet/mobile/c/c;

    invoke-direct {v4}, Lcom/appyet/mobile/c/c;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/appyet/mobile/c/c;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/ch;->e:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v1, v4}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/c;)Lcom/appyet/mobile/c/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v1

    :try_start_2
    invoke-static {v1}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/d;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v5, v1, Lcom/appyet/mobile/c/d;->b:Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    const/16 v2, 0x2000

    :try_start_5
    new-array v2, v2, [B

    :goto_1
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_5
    :goto_5
    invoke-static {v1}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    goto/16 :goto_0

    :cond_6
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :goto_6
    if-eqz v5, :cond_7

    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :cond_7
    :goto_7
    invoke-static {v1}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    :goto_8
    if-eqz v4, :cond_8

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :cond_8
    :goto_9
    if-eqz v5, :cond_9

    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :cond_9
    :goto_a
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    move-object v2, v1

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v4, v2

    move-object v2, v1

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v2, v1

    move-object v5, v4

    move-object v4, v3

    goto :goto_8

    :catch_7
    move-exception v2

    goto :goto_3

    :catch_8
    move-exception v1

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto :goto_2

    :catch_9
    move-exception v1

    move-object v1, v2

    move-object v4, v2

    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    goto :goto_2

    :catch_a
    move-exception v4

    move-object v4, v2

    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    goto :goto_2

    :catch_b
    move-exception v4

    move-object v4, v5

    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    goto :goto_2
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/appyet/mobile/manager/ch;->h:J

    return-wide v0
.end method

.method public final b(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final b(Lcom/appyet/mobile/manager/ch;Ljava/lang/String;I)V
    .locals 14

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p2}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/manager/ch;->e:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual/range {p1 .. p2}, Lcom/appyet/mobile/manager/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, p0, Lcom/appyet/mobile/manager/ch;->f:I

    if-lt v4, v5, :cond_0

    iget v5, p0, Lcom/appyet/mobile/manager/ch;->f:I

    if-lt v1, v5, :cond_0

    move/from16 v0, p3

    if-gt v4, v0, :cond_2

    move/from16 v0, p3

    if-le v1, v0, :cond_0

    :cond_2
    const/4 v1, 0x1

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p3

    if-gt v4, v0, :cond_3

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p3

    if-le v4, v0, :cond_4

    :cond_3
    const-wide/high16 v4, 0x4000

    move/from16 v0, p3

    int-to-double v6, v0

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v11, v1

    div-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    const-wide/high16 v11, 0x3fe0

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    div-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v1, v6

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v1, v4

    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual/range {p1 .. p2}, Lcom/appyet/mobile/manager/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move/from16 v0, p3

    int-to-float v2, v0

    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v2, v3

    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    cmpl-float v4, v3, v2

    if-gtz v4, :cond_14

    :goto_1
    const/high16 v3, 0x3f80

    cmpl-float v3, v2, v3

    if-lez v3, :cond_8

    move-object v4, v1

    :goto_2
    :try_start_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    float-to-int v5, v5

    :goto_3
    invoke-static {v4, v5, v2, v3, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v3

    :try_start_3
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/appyet/mobile/manager/ch;->j(Ljava/lang/String;)Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v5

    :try_start_4
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5f

    invoke-virtual {v3, v2, v6, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_9

    if-eqz v5, :cond_5

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_8
    :try_start_6
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v4

    goto :goto_2

    :cond_9
    :try_start_7
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_7

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    const/high16 v6, 0x4000

    div-float/2addr v2, v6

    float-to-int v2, v2

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v3, v2

    move-object v4, v9

    move-object v5, v10

    move-object v2, v8

    :goto_5
    :try_start_8
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/appyet/mobile/manager/ch;->i(Ljava/lang/String;)Z

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v5, :cond_a

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_a
    :goto_6
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :goto_7
    :try_start_a
    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->f()V

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/appyet/mobile/manager/ch;->i(Ljava/lang/String;)Z

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v10, :cond_d

    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_d
    :goto_8
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :goto_9
    if-eqz v10, :cond_10

    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    if-eqz v9, :cond_12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_13
    throw v1

    :catch_2
    move-exception v2

    goto/16 :goto_4

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v3

    goto :goto_a

    :catchall_1
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_9

    :catchall_2
    move-exception v2

    move-object v9, v4

    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    goto :goto_9

    :catchall_3
    move-exception v2

    move-object v8, v3

    move-object v9, v4

    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    goto :goto_9

    :catchall_4
    move-exception v2

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_9

    :catchall_5
    move-exception v1

    move-object v8, v2

    move-object v9, v4

    move-object v10, v5

    move-object v2, v3

    goto :goto_9

    :catch_6
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_7

    :catch_7
    move-exception v2

    move-object v9, v4

    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    goto :goto_7

    :catch_8
    move-exception v2

    move-object v8, v3

    move-object v9, v4

    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    goto :goto_7

    :catch_9
    move-exception v2

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_7

    :catch_a
    move-exception v2

    move-object v3, v1

    move-object v4, v9

    move-object v5, v10

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_5

    :catch_b
    move-exception v2

    move-object v3, v1

    move-object v5, v10

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_5

    :catch_c
    move-exception v2

    move-object v5, v10

    move-object v13, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v13

    goto/16 :goto_5

    :catch_d
    move-exception v2

    move-object v13, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v13

    goto/16 :goto_5

    :cond_14
    move v2, v3

    goto/16 :goto_1
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/appyet/mobile/manager/ch;->g:J

    return-wide v0
.end method

.method public final c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/appyet/mobile/manager/ch;->f:I

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_0

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_0

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p0, Lcom/appyet/mobile/manager/ch;->f:I

    if-lt v3, v4, :cond_0

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, p0, Lcom/appyet/mobile/manager/ch;->f:I

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->f()V

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->f()V

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {v3}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final f(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/ch;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/ch;->d:Ljava/lang/String;

    return-void
.end method
