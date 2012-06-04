.class final Lcom/appyet/mobile/base/activity/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/m;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/m;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/m;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v1, v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/Feed;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
