.class final Lcom/appyet/mobile/a/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/StartElementListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/a/w;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/a/w;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/a/bb;->a:Lcom/appyet/mobile/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 2

    :try_start_0
    const-string v0, "href"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/a/bb;->a:Lcom/appyet/mobile/a/w;

    iget-object v0, v0, Lcom/appyet/mobile/a/w;->b:Lcom/appyet/mobile/data/Feed;

    const-string v1, "href"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setWebLink(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
