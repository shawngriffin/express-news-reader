.class final Lcom/appyet/mobile/activity/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/PlayListActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/PlayListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/bz;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/appyet/mobile/activity/PlayListActivity;->c:Lcom/appyet/mobile/activity/bo;

    sget-object v1, Lcom/appyet/mobile/activity/bo;->a:Lcom/appyet/mobile/activity/bo;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/bz;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0, p3}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;I)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/bz;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/n;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/bz;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->b()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/bz;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0, p3}, Lcom/appyet/mobile/d/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    iget-object v1, p0, Lcom/appyet/mobile/activity/bz;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/data/FeedItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
