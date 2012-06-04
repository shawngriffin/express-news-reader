.class final Lcom/google/android/apps/analytics/u;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lcom/google/android/apps/analytics/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/apps/analytics/t;

    iput-object v0, p0, Lcom/google/android/apps/analytics/u;->a:[Lcom/google/android/apps/analytics/t;

    return-void
.end method

.method private static d(I)V
    .locals 2

    if-lez p0, :cond_0

    const/4 v0, 0x5

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be between 1 and 5 inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/analytics/t;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/t;->d()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/u;->d(I)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->a:[Lcom/google/android/apps/analytics/t;

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/t;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public final a(I)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/apps/analytics/u;->d(I)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->a:[Lcom/google/android/apps/analytics/t;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()[Lcom/google/android/apps/analytics/t;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->a:[Lcom/google/android/apps/analytics/t;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/t;

    return-object v0
.end method

.method public final b(I)Lcom/google/android/apps/analytics/t;
    .locals 2

    invoke-static {p1}, Lcom/google/android/apps/analytics/u;->d(I)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->a:[Lcom/google/android/apps/analytics/t;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final b()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/analytics/u;->a:[Lcom/google/android/apps/analytics/t;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/analytics/u;->a:[Lcom/google/android/apps/analytics/t;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final c(I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/apps/analytics/u;->d(I)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->a:[Lcom/google/android/apps/analytics/t;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method
