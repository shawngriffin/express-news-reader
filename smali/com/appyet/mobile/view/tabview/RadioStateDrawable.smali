.class public Lcom/appyet/mobile/view/tabview/RadioStateDrawable;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field public static mWidth:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field mContext:Landroid/content/Context;

.field private mHighlight:Z

.field private mHighlightBitmap:Landroid/graphics/Bitmap;

.field private mLabel:Ljava/lang/String;

.field private mShader:Landroid/graphics/Shader;

.field private mTextShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ZIZ)V
    .locals 6

    const/4 v5, 0x1

    const v4, 0x7f090001

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-boolean p4, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mHighlight:Z

    iput-object p1, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    if-eqz p6, :cond_0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, p5}, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->setShade(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget v1, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mWidth:I

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mHighlightBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mWidth:I

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v4, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mTextShader:Landroid/graphics/Shader;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-boolean v4, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mHighlight:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mHighlightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v4, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mLabel:Ljava/lang/String;

    sget v5, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-int/2addr v1, v2

    iget-object v6, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {p1, v4, v5, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mHighlightBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mHighlightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mHighlightBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setShade(I)V
    .locals 10

    const/high16 v9, 0x4120

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v2, v0, v8

    const v3, 0x3f666666

    mul-float/2addr v2, v3

    aput v2, v0, v8

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    new-array v5, v8, [I

    const/4 v2, 0x0

    aput p1, v5, v2

    const/4 v2, 0x1

    aput v0, v5, v2

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mShader:Landroid/graphics/Shader;

    iget-boolean v0, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mHighlight:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/LinearGradient;

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    move v4, v9

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mTextShader:Landroid/graphics/Shader;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    new-array v5, v8, [I

    fill-array-data v5, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    move v4, v9

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mTextShader:Landroid/graphics/Shader;

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0xcct 0xcct 0xcct 0xfft
        0xcct 0xcct 0xcct 0xfft
    .end array-data
.end method
