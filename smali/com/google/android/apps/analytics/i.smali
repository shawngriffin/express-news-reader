.class public final Lcom/google/android/apps/analytics/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:D

.field private final f:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/apps/analytics/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/analytics/i;-><init>(Lcom/google/android/apps/analytics/f;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/analytics/f;B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/apps/analytics/f;->a(Lcom/google/android/apps/analytics/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/i;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/f;->b(Lcom/google/android/apps/analytics/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/i;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/f;->c(Lcom/google/android/apps/analytics/f;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/i;->e:D

    invoke-static {p1}, Lcom/google/android/apps/analytics/f;->d(Lcom/google/android/apps/analytics/f;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/i;->f:J

    invoke-static {p1}, Lcom/google/android/apps/analytics/f;->e(Lcom/google/android/apps/analytics/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/i;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/f;->f(Lcom/google/android/apps/analytics/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/i;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method final e()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/i;->e:D

    return-wide v0
.end method

.method final f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/i;->f:J

    return-wide v0
.end method
