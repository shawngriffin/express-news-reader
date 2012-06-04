.class final Lcom/appyet/mobile/manager/a;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:I

.field private synthetic b:Lcom/appyet/mobile/manager/e;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/manager/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/a;->b:Lcom/appyet/mobile/manager/e;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput p2, p0, Lcom/appyet/mobile/manager/a;->a:I

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/a;->b:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/a;->b:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/a;->b:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->g(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/manager/a;->b:Lcom/appyet/mobile/manager/e;

    invoke-static {v1}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/appyet/mobile/manager/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/manager/a;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 0

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    return-void
.end method
