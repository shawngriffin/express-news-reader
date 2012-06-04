.class final Lcom/appyet/mobile/activity/de;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/de;->a:Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/activity/de;->a:Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->a(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)Lcom/appyet/mobile/d/v;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/appyet/mobile/d/v;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getIsSelected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setIsSelected(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/de;->a:Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;->a(Lcom/appyet/mobile/activity/ManageCategoryPickerActivity;)Lcom/appyet/mobile/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/v;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
