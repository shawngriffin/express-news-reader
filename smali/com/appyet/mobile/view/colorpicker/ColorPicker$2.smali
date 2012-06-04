.class Lcom/appyet/mobile/view/colorpicker/ColorPicker$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/appyet/mobile/view/colorpicker/ColorPicker;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/view/colorpicker/ColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker$2;->this$0:Lcom/appyet/mobile/view/colorpicker/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker$2;->this$0:Lcom/appyet/mobile/view/colorpicker/ColorPicker;

    #getter for: Lcom/appyet/mobile/view/colorpicker/ColorPicker;->mListener:Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;
    invoke-static {v0}, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->access$000(Lcom/appyet/mobile/view/colorpicker/ColorPicker;)Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;->colorChanged(I)V

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker$2;->this$0:Lcom/appyet/mobile/view/colorpicker/ColorPicker;

    invoke-virtual {v0}, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->dismiss()V

    return-void
.end method
