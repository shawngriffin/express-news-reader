.class final Lcom/google/android/apps/analytics/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/apps/analytics/q;


# direct methods
.method constructor <init>(Lcom/google/android/apps/analytics/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/y;->a:Lcom/google/android/apps/analytics/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/y;->a:Lcom/google/android/apps/analytics/q;

    iget-object v0, v0, Lcom/google/android/apps/analytics/q;->a:Lcom/google/android/apps/analytics/v;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/v;->c()V

    return-void
.end method
