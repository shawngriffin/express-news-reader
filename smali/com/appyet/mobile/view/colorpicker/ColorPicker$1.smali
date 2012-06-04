.class Lcom/appyet/mobile/view/colorpicker/ColorPicker$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/appyet/mobile/view/colorpicker/ColorPicker;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/view/colorpicker/ColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker$1;->this$0:Lcom/appyet/mobile/view/colorpicker/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/colorpicker/ColorPicker$1;->this$0:Lcom/appyet/mobile/view/colorpicker/ColorPicker;

    invoke-virtual {v0}, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->dismiss()V

    return-void
.end method
