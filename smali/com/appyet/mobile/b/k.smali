.class public abstract Lcom/appyet/mobile/b/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final b:Ljava/util/concurrent/BlockingQueue;

.field private static c:Ljava/util/concurrent/Executor;

.field private static final d:Lcom/appyet/mobile/b/d;

.field private static volatile e:Ljava/util/concurrent/Executor;


# instance fields
.field private final f:Lcom/appyet/mobile/b/i;

.field private final g:Ljava/util/concurrent/FutureTask;

.field private volatile h:Lcom/appyet/mobile/b/f;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/appyet/mobile/b/m;

    invoke-direct {v0}, Lcom/appyet/mobile/b/m;-><init>()V

    sput-object v0, Lcom/appyet/mobile/b/k;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/appyet/mobile/b/k;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/appyet/mobile/b/k;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/appyet/mobile/b/k;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/appyet/mobile/b/k;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/appyet/mobile/b/d;

    invoke-direct {v0}, Lcom/appyet/mobile/b/d;-><init>()V

    sput-object v0, Lcom/appyet/mobile/b/k;->d:Lcom/appyet/mobile/b/d;

    sget-object v0, Lcom/appyet/mobile/b/k;->c:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/appyet/mobile/b/k;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appyet/mobile/b/f;->a:Lcom/appyet/mobile/b/f;

    iput-object v0, p0, Lcom/appyet/mobile/b/k;->h:Lcom/appyet/mobile/b/f;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/b/k;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/appyet/mobile/b/n;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/b/n;-><init>(Lcom/appyet/mobile/b/k;)V

    iput-object v0, p0, Lcom/appyet/mobile/b/k;->f:Lcom/appyet/mobile/b/i;

    new-instance v0, Lcom/appyet/mobile/b/o;

    iget-object v1, p0, Lcom/appyet/mobile/b/k;->f:Lcom/appyet/mobile/b/i;

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/b/o;-><init>(Lcom/appyet/mobile/b/k;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/appyet/mobile/b/k;->g:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/b/k;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/appyet/mobile/b/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/mobile/b/k;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/b/k;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/appyet/mobile/b/k;->d:Lcom/appyet/mobile/b/d;

    new-instance v1, Lcom/appyet/mobile/b/c;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/appyet/mobile/b/c;-><init>(Lcom/appyet/mobile/b/k;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/appyet/mobile/b/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method static synthetic b(Lcom/appyet/mobile/b/k;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/b/k;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/appyet/mobile/b/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/appyet/mobile/b/k;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/b/k;->g:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/appyet/mobile/b/f;->c:Lcom/appyet/mobile/b/f;

    iput-object v0, p0, Lcom/appyet/mobile/b/k;->h:Lcom/appyet/mobile/b/f;

    return-void
.end method


# virtual methods
.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final b()Lcom/appyet/mobile/b/f;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/b/k;->h:Lcom/appyet/mobile/b/f;

    return-object v0
.end method

.method public final varargs b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    .locals 3

    sget-object v0, Lcom/appyet/mobile/b/k;->e:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/appyet/mobile/b/k;->h:Lcom/appyet/mobile/b/f;

    sget-object v2, Lcom/appyet/mobile/b/f;->a:Lcom/appyet/mobile/b/f;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/appyet/mobile/b/p;->a:[I

    iget-object v2, p0, Lcom/appyet/mobile/b/k;->h:Lcom/appyet/mobile/b/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/b/f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    sget-object v1, Lcom/appyet/mobile/b/f;->b:Lcom/appyet/mobile/b/f;

    iput-object v1, p0, Lcom/appyet/mobile/b/k;->h:Lcom/appyet/mobile/b/f;

    invoke-virtual {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v1, p0, Lcom/appyet/mobile/b/k;->f:Lcom/appyet/mobile/b/i;

    iput-object p1, v1, Lcom/appyet/mobile/b/i;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/appyet/mobile/b/k;->g:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
