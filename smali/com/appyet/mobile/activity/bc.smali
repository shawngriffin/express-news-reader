.class final Lcom/appyet/mobile/activity/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/bc;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/bc;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v1, p0, Lcom/appyet/mobile/activity/bc;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->d(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b(Lcom/appyet/mobile/data/FeedItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
