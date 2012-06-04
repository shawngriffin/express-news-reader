.class final Lcom/appyet/mobile/activity/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/at;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/at;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->D()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/activity/at;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v3, v3, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v3}, Lcom/appyet/mobile/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/at;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
