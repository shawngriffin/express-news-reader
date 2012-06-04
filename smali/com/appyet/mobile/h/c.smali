.class public final Lcom/appyet/mobile/h/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/mobile/h/c;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Lcom/appyet/mobile/c/i;
    .locals 8

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/appyet/mobile/c/i;

    invoke-direct {v0}, Lcom/appyet/mobile/c/i;-><init>()V

    new-instance v1, Landroid/sax/RootElement;

    const-string v2, "opml"

    invoke-direct {v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    const-string v2, "head"

    invoke-virtual {v1, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/h/k;

    invoke-direct {v3, p0, v0}, Lcom/appyet/mobile/h/k;-><init>(Lcom/appyet/mobile/h/c;Lcom/appyet/mobile/c/i;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "body"

    invoke-virtual {v1, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/c/j;

    invoke-direct {v3}, Lcom/appyet/mobile/c/j;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/appyet/mobile/c/j;

    invoke-direct {v5}, Lcom/appyet/mobile/c/j;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "outline"

    invoke-virtual {v2, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v7, Lcom/appyet/mobile/h/j;

    invoke-direct {v7, p0, v6, v3, v4}, Lcom/appyet/mobile/h/j;-><init>(Lcom/appyet/mobile/h/c;Ljava/util/List;Lcom/appyet/mobile/c/j;Ljava/util/List;)V

    invoke-virtual {v2, v7}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    new-instance v7, Lcom/appyet/mobile/h/i;

    invoke-direct {v7, p0, v3}, Lcom/appyet/mobile/h/i;-><init>(Lcom/appyet/mobile/h/c;Lcom/appyet/mobile/c/j;)V

    invoke-virtual {v2, v7}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v3, "outline"

    invoke-virtual {v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/h/h;

    invoke-direct {v3, p0, v6, v5}, Lcom/appyet/mobile/h/h;-><init>(Lcom/appyet/mobile/h/c;Ljava/util/List;Lcom/appyet/mobile/c/j;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    new-instance v3, Lcom/appyet/mobile/h/g;

    invoke-direct {v3, p0, v5}, Lcom/appyet/mobile/h/g;-><init>(Lcom/appyet/mobile/h/c;Lcom/appyet/mobile/c/j;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v3, "outline"

    invoke-virtual {v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/h/f;

    invoke-direct {v3, p0, v6, v5}, Lcom/appyet/mobile/h/f;-><init>(Lcom/appyet/mobile/h/c;Ljava/util/List;Lcom/appyet/mobile/c/j;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    new-instance v3, Lcom/appyet/mobile/h/e;

    invoke-direct {v3, p0, v5}, Lcom/appyet/mobile/h/e;-><init>(Lcom/appyet/mobile/h/c;Lcom/appyet/mobile/c/j;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v3, "outline"

    invoke-virtual {v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/h/d;

    invoke-direct {v3, p0, v6, v5}, Lcom/appyet/mobile/h/d;-><init>(Lcom/appyet/mobile/h/c;Ljava/util/List;Lcom/appyet/mobile/c/j;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    new-instance v3, Lcom/appyet/mobile/h/l;

    invoke-direct {v3, p0, v5}, Lcom/appyet/mobile/h/l;-><init>(Lcom/appyet/mobile/h/c;Lcom/appyet/mobile/c/j;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v3, "outline"

    invoke-virtual {v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/mobile/h/a;

    invoke-direct {v3, p0, v6, v5}, Lcom/appyet/mobile/h/a;-><init>(Lcom/appyet/mobile/h/c;Ljava/util/List;Lcom/appyet/mobile/c/j;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    new-instance v3, Lcom/appyet/mobile/h/b;

    invoke-direct {v3, p0, v5}, Lcom/appyet/mobile/h/b;-><init>(Lcom/appyet/mobile/h/c;Lcom/appyet/mobile/c/j;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    :try_start_0
    sget-object v2, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v1}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    invoke-static {p1, v2, v1}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    invoke-virtual {v0, v4}, Lcom/appyet/mobile/c/i;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_2
    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method
