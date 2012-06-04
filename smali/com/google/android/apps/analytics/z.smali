.class public final Lcom/google/android/apps/analytics/z;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:D

.field private final d:D

.field private final e:D


# direct methods
.method synthetic constructor <init>(Lcom/google/android/apps/analytics/ac;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/analytics/z;-><init>(Lcom/google/android/apps/analytics/ac;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/analytics/ac;B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/apps/analytics/ac;->a(Lcom/google/android/apps/analytics/ac;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/z;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/ac;->b(Lcom/google/android/apps/analytics/ac;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/z;->c:D

    invoke-static {p1}, Lcom/google/android/apps/analytics/ac;->c(Lcom/google/android/apps/analytics/ac;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/z;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/ac;->d(Lcom/google/android/apps/analytics/ac;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/z;->d:D

    invoke-static {p1}, Lcom/google/android/apps/analytics/ac;->e(Lcom/google/android/apps/analytics/ac;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/z;->e:D

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/z;->c:D

    return-wide v0
.end method

.method final d()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/z;->d:D

    return-wide v0
.end method

.method final e()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/z;->e:D

    return-wide v0
.end method
