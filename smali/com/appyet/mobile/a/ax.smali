.class final Lcom/appyet/mobile/a/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/FeedItem;

.field private synthetic b:Lcom/appyet/mobile/a/w;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/a/w;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/a/ax;->b:Lcom/appyet/mobile/a/w;

    iput-object p2, p0, Lcom/appyet/mobile/a/ax;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/a/ax;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/data/FeedItem;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
