.class final Lcom/appyet/mobile/a/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/FeedItem;

.field private synthetic b:Lcom/appyet/mobile/a/w;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/a/w;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/a/bi;->b:Lcom/appyet/mobile/a/w;

    iput-object p2, p0, Lcom/appyet/mobile/a/bi;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/a/bi;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/a/bi;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/data/FeedItem;->setDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
