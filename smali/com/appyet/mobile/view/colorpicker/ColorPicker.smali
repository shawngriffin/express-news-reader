.class public Lcom/appyet/mobile/view/colorpicker/ColorPicker;
.super Landroid/app/Dialog;


# instance fields
.field private CancelListener:Landroid/view/View$OnClickListener;

.field private TransparentListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mInitialColor:I

.field private mListener:Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/appyet/mobile/view/colorpicker/ColorPicker$1;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/view/colorpicker/ColorPicker$1;-><init>(Lcom/appyet/mobile/view/colorpicker/ColorPicker;)V

    iput-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->CancelListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/view/colorpicker/ColorPicker$2;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/view/colorpicker/ColorPicker$2;-><init>(Lcom/appyet/mobile/view/colorpicker/ColorPicker;)V

    iput-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->TransparentListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->mListener:Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;

    iput p3, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->mInitialColor:I

    iput-object p1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/appyet/mobile/view/colorpicker/ColorPicker;)Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->mListener:Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/appyet/mobile/view/colorpicker/ColorPicker$3;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/view/colorpicker/ColorPicker$3;-><init>(Lcom/appyet/mobile/view/colorpicker/ColorPicker;)V

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->setContentView(I)V

    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;

    iget v2, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->mInitialColor:I

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->setSelectedColor(I)V

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/colorpicker/ColorPickerView;->setOnColorChangedListener(Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d001b

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->CancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d001a

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->TransparentListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
