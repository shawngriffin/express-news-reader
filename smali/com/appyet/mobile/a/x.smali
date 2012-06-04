.class public final Lcom/appyet/mobile/a/x;
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

    iput-object v0, p0, Lcom/appyet/mobile/a/x;->b:Lcom/appyet/mobile/data/Feed;

    iget-object v0, p0, Lcom/appyet/mobile/a/x;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/x;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setEncoding(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/x;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setStreamHash(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/x;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHTTPETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setHTTPETag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/x;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHTTPLastModified()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setHTTPLastModified(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/x;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHttpAuthUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setHttpAuthUserName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/x;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHttpAuthPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setHttpAuthPassword(Ljava/lang/String;)V

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, "rss"

    invoke-direct {v0, v1}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/a/x;->a:Landroid/sax/RootElement;

    iget-object v0, p0, Lcom/appyet/mobile/a/x;->a:Landroid/sax/RootElement;

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/a/ag;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/a/ag;-><init>(Lcom/appyet/mobile/a/x;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "link"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/a/ah;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/a/ah;-><init>(Lcom/appyet/mobile/a/x;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "pubDate"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/a/ae;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/a/ae;-><init>(Lcom/appyet/mobile/a/x;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "http://purl.org/dc/elements/1.1/"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/a/ad;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/a/ad;-><init>(Lcom/appyet/mobile/a/x;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "lastBuildDate"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/a/ac;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/a/ac;-><init>(Lcom/appyet/mobile/a/x;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/a/ab;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/a/ab;-><init>(Lcom/appyet/mobile/a/x;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v1, Lcom/appyet/mobile/data/FeedItem;

    invoke-direct {v1}, Lcom/appyet/mobile/data/FeedItem;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/appyet/mobile/a/x;->c:Ljava/util/List;

    const-string v2, "item"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v2, Lcom/appyet/mobile/a/aa;

    invoke-direct {v2, p0, v1}, Lcom/appyet/mobile/a/aa;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v0, v2}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/z;

    invoke-direct {v3, p0, v1}, Lcom/appyet/mobile/a/z;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "link"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/y;

    invoke-direct {v3, p0, v1}, Lcom/appyet/mobile/a/y;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/e;

    invoke-direct {v3, p0, v1}, Lcom/appyet/mobile/a/e;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.itunes.com/dtds/podcast-1.0.dtd"

    const-string v3, "summary"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/d;

    invoke-direct {v3, p0, v1}, Lcom/appyet/mobile/a/d;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://wellformedweb.org/CommentAPI/"

    const-string v3, "commentRss"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/i;

    invoke-direct {v3, p0, v1}, Lcom/appyet/mobile/a/i;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://wellformedweb.org/CommentAPI/"

    const-string v3, "commentRSS"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/h;

    invoke-direct {v3, p0, v1}, Lcom/appyet/mobile/a/h;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "enclosure"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/g;

    invoke-direct {v3, p0, v1}, Lcom/appyet/mobile/a/g;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "content"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/f;

    invoke-direct {v3, p0, v1}, Lcom/appyet/mobile/a/f;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "thumbnail"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/m;

    invoke-direct {v3, p0, v1}, Lcom/appyet/mobile/a/m;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://www.itunes.com/dtds/podcast-1.0.dtd"

    const-string v3, "duration"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/l;

    invoke-direct {v3, p0, v1}, Lcom/appyet/mobile/a/l;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "pubDate"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/k;

    invoke-direct {v3, p0, v1}, Lcom/appyet/mobile/a/k;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const-string v3, "date"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/j;

    invoke-direct {v3, p0, v1}, Lcom/appyet/mobile/a/j;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const-string v3, "creator"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/a;

    invoke-direct {v3, p0, v1}, Lcom/appyet/mobile/a/a;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "encoded"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/a/c;

    invoke-direct {v3, p0, v1}, Lcom/appyet/mobile/a/c;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/modules/content/"

    const-string v3, "encoded"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v2, Lcom/appyet/mobile/a/b;

    invoke-direct {v2, p0, v1}, Lcom/appyet/mobile/a/b;-><init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v0, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/a/x;->a()Lcom/appyet/mobile/a/af;
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
