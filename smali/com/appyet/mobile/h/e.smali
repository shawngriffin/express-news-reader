.class final Lcom/appyet/mobile/h/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/StartElementListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/c/j;

.field private synthetic b:Lcom/appyet/mobile/h/c;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/h/c;Lcom/appyet/mobile/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/h/e;->b:Lcom/appyet/mobile/h/c;

    iput-object p2, p0, Lcom/appyet/mobile/h/e;->a:Lcom/appyet/mobile/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, "title"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/h/e;->a:Lcom/appyet/mobile/c/j;

    const-string v1, "title"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/c/j;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/h/e;->a:Lcom/appyet/mobile/c/j;

    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/c/j;->d(Ljava/lang/String;)V

    const-string v0, "xmlUrl"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/h/e;->a:Lcom/appyet/mobile/c/j;

    const-string v1, "xmlUrl"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/c/j;->e(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/appyet/mobile/h/e;->a:Lcom/appyet/mobile/c/j;

    const-string v1, "favicon"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/c/j;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/h/e;->a:Lcom/appyet/mobile/c/j;

    const-string v1, "text"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/c/j;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/h/e;->a:Lcom/appyet/mobile/c/j;

    const-string v1, "url"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/c/j;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
