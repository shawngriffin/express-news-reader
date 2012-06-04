.class final Lcom/appyet/mobile/f/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Stack;

.field private synthetic b:Lcom/appyet/mobile/f/e;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/f/e;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/mobile/f/f;->b:Lcom/appyet/mobile/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/f/f;->a:Ljava/util/Stack;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/f/f;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/f/f;->a:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/f/f;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/f/a;

    iget-object v0, v0, Lcom/appyet/mobile/f/a;->c:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method
