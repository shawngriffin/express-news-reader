.class final Lcom/appyet/mobile/h/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndElementListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/appyet/mobile/c/j;

.field private synthetic c:Ljava/util/List;

.field private synthetic d:Lcom/appyet/mobile/h/c;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/h/c;Ljava/util/List;Lcom/appyet/mobile/c/j;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/h/j;->d:Lcom/appyet/mobile/h/c;

    iput-object p2, p0, Lcom/appyet/mobile/h/j;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/appyet/mobile/h/j;->b:Lcom/appyet/mobile/c/j;

    iput-object p4, p0, Lcom/appyet/mobile/h/j;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/h/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/j;

    invoke-virtual {v0}, Lcom/appyet/mobile/c/j;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/appyet/mobile/h/j;->b:Lcom/appyet/mobile/c/j;

    invoke-virtual {v2}, Lcom/appyet/mobile/c/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/c/j;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appyet/mobile/h/j;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/appyet/mobile/c/j;->b()Lcom/appyet/mobile/c/j;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/h/j;->b:Lcom/appyet/mobile/c/j;

    invoke-virtual {v0}, Lcom/appyet/mobile/c/j;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/h/j;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/appyet/mobile/h/j;->b:Lcom/appyet/mobile/c/j;

    invoke-virtual {v1}, Lcom/appyet/mobile/c/j;->b()Lcom/appyet/mobile/c/j;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/h/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/appyet/mobile/h/j;->b:Lcom/appyet/mobile/c/j;

    invoke-virtual {v0}, Lcom/appyet/mobile/c/j;->a()V

    return-void
.end method
