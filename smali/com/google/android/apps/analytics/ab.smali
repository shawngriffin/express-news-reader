.class final Lcom/google/android/apps/analytics/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/analytics/l;


# instance fields
.field private synthetic a:Lcom/google/android/apps/analytics/s;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/apps/analytics/s;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/analytics/ab;-><init>(Lcom/google/android/apps/analytics/s;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/analytics/s;B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/ab;->a:Lcom/google/android/apps/analytics/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/ab;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->k(Lcom/google/android/apps/analytics/s;)I

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/ab;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0, p1}, Lcom/google/android/apps/analytics/s;->a(Lcom/google/android/apps/analytics/s;I)I

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/analytics/ab;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->l(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/r;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/analytics/ab;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->l(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/r;->a()Lcom/google/android/apps/analytics/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/analytics/ab;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v1}, Lcom/google/android/apps/analytics/s;->g(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/m;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/apps/analytics/e;->b:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/analytics/m;->a(J)V

    goto :goto_0
.end method
