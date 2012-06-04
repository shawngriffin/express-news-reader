.class public Lcom/appyet/mobile/view/tabview/TabBarButton;
.super Landroid/widget/RadioButton;


# instance fields
.field private mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

.field private mOffDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

.field private mOnDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOffDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOnDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    iput-object p1, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method

.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOffDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOnDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    iput-object p1, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method

.method private setStateImageDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/appyet/mobile/view/tabview/TabBarButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    invoke-virtual {v0, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v5, [I

    const v3, 0x10100a0

    aput v3, v2, v4

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v5, [I

    const v3, -0x10100a0

    aput v3, v2, v4

    invoke-virtual {v0, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v4, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/tabview/TabBarButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :array_0
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0x63t 0xfft 0xfet 0xfet
    .end array-data

    :array_1
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0x63t 0xfft 0xfet 0xfet
    .end array-data

    :array_2
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    :array_3
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    :array_4
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    :array_5
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method


# virtual methods
.method public recycle()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOffDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOffDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    invoke-virtual {v0}, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->recycle()V

    iput-object v1, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOffDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOnDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOnDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    invoke-virtual {v0}, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->recycle()V

    iput-object v1, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOnDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    :cond_1
    return-void
.end method

.method public setState(Ljava/lang/String;II)V
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/view/tabview/TabBarButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/appyet/mobile/view/tabview/TabBarButton;->setStateImageDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setState(Ljava/lang/String;IIIZ)V
    .locals 7

    new-instance v0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

    const/4 v4, 0x0

    move v2, p2

    move-object v3, p1

    move v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;-><init>(Landroid/content/Context;ILjava/lang/String;ZIZ)V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOffDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    new-instance v0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

    const/4 v4, 0x1

    move v2, p2

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;-><init>(Landroid/content/Context;ILjava/lang/String;ZIZ)V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOnDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOnDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOffDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    invoke-direct {p0, v0, v1}, Lcom/appyet/mobile/view/tabview/TabBarButton;->setStateImageDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setState(Ljava/lang/String;IZ)V
    .locals 7

    new-instance v0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

    const/4 v4, 0x0

    const v5, -0x333334

    move v2, p2

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;-><init>(Landroid/content/Context;ILjava/lang/String;ZIZ)V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOffDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    new-instance v0, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

    const/4 v4, 0x1

    const/16 v5, -0x100

    move v2, p2

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;-><init>(Landroid/content/Context;ILjava/lang/String;ZIZ)V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOnDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOnDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/TabBarButton;->mOffDrawable:Lcom/appyet/mobile/view/tabview/RadioStateDrawable;

    invoke-direct {p0, v0, v1}, Lcom/appyet/mobile/view/tabview/TabBarButton;->setStateImageDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
