.class final Lcom/appyet/mobile/activity/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageSourceActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageSourceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ba;->a:Lcom/appyet/mobile/activity/ManageSourceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/appyet/mobile/activity/ba;->a:Lcom/appyet/mobile/activity/ManageSourceActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceActivity;->a(Lcom/appyet/mobile/activity/ManageSourceActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ba;->a:Lcom/appyet/mobile/activity/ManageSourceActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceActivity;->b(Lcom/appyet/mobile/activity/ManageSourceActivity;)Lcom/appyet/mobile/d/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/d/r;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/ba;->a:Lcom/appyet/mobile/activity/ManageSourceActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceActivity;->a(Lcom/appyet/mobile/activity/ManageSourceActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/ba;->a:Lcom/appyet/mobile/activity/ManageSourceActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceActivity;->b(Lcom/appyet/mobile/activity/ManageSourceActivity;)Lcom/appyet/mobile/d/r;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ba;->a:Lcom/appyet/mobile/activity/ManageSourceActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceActivity;->a(Lcom/appyet/mobile/activity/ManageSourceActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/e;

    iget-boolean v0, v0, Lcom/appyet/mobile/c/e;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/ba;->a:Lcom/appyet/mobile/activity/ManageSourceActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceActivity;->b(Lcom/appyet/mobile/activity/ManageSourceActivity;)Lcom/appyet/mobile/d/r;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ba;->a:Lcom/appyet/mobile/activity/ManageSourceActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceActivity;->a(Lcom/appyet/mobile/activity/ManageSourceActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/d/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/e;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/appyet/mobile/activity/ba;->a:Lcom/appyet/mobile/activity/ManageSourceActivity;

    const-class v3, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "source_url"

    iget-object v0, v0, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ba;->a:Lcom/appyet/mobile/activity/ManageSourceActivity;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/activity/ManageSourceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
