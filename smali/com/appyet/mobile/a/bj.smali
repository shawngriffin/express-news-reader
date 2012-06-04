.class public final Lcom/appyet/mobile/a/bj;
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

    iput-object v0, p0, Lcom/appyet/mobile/a/bj;->b:Lcom/appyet/mobile/data/Feed;

    iget-object v0, p0, Lcom/appyet/mobile/a/bj;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/bj;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setEncoding(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/bj;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setStreamHash(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/bj;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHTTPETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setHTTPETag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/bj;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHTTPLastModified()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setHTTPLastModified(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/bj;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHttpAuthUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setHttpAuthUserName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/bj;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHttpAuthPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setHttpAuthPassword(Ljava/lang/String;)V

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    const-string v2, "RDF"

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/a/bj;->a:Landroid/sax/RootElement;

    iget-object v0, p0, Lcom/appyet/mobile/a/bj;->a:Landroid/sax/RootElement;

    const-string v1, "http://purl.org/rss/1.0/"

    const-string v2, "channel"

    invoke-virtual {v0, v1, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "http://purl.org/rss/1.0/"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/a/s;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/a/s;-><init>(Lcom/appyet/mobile/a/bj;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "http://purl.org/rss/1.0/"

    const-string v2, "link"

    invoke-virtual {v0, v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/a/t;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/a/t;-><init>(Lcom/appyet/mobile/a/bj;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "http://purl.org/rss/1.0/"

    const-string v2, "pubDate"

    invoke-virtual {v0, v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/a/u;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/a/u;-><init>(Lcom/appyet/mobile/a/bj;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "http://purl.org/dc/elements/1.1/"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/a/v;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/a/v;-><init>(Lcom/appyet/mobile/a/bj;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "http://purl.org/rss/1.0/"

    const-string v2, "lastBuildDate"

    invoke-virtual {v0, v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/a/o;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/a/o;-><init>(Lcom/appyet/mobile/a/bj;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-direct {v0}, Lcom/appyet/mobile/data/FeedItem;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appyet/mobile/a/bj;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/appyet/mobile/a/bj;->a:Landroid/sax/RootElement;

    const-string v2, "http://purl.org/rss/1.0/"

    const-string v3, "item"

    invoke-virtual {v1, v2, v3}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/a/p;

    invoke-direct {v2, p0, v0}, Lcom/appyet/mobile/a/p;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/"

    const-string v3, "title"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/q;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/q;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/"

    const-string v3, "link"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/r;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/r;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/"

    const-string v3, "description"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/n;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/n;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.itunes.com/dtds/podcast-1.0.dtd"

    const-string v3, "summary"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/as;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/as;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://wellformedweb.org/CommentAPI/"

    const-string v3, "commentRss"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/at;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/at;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://wellformedweb.org/CommentAPI/"

    const-string v3, "commentRSS"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/aq;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/aq;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/"

    const-string v3, "enclosure"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/ar;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/ar;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "content"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/ao;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/ao;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "thumbnail"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/ap;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/ap;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://www.itunes.com/dtds/podcast-1.0.dtd"

    const-string v3, "duration"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/am;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/am;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/"

    const-string v3, "pubDate"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/an;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/an;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const-string v3, "date"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/ak;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/ak;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const-string v3, "creator"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/al;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/al;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/modules/syndication/"

    const-string v3, "updateBase"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/aj;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/a/aj;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/modules/content/"

    const-string v3, "encoded"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/a/ai;

    invoke-direct {v2, p0, v0}, Lcom/appyet/mobile/a/ai;-><init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/a/bj;->a()Lcom/appyet/mobile/a/af;
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
