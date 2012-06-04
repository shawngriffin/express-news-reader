.class final Lcom/appyet/mobile/activity/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/WidgetConfigureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/cs;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/activity/cs;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->a(Lcom/appyet/mobile/activity/WidgetConfigureActivity;)Lcom/appyet/mobile/d/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/appyet/mobile/d/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getIsSelected()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setIsSelected(Z)V

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/cs;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->a(Lcom/appyet/mobile/activity/WidgetConfigureActivity;)Lcom/appyet/mobile/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/b;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/cs;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->a(Lcom/appyet/mobile/activity/WidgetConfigureActivity;)Lcom/appyet/mobile/d/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    if-eq v1, p3, :cond_0

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/data/Feed;->setIsSelected(Z)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/activity/cs;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->a(Lcom/appyet/mobile/activity/WidgetConfigureActivity;)Lcom/appyet/mobile/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/b;->notifyDataSetChanged()V

    return-void
.end method
