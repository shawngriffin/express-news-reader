.class final Lcom/appyet/mobile/base/activity/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/o;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupExpand(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/o;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getIsExpand()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Category;->setIsExpand(Z)V

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/o;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v1, v1, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/manager/bo;->e(Lcom/appyet/mobile/data/Category;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
