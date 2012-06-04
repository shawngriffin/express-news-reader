.class public abstract Lcom/appyet/mobile/a/au;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/sax/RootElement;

.field protected b:Lcom/appyet/mobile/data/Feed;

.field protected c:Ljava/util/List;

.field private d:Lcom/appyet/mobile/context/ApplicationContext;

.field private e:Ljava/util/List;


# direct methods
.method protected constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/mobile/a/au;->d:Lcom/appyet/mobile/context/ApplicationContext;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/a/au;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/appyet/mobile/a/af;
    .locals 6

    new-instance v1, Lcom/appyet/mobile/a/af;

    invoke-direct {v1}, Lcom/appyet/mobile/a/af;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/c/c;

    invoke-direct {v0}, Lcom/appyet/mobile/c/c;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/c/c;->e(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getHTTPETag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/c/c;->c(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getHTTPLastModified()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/c/c;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getHttpAuthUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/c/c;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getHttpAuthPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/c/c;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/mobile/a/au;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/c;)Lcom/appyet/mobile/c/d;

    move-result-object v2

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/d;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appyet/mobile/a/av;->b:Lcom/appyet/mobile/a/av;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/a/af;->a(Lcom/appyet/mobile/a/av;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, v2, Lcom/appyet/mobile/c/d;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/appyet/mobile/e/g;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    invoke-static {v0}, Lcom/appyet/mobile/e/a;->a([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lcom/appyet/mobile/a/av;->c:Lcom/appyet/mobile/a/av;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/a/af;->a(Lcom/appyet/mobile/a/av;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, v2, Lcom/appyet/mobile/c/d;->d:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/appyet/mobile/c/d;->d:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    iget-object v5, v2, Lcom/appyet/mobile/c/d;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/data/Feed;->setEncoding(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v4, v3}, Lcom/appyet/mobile/data/Feed;->setStreamHash(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    iget-object v4, v2, Lcom/appyet/mobile/c/d;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/appyet/mobile/data/Feed;->setHTTPLastModified(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    iget-object v4, v2, Lcom/appyet/mobile/c/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/appyet/mobile/data/Feed;->setHTTPETag(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/appyet/mobile/e/g;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/appyet/mobile/a/av;->b:Lcom/appyet/mobile/a/av;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/a/af;->a(Lcom/appyet/mobile/a/av;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    :try_start_3
    iget-object v4, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-static {v0}, Lcom/appyet/mobile/e/g;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/data/Feed;->setEncoding(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_5
    iget-object v4, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/data/Feed;->setEncoding(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    sget-object v0, Lcom/appyet/mobile/a/av;->b:Lcom/appyet/mobile/a/av;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/a/af;->a(Lcom/appyet/mobile/a/av;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    :try_start_5
    iget-object v3, p0, Lcom/appyet/mobile/a/au;->a:Landroid/sax/RootElement;

    invoke-virtual {v3}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/au;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_8
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getUniqueKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/data/FeedItem;->setKey(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    iget-object v2, p0, Lcom/appyet/mobile/a/au;->c:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/data/Feed;->setFeedItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/appyet/mobile/a/au;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/a/af;->a(Lcom/appyet/mobile/data/Feed;)V

    sget-object v0, Lcom/appyet/mobile/a/av;->a:Lcom/appyet/mobile/a/av;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/a/af;->a(Lcom/appyet/mobile/a/av;)V

    move-object v0, v1

    goto/16 :goto_0
.end method
