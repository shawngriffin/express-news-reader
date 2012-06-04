.class Lcom/appyet/mobile/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appyet/mobile/b/e;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Lcom/appyet/mobile/b/l;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/b/h;->a:Ljava/util/Map;

    new-instance v0, Lcom/appyet/mobile/b/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appyet/mobile/b/l;-><init>(B)V

    iput-object v0, p0, Lcom/appyet/mobile/b/h;->b:Lcom/appyet/mobile/b/l;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/b/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/b/h;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appyet/mobile/b/h;->b:Lcom/appyet/mobile/b/l;

    invoke-virtual {v0, p2, p1}, Lcom/appyet/mobile/b/l;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
