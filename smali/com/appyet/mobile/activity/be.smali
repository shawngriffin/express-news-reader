.class final Lcom/appyet/mobile/activity/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/be;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/activity/be;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/be;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/appyet/mobile/activity/be;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v1, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b(Lcom/appyet/mobile/activity/FeedItemDetailActivity;I)I

    iget-object v1, p0, Lcom/appyet/mobile/activity/be;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/view/viewflow/ViewFlow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->setSelection(I)V

    return-void

    :cond_1
    move v0, p3

    goto :goto_0
.end method
