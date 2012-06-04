.class final Lcom/google/android/apps/analytics/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/analytics/m;


# instance fields
.field final synthetic a:Lcom/google/android/apps/analytics/v;


# direct methods
.method constructor <init>(Lcom/google/android/apps/analytics/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/q;->a:Lcom/google/android/apps/analytics/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/q;->a:Lcom/google/android/apps/analytics/v;

    invoke-static {v0}, Lcom/google/android/apps/analytics/v;->a(Lcom/google/android/apps/analytics/v;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/analytics/y;

    invoke-direct {v1, p0}, Lcom/google/android/apps/analytics/y;-><init>(Lcom/google/android/apps/analytics/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/q;->a:Lcom/google/android/apps/analytics/v;

    invoke-static {v0}, Lcom/google/android/apps/analytics/v;->b(Lcom/google/android/apps/analytics/v;)Lcom/google/android/apps/analytics/aa;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/analytics/aa;->a(J)V

    return-void
.end method
