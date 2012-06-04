.class Lcom/appyet/mobile/view/colorpicker/ColorPicker$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;


# instance fields
.field final synthetic this$0:Lcom/appyet/mobile/view/colorpicker/ColorPicker;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/view/colorpicker/ColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker$3;->this$0:Lcom/appyet/mobile/view/colorpicker/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker$3;->this$0:Lcom/appyet/mobile/view/colorpicker/ColorPicker;

    #getter for: Lcom/appyet/mobile/view/colorpicker/ColorPicker;->mListener:Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;
    invoke-static {v0}, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->access$000(Lcom/appyet/mobile/view/colorpicker/ColorPicker;)Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;->colorChanged(I)V

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker$3;->this$0:Lcom/appyet/mobile/view/colorpicker/ColorPicker;

    invoke-virtual {v0}, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->dismiss()V

    return-void
.end method
