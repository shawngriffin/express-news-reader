.class public Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView$OnColorChangedListener;


# instance fields
.field private mColorPicker:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;

.field private mListener:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;

.field private mOldColor:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->init(I)V

    return-void
.end method

.method private init(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-direct {p0, p1}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->setUp(I)V

    return-void
.end method

.method private setUp(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0b0153

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->setTitle(I)V

    const v0, 0x7f0d001f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;

    iput-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;

    const v0, 0x7f0d0020

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;

    iput-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mOldColor:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;

    const v0, 0x7f0d0021

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;

    iput-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mNewColor:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;

    iget-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mOldColor:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;

    invoke-virtual {v1}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;

    invoke-virtual {v2}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mOldColor:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v0, p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mNewColor:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v0, p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;

    invoke-virtual {v0, p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;->setOnColorChangedListener(Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView$OnColorChangedListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mOldColor:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    iget-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;

    invoke-virtual {v0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0020

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0021

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mListener:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mListener:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    iget-object v1, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mNewColor:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->dismiss()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mNewColor:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->mListener:Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    return-void
.end method
