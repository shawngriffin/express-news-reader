.class final Lcom/google/android/apps/analytics/s;
.super Landroid/os/HandlerThread;


# instance fields
.field volatile a:Landroid/os/Handler;

.field private final b:Lcom/google/android/apps/analytics/w;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:J

.field private g:Lcom/google/android/apps/analytics/r;

.field private final h:Lcom/google/android/apps/analytics/m;

.field private final i:Lcom/google/android/apps/analytics/ab;

.field private final j:Lcom/google/android/apps/analytics/h;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/m;Lcom/google/android/apps/analytics/w;Ljava/lang/String;Lcom/google/android/apps/analytics/h;)V
    .locals 2

    const-string v0, "DispatcherThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/apps/analytics/s;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/analytics/s;->g:Lcom/google/android/apps/analytics/r;

    iput-object p1, p0, Lcom/google/android/apps/analytics/s;->h:Lcom/google/android/apps/analytics/m;

    iput-object p3, p0, Lcom/google/android/apps/analytics/s;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/analytics/s;->b:Lcom/google/android/apps/analytics/w;

    new-instance v0, Lcom/google/android/apps/analytics/ab;

    invoke-direct {v0, p0}, Lcom/google/android/apps/analytics/ab;-><init>(Lcom/google/android/apps/analytics/s;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/s;->i:Lcom/google/android/apps/analytics/ab;

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->b:Lcom/google/android/apps/analytics/w;

    iget-object v1, p0, Lcom/google/android/apps/analytics/s;->i:Lcom/google/android/apps/analytics/ab;

    iput-object v1, v0, Lcom/google/android/apps/analytics/w;->a:Lcom/google/android/apps/analytics/l;

    iput-object p4, p0, Lcom/google/android/apps/analytics/s;->j:Lcom/google/android/apps/analytics/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/m;Ljava/lang/String;Lcom/google/android/apps/analytics/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/analytics/s;-><init>(Lcom/google/android/apps/analytics/m;Ljava/lang/String;Lcom/google/android/apps/analytics/h;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/analytics/m;Ljava/lang/String;Lcom/google/android/apps/analytics/h;B)V
    .locals 2

    new-instance v0, Lcom/google/android/apps/analytics/w;

    invoke-static {p3}, Lcom/google/android/apps/analytics/h;->a(Lcom/google/android/apps/analytics/h;)Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/analytics/w;-><init>(Lorg/apache/http/HttpHost;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/apps/analytics/s;-><init>(Lcom/google/android/apps/analytics/m;Lcom/google/android/apps/analytics/w;Ljava/lang/String;Lcom/google/android/apps/analytics/h;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/s;)I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/s;->d:I

    return v0
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/s;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/s;->d:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/s;Lcom/google/android/apps/analytics/r;)Lcom/google/android/apps/analytics/r;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/s;->g:Lcom/google/android/apps/analytics/r;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/apps/analytics/s;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/s;->f:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/apps/analytics/s;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/apps/analytics/s;->f:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/analytics/s;->f:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/apps/analytics/s;)J
    .locals 2

    const-wide/16 v0, 0x2

    iput-wide v0, p0, Lcom/google/android/apps/analytics/s;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->j:Lcom/google/android/apps/analytics/h;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->b:Lcom/google/android/apps/analytics/w;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->h:Lcom/google/android/apps/analytics/m;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/apps/analytics/s;)I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/s;->e:I

    return v0
.end method

.method static synthetic i(Lcom/google/android/apps/analytics/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->i:Lcom/google/android/apps/analytics/ab;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/apps/analytics/s;)I
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/analytics/s;->e:I

    return v0
.end method

.method static synthetic l(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->g:Lcom/google/android/apps/analytics/r;

    return-object v0
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/s;->a:Landroid/os/Handler;

    return-void
.end method
