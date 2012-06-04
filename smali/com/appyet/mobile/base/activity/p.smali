.class final Lcom/appyet/mobile/base/activity/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/p;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/p;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/p;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    const-class v3, Lcom/appyet/mobile/activity/SourceItemActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "category_id"

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/p;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return v5
.end method
