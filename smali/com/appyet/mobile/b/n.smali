.class final Lcom/appyet/mobile/b/n;
.super Lcom/appyet/mobile/b/i;


# instance fields
.field private synthetic b:Lcom/appyet/mobile/b/k;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/b/n;->b:Lcom/appyet/mobile/b/k;

    invoke-direct {p0}, Lcom/appyet/mobile/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/b/n;->b:Lcom/appyet/mobile/b/k;

    invoke-static {v0}, Lcom/appyet/mobile/b/k;->a(Lcom/appyet/mobile/b/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/appyet/mobile/b/n;->b:Lcom/appyet/mobile/b/k;

    iget-object v1, p0, Lcom/appyet/mobile/b/n;->b:Lcom/appyet/mobile/b/k;

    iget-object v2, p0, Lcom/appyet/mobile/b/n;->a:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/b/k;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appyet/mobile/b/k;->a(Lcom/appyet/mobile/b/k;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
