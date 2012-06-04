.class final Lcom/appyet/mobile/activity/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appyet/mobile/view/viewflow/ViewFlow$OutOfBoundListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/j;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOutOfBound(I)V
    .locals 3

    if-lez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/j;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/mobile/activity/j;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    const v2, 0x7f0b0058

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/j;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/mobile/activity/j;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    const v2, 0x7f0b0057

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
