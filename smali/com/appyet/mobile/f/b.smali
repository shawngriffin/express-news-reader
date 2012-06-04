.class final Lcom/appyet/mobile/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/widget/ImageView;

.field private c:Ljava/lang/String;

.field private synthetic d:Lcom/appyet/mobile/f/e;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/f/e;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/f/b;->d:Lcom/appyet/mobile/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appyet/mobile/f/b;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/appyet/mobile/f/b;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/appyet/mobile/f/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/f/b;->d:Lcom/appyet/mobile/f/e;

    invoke-static {v0}, Lcom/appyet/mobile/f/e;->a(Lcom/appyet/mobile/f/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/f/b;->b:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/f/b;->d:Lcom/appyet/mobile/f/e;

    invoke-static {v1}, Lcom/appyet/mobile/f/e;->a(Lcom/appyet/mobile/f/e;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/f/b;->b:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/f/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/f/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/f/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/f/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/f/b;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/f/b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/f/b;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appyet/mobile/f/b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/f/b;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/appyet/mobile/f/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->f()V

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V

    goto :goto_0
.end method
