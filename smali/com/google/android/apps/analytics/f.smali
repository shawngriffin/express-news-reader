.class public final Lcom/google/android/apps/analytics/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:D

.field private final d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/f;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/analytics/f;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "orderId must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemSKU must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lcom/google/android/apps/analytics/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/analytics/f;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/apps/analytics/f;->c:D

    iput-wide p5, p0, Lcom/google/android/apps/analytics/f;->d:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/apps/analytics/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/apps/analytics/f;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/f;->c:D

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/apps/analytics/f;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/f;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/apps/analytics/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/apps/analytics/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/f;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/apps/analytics/f;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/f;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/apps/analytics/f;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/f;->f:Ljava/lang/String;

    return-object p0
.end method
