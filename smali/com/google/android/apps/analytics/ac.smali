.class public final Lcom/google/android/apps/analytics/ac;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:D

.field private d:D

.field private e:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/analytics/ac;->b:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/apps/analytics/ac;->d:D

    iput-wide v1, p0, Lcom/google/android/apps/analytics/ac;->e:D

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
    iput-object p1, p0, Lcom/google/android/apps/analytics/ac;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/apps/analytics/ac;->c:D

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/ac;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/ac;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/apps/analytics/ac;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/ac;->c:D

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/apps/analytics/ac;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/apps/analytics/ac;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/ac;->d:D

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/apps/analytics/ac;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/ac;->e:D

    return-wide v0
.end method


# virtual methods
.method public final a(D)Lcom/google/android/apps/analytics/ac;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/apps/analytics/ac;->d:D

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/apps/analytics/ac;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/ac;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b(D)Lcom/google/android/apps/analytics/ac;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/apps/analytics/ac;->e:D

    return-object p0
.end method
