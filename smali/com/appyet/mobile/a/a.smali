.class final Lcom/appyet/mobile/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/FeedItem;

.field private synthetic b:Lcom/appyet/mobile/a/x;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/a/x;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/a/a;->b:Lcom/appyet/mobile/a/x;

    iput-object p2, p0, Lcom/appyet/mobile/a/a;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/a/a;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/data/FeedItem;->setAuthor(Ljava/lang/String;)V

    return-void
.end method
