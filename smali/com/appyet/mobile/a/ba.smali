.class final Lcom/appyet/mobile/a/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/a/w;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/a/w;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/a/ba;->a:Lcom/appyet/mobile/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/a/ba;->a:Lcom/appyet/mobile/a/w;

    iget-object v0, v0, Lcom/appyet/mobile/a/w;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/a/ba;->a:Lcom/appyet/mobile/a/w;

    iget-object v0, v0, Lcom/appyet/mobile/a/w;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/a/ba;->a:Lcom/appyet/mobile/a/w;

    iget-object v0, v0, Lcom/appyet/mobile/a/w;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
