.class public Lcom/appyet/mobile/view/colorpicker/ColorPickerView;
.super Landroid/view/View;


# static fields
.field private static final CENTER_RADIUS:I = 0x30

.field private static final CENTER_X:I = 0xa0

.field private static final CENTER_Y:I = 0xa0

.field private static final PI:F = 3.1415925f


# instance fields
.field private mCenterPaint:Landroid/graphics/Paint;

.field private mColors:[I

.field private mHighlightCenter:Z

.field private mListener:Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mTrackingCenter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->Init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->Init()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->Init(Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;I)V

    return-void
.end method

.method private Init()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mColors:[I

    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mColors:[I

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4280

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0xfft 0x0t 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0x0t 0xfft 0x0t 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0x0t 0xfft 0xfft
    .end array-data
.end method

.method private Init(Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;I)V
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->Init()V

    iput-object p1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mListener:Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private ave(IIF)I
    .locals 1

    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private interpColor([IF)I
    .locals 7

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    goto :goto_0

    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    aget v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget v1, p1, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-direct {p0, v3, v4, v0}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->ave(IIF)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-direct {p0, v4, v5, v0}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->ave(IIF)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->ave(IIF)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-direct {p0, v2, v1, v0}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->ave(IIF)I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v5, 0x4240

    const/high16 v2, 0x4320

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v1, Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v3, v0

    invoke-direct {v1, v2, v3, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mTrackingCenter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mHighlightCenter:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    iget-object v1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    add-float/2addr v1, v5

    iget-object v2, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 v0, 0x140

    invoke-virtual {p0, v0, v0}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v2, 0x0

    const/high16 v4, 0x4320

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float v3, v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float v4, v0, v4

    mul-float v0, v3, v3

    mul-float v5, v4, v4

    add-float/2addr v0, v5

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4048

    cmpg-double v0, v5, v7

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_0
    iput-boolean v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mTrackingCenter:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mHighlightCenter:Z

    invoke-virtual {p0}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->invalidate()V

    goto :goto_1

    :cond_2
    :pswitch_1
    iget-boolean v2, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mTrackingCenter:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mHighlightCenter:Z

    if-eq v2, v0, :cond_0

    iput-boolean v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mHighlightCenter:Z

    invoke-virtual {p0}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->invalidate()V

    goto :goto_1

    :cond_3
    float-to-double v4, v4

    float-to-double v2, v3

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const v2, 0x40c90fda

    div-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    const/high16 v2, 0x3f80

    add-float/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mColors:[I

    invoke-direct {p0, v3, v0}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->interpColor([IF)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->invalidate()V

    goto :goto_1

    :pswitch_2
    iget-boolean v3, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mTrackingCenter:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mListener:Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;

    iget-object v3, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;->colorChanged(I)V

    :cond_5
    iput-boolean v2, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mTrackingCenter:Z

    invoke-virtual {p0}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->invalidate()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnColorChangedListener(Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mListener:Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
