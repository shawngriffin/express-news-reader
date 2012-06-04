.class final Lcom/google/android/apps/analytics/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/analytics/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/apache/http/HttpHost;

.field private c:Lcom/google/android/apps/analytics/s;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "GoogleAnalytics"

    const-string v1, "1.4.2"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/analytics/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "www.google-analytics.com"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/analytics/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/google/android/apps/analytics/h;->d:Z

    new-instance v0, Lorg/apache/http/HttpHost;

    const/16 v1, 0x50

    invoke-direct {v0, p3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/h;->b:Lorg/apache/http/HttpHost;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s/%s (Linux; U; Android %s; %s-%s; %s Build/%s)"

    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/4 v0, 0x2

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x3

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    const/4 v0, 0x5

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x6

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/h;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "en"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/h;)Lorg/apache/http/HttpHost;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/h;->b:Lorg/apache/http/HttpHost;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/analytics/m;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/h;->c:Lcom/google/android/apps/analytics/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/h;->c:Lcom/google/android/apps/analytics/s;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/s;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/h;->c:Lcom/google/android/apps/analytics/s;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/s;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/analytics/h;->c:Lcom/google/android/apps/analytics/s;

    :cond_0
    new-instance v0, Lcom/google/android/apps/analytics/s;

    iget-object v1, p0, Lcom/google/android/apps/analytics/h;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/apps/analytics/s;-><init>(Lcom/google/android/apps/analytics/m;Ljava/lang/String;Lcom/google/android/apps/analytics/h;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/h;->c:Lcom/google/android/apps/analytics/s;

    iget-object v0, p0, Lcom/google/android/apps/analytics/h;->c:Lcom/google/android/apps/analytics/s;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/s;->start()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/h;->d:Z

    return-void
.end method

.method public final a([Lcom/google/android/apps/analytics/e;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/analytics/h;->c:Lcom/google/android/apps/analytics/s;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/analytics/h;->c:Lcom/google/android/apps/analytics/s;

    iget-object v1, v0, Lcom/google/android/apps/analytics/s;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/apps/analytics/s;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/analytics/r;

    invoke-direct {v2, v0, p1}, Lcom/google/android/apps/analytics/r;-><init>(Lcom/google/android/apps/analytics/s;[Lcom/google/android/apps/analytics/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/h;->d:Z

    return v0
.end method
