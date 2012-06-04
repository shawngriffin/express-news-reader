.class final Lcom/appyet/mobile/a/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/FeedItem;

.field private synthetic b:Lcom/appyet/mobile/a/bj;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/a/bj;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/a/am;->b:Lcom/appyet/mobile/a/bj;

    iput-object p2, p0, Lcom/appyet/mobile/a/am;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/a/am;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-static {p1}, Lcom/appyet/mobile/e/d;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureDuration(Ljava/lang/Integer;)V

    return-void
.end method
