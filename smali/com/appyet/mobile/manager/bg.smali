.class final Lcom/appyet/mobile/manager/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/manager/e;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/e;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/bg;->a:Lcom/appyet/mobile/manager/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bg;->a:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->d()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bg;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->g(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->n()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bg;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v1}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appyet/mobile/manager/e;->a(Ljava/util/List;Lcom/appyet/mobile/data/FeedItem;)I

    move-result v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/bg;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v2, v0, v1}, Lcom/appyet/mobile/manager/e;->a(Lcom/appyet/mobile/manager/e;Ljava/util/List;I)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bg;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->i(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/activity/PlayListActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bg;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->i(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/activity/PlayListActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bg;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->i(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/activity/PlayListActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/n;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bg;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->i(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/activity/PlayListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->b()V
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
