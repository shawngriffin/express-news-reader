.class final Lcom/appyet/mobile/a/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndElementListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/FeedItem;

.field private synthetic b:Lcom/appyet/mobile/a/w;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/a/w;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/a/aw;->b:Lcom/appyet/mobile/a/w;

    iput-object p2, p0, Lcom/appyet/mobile/a/aw;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/a/aw;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->copy()Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/a/aw;->b:Lcom/appyet/mobile/a/w;

    iget-object v1, v1, Lcom/appyet/mobile/a/w;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setFeed(Lcom/appyet/mobile/data/Feed;)V

    iget-object v1, p0, Lcom/appyet/mobile/a/aw;->b:Lcom/appyet/mobile/a/w;

    iget-object v1, v1, Lcom/appyet/mobile/a/w;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appyet/mobile/a/aw;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
