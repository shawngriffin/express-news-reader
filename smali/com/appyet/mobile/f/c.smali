.class public final Lcom/appyet/mobile/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/Html$ImageGetter;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;IIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/mobile/f/c;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, p0, Lcom/appyet/mobile/f/c;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const/high16 v1, 0x41c0

    invoke-static {v0, v1}, Lcom/appyet/mobile/e/f;->a(Landroid/content/Context;F)I

    move-result v0

    sub-int v0, p2, v0

    iput v0, p0, Lcom/appyet/mobile/f/c;->b:I

    iput p3, p0, Lcom/appyet/mobile/f/c;->c:I

    iput-boolean p4, p0, Lcom/appyet/mobile/f/c;->d:Z

    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/f/c;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v0
.end method


# virtual methods
.method public final getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v1, 0x0

    const-wide/high16 v2, 0x4000

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/appyet/mobile/f/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    sget-object v0, Lcom/appyet/mobile/b/j;->a:Lcom/appyet/mobile/b/j;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appyet/mobile/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/appyet/mobile/f/c;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v4, v0}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/appyet/mobile/f/c;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v4, v0}, Lcom/appyet/mobile/manager/ch;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v4, v0

    :goto_1
    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/appyet/mobile/f/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/appyet/mobile/f/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/appyet/mobile/f/c;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v4, v0}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/appyet/mobile/f/c;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v4, v0}, Lcom/appyet/mobile/manager/ch;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image Cache Not Found: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v4, "appyet"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v4, v1

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lcom/appyet/mobile/f/c;->c:I

    if-lt v4, v5, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lcom/appyet/mobile/f/c;->c:I

    if-ge v4, v5, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/appyet/mobile/f/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-boolean v4, p0, Lcom/appyet/mobile/f/c;->d:Z

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/appyet/mobile/f/c;->b:I

    int-to-double v4, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    cmpl-double v6, v4, v2

    if-lez v6, :cond_a

    :cond_9
    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v2

    double-to-int v6, v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v2, v7

    double-to-int v2, v2

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0}, Lcom/appyet/mobile/f/c;->a()Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_a
    move-wide v2, v4

    goto :goto_2
.end method
