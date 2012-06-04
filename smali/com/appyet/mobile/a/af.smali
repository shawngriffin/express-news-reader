.class public final Lcom/appyet/mobile/a/af;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/appyet/mobile/a/av;

.field private b:Lcom/appyet/mobile/data/Feed;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/appyet/mobile/data/Feed;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/a/af;->b:Lcom/appyet/mobile/data/Feed;

    return-object v0
.end method

.method public final a(Lcom/appyet/mobile/a/av;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/a/af;->a:Lcom/appyet/mobile/a/av;

    return-void
.end method

.method public final a(Lcom/appyet/mobile/data/Feed;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/a/af;->b:Lcom/appyet/mobile/data/Feed;

    return-void
.end method

.method public final b()Lcom/appyet/mobile/a/av;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/a/af;->a:Lcom/appyet/mobile/a/av;

    return-object v0
.end method
