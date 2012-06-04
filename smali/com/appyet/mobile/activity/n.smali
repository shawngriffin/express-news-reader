.class final Lcom/appyet/mobile/activity/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/n;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/appyet/mobile/activity/n;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v2, v2, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->J()Lcom/appyet/mobile/context/a;

    move-result-object v2

    sget-object v3, Lcom/appyet/mobile/context/a;->b:Lcom/appyet/mobile/context/a;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/appyet/mobile/activity/n;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v3, p0, Lcom/appyet/mobile/activity/n;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v3}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-static {v2, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Z)Z

    iget-object v0, p0, Lcom/appyet/mobile/activity/n;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->l(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/appyet/mobile/activity/n;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v2, v2, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->J()Lcom/appyet/mobile/context/a;

    move-result-object v2

    sget-object v3, Lcom/appyet/mobile/context/a;->c:Lcom/appyet/mobile/context/a;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/appyet/mobile/activity/n;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v3, p0, Lcom/appyet/mobile/activity/n;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v3}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->m(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-static {v2, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->b(Lcom/appyet/mobile/activity/FeedItemDetailActivity;Z)Z

    iget-object v0, p0, Lcom/appyet/mobile/activity/n;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->n(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
