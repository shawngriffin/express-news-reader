.class final Lcom/appyet/mobile/a/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndElementListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/FeedItem;

.field private synthetic b:Lcom/appyet/mobile/a/x;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/a/aa;->b:Lcom/appyet/mobile/a/x;

    iput-object p2, p0, Lcom/appyet/mobile/a/aa;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/a/aa;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->copy()Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/a/aa;->b:Lcom/appyet/mobile/a/x;

    iget-object v1, v1, Lcom/appyet/mobile/a/x;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setFeed(Lcom/appyet/mobile/data/Feed;)V

    iget-object v1, p0, Lcom/appyet/mobile/a/aa;->b:Lcom/appyet/mobile/a/x;

    iget-object v1, v1, Lcom/appyet/mobile/a/x;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appyet/mobile/a/aa;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->clear()V

    return-void
.end method
