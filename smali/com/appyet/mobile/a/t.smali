.class final Lcom/appyet/mobile/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/a/bj;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/a/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/a/t;->a:Lcom/appyet/mobile/a/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/a/t;->a:Lcom/appyet/mobile/a/bj;

    iget-object v0, v0, Lcom/appyet/mobile/a/bj;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/data/Feed;->setWebLink(Ljava/lang/String;)V

    return-void
.end method
