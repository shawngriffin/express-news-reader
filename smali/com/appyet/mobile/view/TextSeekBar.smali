.class public Lcom/appyet/mobile/view/TextSeekBar;
.super Landroid/widget/SeekBar;


# instance fields
.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/appyet/mobile/view/TextSeekBar;->initLabelView()V

    return-void
.end method

.method private final initLabelView()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/view/TextSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/appyet/mobile/view/TextSeekBar;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TextSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x4140

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iget-object v1, p0, Lcom/appyet/mobile/view/TextSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/appyet/mobile/view/TextSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TextSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/appyet/mobile/view/TextSeekBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/appyet/mobile/view/TextSeekBar;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TextSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42d2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x4198

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iget-object v2, p0, Lcom/appyet/mobile/view/TextSeekBar;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/appyet/mobile/view/TextSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x21

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/view/TextSeekBar;->mText:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/appyet/mobile/view/TextSeekBar;->mText:Ljava/lang/String;

    goto :goto_0
.end method
