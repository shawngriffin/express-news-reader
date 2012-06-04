.class final Lcom/appyet/mobile/h/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndElementListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/appyet/mobile/c/j;

.field private synthetic c:Lcom/appyet/mobile/h/c;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/h/c;Ljava/util/List;Lcom/appyet/mobile/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/h/d;->c:Lcom/appyet/mobile/h/c;

    iput-object p2, p0, Lcom/appyet/mobile/h/d;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/appyet/mobile/h/d;->b:Lcom/appyet/mobile/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/h/d;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/appyet/mobile/h/d;->b:Lcom/appyet/mobile/c/j;

    invoke-virtual {v1}, Lcom/appyet/mobile/c/j;->b()Lcom/appyet/mobile/c/j;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appyet/mobile/h/d;->b:Lcom/appyet/mobile/c/j;

    invoke-virtual {v0}, Lcom/appyet/mobile/c/j;->a()V

    return-void
.end method
