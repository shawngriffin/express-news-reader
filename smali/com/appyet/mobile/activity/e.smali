.class final Lcom/appyet/mobile/activity/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/e;->a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/appyet/mobile/view/colorpicker/ColorPicker;

    iget-object v1, p0, Lcom/appyet/mobile/activity/e;->a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    iget-object v2, p0, Lcom/appyet/mobile/activity/e;->a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    iget-object v3, p0, Lcom/appyet/mobile/activity/e;->a:Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;

    invoke-static {v3}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->a(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)Lcom/appyet/mobile/data/Category;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Category;->getColor()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/appyet/mobile/view/colorpicker/ColorPicker;-><init>(Landroid/content/Context;Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;I)V

    invoke-virtual {v0}, Lcom/appyet/mobile/view/colorpicker/ColorPicker;->show()V

    return-void
.end method
