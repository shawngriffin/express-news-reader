.class public Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;
.super Landroid/view/View;

# interfaces
.implements Lcom/appyet/mobile/view/viewflow/FlowIndicator;


# instance fields
.field private mCurrentScroll:I

.field private mFlowWidth:I

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintScrollBar:Landroid/graphics/Paint;

.field private mViewFlow:Lcom/appyet/mobile/view/viewflow/ViewFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintBackground:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintScrollBar:Landroid/graphics/Paint;

    iput v2, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mCurrentScroll:I

    iput v2, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mFlowWidth:I

    invoke-direct {p0, v1, v1}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->initColors(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintBackground:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintScrollBar:Landroid/graphics/Paint;

    iput v1, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mCurrentScroll:I

    iput v1, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mFlowWidth:I

    const v0, -0x22b4c7

    const v1, -0x9d9d9e

    invoke-direct {p0, v0, v1}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->initColors(II)V

    return-void
.end method

.method private initColors(II)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintBackground:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintScrollBar:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintScrollBar:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private measureHeight(I)I
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    return v0
.end method

.method private measureWidth(I)I
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mViewFlow:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mViewFlow:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    invoke-virtual {v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->getViewsCount()I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x4248

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v2, v1

    iget-object v1, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintBackground:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->getWidth()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->getHeight()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v1, 0x0

    iget v3, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mFlowWidth:I

    if-eqz v3, :cond_1

    if-eq v0, v5, :cond_1

    invoke-virtual {p0}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float v0, v1, v0

    iget v1, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mCurrentScroll:I

    int-to-float v1, v1

    iget v3, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mFlowWidth:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintScrollBar:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintScrollBar:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    float-to-int v3, v0

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintScrollBar:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public onScrolled(IIII)V
    .locals 1

    iput p1, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mCurrentScroll:I

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mViewFlow:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    invoke-virtual {v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mFlowWidth:I

    invoke-virtual {p0}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->invalidate()V

    return-void
.end method

.method public onSwitched(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public setColors(II)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintScrollBar:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintScrollBar:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->invalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->invalidate()V

    return-void
.end method

.method public setViewFlow(Lcom/appyet/mobile/view/viewflow/ViewFlow;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mViewFlow:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mViewFlow:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    invoke-virtual {v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->mFlowWidth:I

    invoke-virtual {p0}, Lcom/appyet/mobile/view/viewflow/LineFlowIndicator;->invalidate()V

    return-void
.end method
