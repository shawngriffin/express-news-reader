.class public final Lcom/appyet/mobile/a/w;
.super Lcom/appyet/mobile/a/au;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appyet/mobile/a/au;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appyet/mobile/data/Feed;)Lcom/appyet/mobile/a/af;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/data/Feed;

    invoke-direct {v0}, Lcom/appyet/mobile/data/Feed;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/a/w;->b:Lcom/appyet/mobile/data/Feed;

    iget-object v0, p0, Lcom/appyet/mobile/a/w;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/w;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setEncoding(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/w;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setStreamHash(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/w;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHTTPETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setHTTPETag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/w;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHTTPLastModified()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setHTTPLastModified(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/w;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHttpAuthUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setHttpAuthUserName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/w;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHttpAuthPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setHttpAuthPassword(Ljava/lang/String;)V

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "feed"

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/a/w;->a:Landroid/sax/RootElement;

    iget-object v0, p0, Lcom/appyet/mobile/a/w;->a:Landroid/sax/RootElement;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/a/ba;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/a/ba;-><init>(Lcom/appyet/mobile/a/w;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/w;->a:Landroid/sax/RootElement;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "link"

    invoke-virtual {v0, v1, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/a/bb;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/a/bb;-><init>(Lcom/appyet/mobile/a/w;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/w;->a:Landroid/sax/RootElement;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "updated"

    invoke-virtual {v0, v1, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/a/bc;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/a/bc;-><init>(Lcom/appyet/mobile/a/w;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-direct {v0}, Lcom/appyet/mobile/data/FeedItem;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appyet/mobile/a/w;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/appyet/mobile/a/w;->a:Landroid/sax/RootElement;

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "entry"

    invoke-virtual {v1, v2, v3}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/a/aw;

    invoke-direct {v2, p0, v0}, Lcom/appyet/mobile/a/aw;-><init>(Lcom/appyet/mobile/a/w;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "title"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/ax;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/ax;-><init>(Lcom/appyet/mobile/a/w;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "summary"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/ay;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/ay;-><init>(Lcom/appyet/mobile/a/w;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "link"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/az;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/az;-><init>(Lcom/appyet/mobile/a/w;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "content"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/be;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/be;-><init>(Lcom/appyet/mobile/a/w;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "thumbnail"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/bd;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/bd;-><init>(Lcom/appyet/mobile/a/w;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://www.itunes.com/dtds/podcast-1.0.dtd"

    const-string v3, "duration"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/bf;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/bf;-><init>(Lcom/appyet/mobile/a/w;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "content"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/bi;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/bi;-><init>(Lcom/appyet/mobile/a/w;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.itunes.com/dtds/podcast-1.0.dtd"

    const-string v3, "summary"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/bh;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/bh;-><init>(Lcom/appyet/mobile/a/w;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "updated"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/a/bg;

    invoke-direct {v2, p0, v0}, Lcom/appyet/mobile/a/bg;-><init>(Lcom/appyet/mobile/a/w;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/a/w;->a()Lcom/appyet/mobile/a/af;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
