.class public final Lcom/google/ads/af;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;

.field private c:Lcom/google/ads/ar;

.field private d:Lcom/google/ads/ak;

.field private e:Lcom/google/ads/ae;

.field private f:Lcom/google/ads/at;

.field private g:Lcom/google/ads/am;

.field private h:Lcom/google/ads/ah;

.field private i:Ljava/lang/String;

.field private j:Lcom/google/ads/w;

.field private k:Lcom/google/ads/v;

.field private l:Landroid/os/Handler;

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Landroid/content/SharedPreferences;

.field private q:J

.field private r:Lcom/google/ads/ab;

.field private s:Z

.field private t:Ljava/util/LinkedList;

.field private u:Ljava/util/LinkedList;

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/af;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/ar;Lcom/google/ads/am;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/af;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/ads/af;->c:Lcom/google/ads/ar;

    iput-object p3, p0, Lcom/google/ads/af;->g:Lcom/google/ads/am;

    iput-object p4, p0, Lcom/google/ads/af;->i:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/ads/af;->s:Z

    new-instance v0, Lcom/google/ads/ah;

    invoke-direct {v0}, Lcom/google/ads/ah;-><init>()V

    iput-object v0, p0, Lcom/google/ads/af;->h:Lcom/google/ads/ah;

    iput-object v1, p0, Lcom/google/ads/af;->d:Lcom/google/ads/ak;

    iput-object v1, p0, Lcom/google/ads/af;->e:Lcom/google/ads/ae;

    iput-object v1, p0, Lcom/google/ads/af;->f:Lcom/google/ads/at;

    iput-boolean v2, p0, Lcom/google/ads/af;->n:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/ads/af;->l:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/af;->q:J

    iput-boolean v2, p0, Lcom/google/ads/af;->o:Z

    sget-object v1, Lcom/google/ads/af;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "GoogleAdMobAdsPrefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/af;->p:Landroid/content/SharedPreferences;

    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/google/ads/af;->m:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/google/ads/ab;

    invoke-direct {v0, p0}, Lcom/google/ads/ab;-><init>(Lcom/google/ads/af;)V

    iput-object v0, p0, Lcom/google/ads/af;->r:Lcom/google/ads/ab;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/af;->t:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/af;->u:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/google/ads/af;->a()V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->h(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized v()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/af;->e:Lcom/google/ads/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized w()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/af;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "activity was null while trying to ping tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/af;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/aa;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/aa;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized x()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/af;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "activity was null while trying to ping click tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/af;->u:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/aa;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/aa;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/af;->d()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "activity was null while trying to create an AdWebView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/ads/w;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/af;->g:Lcom/google/ads/am;

    invoke-direct {v1, v0, v2}, Lcom/google/ads/w;-><init>(Landroid/content/Context;Lcom/google/ads/am;)V

    iput-object v1, p0, Lcom/google/ads/af;->j:Lcom/google/ads/w;

    iget-object v0, p0, Lcom/google/ads/af;->j:Lcom/google/ads/w;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/w;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/af;->c:Lcom/google/ads/ar;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/ads/v;

    sget-object v1, Lcom/google/ads/ac;->b:Ljava/util/Map;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/ads/v;-><init>(Lcom/google/ads/af;Ljava/util/Map;ZZ)V

    iput-object v0, p0, Lcom/google/ads/af;->k:Lcom/google/ads/v;

    :goto_1
    iget-object v0, p0, Lcom/google/ads/af;->j:Lcom/google/ads/w;

    iget-object v1, p0, Lcom/google/ads/af;->k:Lcom/google/ads/v;

    invoke-virtual {v0, v1}, Lcom/google/ads/w;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/ads/v;

    sget-object v1, Lcom/google/ads/ac;->b:Ljava/util/Map;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/ads/v;-><init>(Lcom/google/ads/af;Ljava/util/Map;ZZ)V

    iput-object v0, p0, Lcom/google/ads/af;->k:Lcom/google/ads/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a(F)V
    .locals 2

    monitor-enter p0

    const/high16 v0, 0x447a

    mul-float/2addr v0, p1

    float-to-long v0, v0

    :try_start_0
    iput-wide v0, p0, Lcom/google/ads/af;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/ads/af;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .locals 4

    sget-object v1, Lcom/google/ads/af;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/af;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/af;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v0, p0, Lcom/google/ads/af;->s:Z

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/ads/af;->m:J

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/as;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/af;->e:Lcom/google/ads/ae;

    iget-object v0, p0, Lcom/google/ads/af;->c:Lcom/google/ads/ar;

    instance-of v0, v0, Lcom/google/ads/al;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/as;->b:Lcom/google/ads/as;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/af;->h:Lcom/google/ads/ah;

    invoke-virtual {v0}, Lcom/google/ads/ah;->n()V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailedToReceiveAd("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/ads/as;->c:Lcom/google/ads/as;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/af;->h:Lcom/google/ads/ah;

    invoke-virtual {v0}, Lcom/google/ads/ah;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/at;)V
    .locals 8

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/af;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "loadAd called while the ad is already loading, so aborting."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/ads/AdActivity;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "loadAd called while an interstitial or landing page is displayed, so aborting"

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/google/ads/af;->d()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "activity is null while trying to load an ad."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ads/af;->p:Landroid/content/SharedPreferences;

    const-string v3, "GoogleAdMobDoritosLife"

    const-wide/32 v4, 0xea60

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v1}, Lcom/google/ads/aj;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "drt"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "drt_ts"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "drt_ts"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v6, v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/ads/f;

    invoke-direct {v2, v1}, Lcom/google/ads/f;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/af;->n:Z

    iget-object v0, p0, Lcom/google/ads/af;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object p1, p0, Lcom/google/ads/af;->f:Lcom/google/ads/at;

    new-instance v0, Lcom/google/ads/ae;

    invoke-direct {v0, p0}, Lcom/google/ads/ae;-><init>(Lcom/google/ads/af;)V

    iput-object v0, p0, Lcom/google/ads/af;->e:Lcom/google/ads/ae;

    iget-object v0, p0, Lcom/google/ads/af;->e:Lcom/google/ads/ae;

    invoke-virtual {v0, p1}, Lcom/google/ads/ae;->a(Lcom/google/ads/at;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/af;->l:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding a tracking URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/af;->t:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/util/LinkedList;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding a click tracking URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/ads/af;->u:Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/af;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "Disabling refreshing."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/af;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/af;->r:Lcom/google/ads/ab;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/af;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already disabled."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/af;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GoogleAdMobDoritosLife"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/af;->c:Lcom/google/ads/ar;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/af;->o:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling refreshing every "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/ads/af;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/af;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/af;->r:Lcom/google/ads/ab;

    iget-wide v2, p0, Lcom/google/ads/af;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/af;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already enabled."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Tried to enable refreshing on something other than an AdView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final d()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/af;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public final e()Lcom/google/ads/ar;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/af;->c:Lcom/google/ads/ar;

    return-object v0
.end method

.method public final declared-synchronized f()Lcom/google/ads/ae;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/af;->e:Lcom/google/ads/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/af;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized h()Lcom/google/ads/w;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/af;->j:Lcom/google/ads/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Lcom/google/ads/v;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/af;->k:Lcom/google/ads/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()Lcom/google/ads/am;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/af;->g:Lcom/google/ads/am;

    return-object v0
.end method

.method public final k()Lcom/google/ads/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/af;->h:Lcom/google/ads/ah;

    return-object v0
.end method

.method public final declared-synchronized l()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/af;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/af;->m:J

    return-wide v0
.end method

.method public final declared-synchronized n()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/af;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized o()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/af;->e:Lcom/google/ads/ae;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/af;->n:Z

    iget-object v0, p0, Lcom/google/ads/af;->j:Lcom/google/ads/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/w;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/af;->h:Lcom/google/ads/ah;

    invoke-virtual {v0}, Lcom/google/ads/ah;->c()V

    iget-object v0, p0, Lcom/google/ads/af;->c:Lcom/google/ads/ar;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/af;->w()V

    :cond_0
    const-string v0, "onReceiveAd()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/af;->h:Lcom/google/ads/ah;

    invoke-virtual {v0}, Lcom/google/ads/ah;->o()V

    const-string v0, "onDismissScreen()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "onPresentScreen()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "onLeaveApplication()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/af;->h:Lcom/google/ads/ah;

    invoke-virtual {v0}, Lcom/google/ads/ah;->b()V

    invoke-direct {p0}, Lcom/google/ads/af;->x()V

    return-void
.end method

.method final declared-synchronized t()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/af;->u:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized u()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/af;->f:Lcom/google/ads/at;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/af;->c:Lcom/google/ads/ar;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/af;->c:Lcom/google/ads/ar;

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/util/AdUtil;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Refreshing ad."

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/af;->f:Lcom/google/ads/at;

    invoke-virtual {p0, v0}, Lcom/google/ads/af;->a(Lcom/google/ads/at;)V

    :goto_0
    iget-object v0, p0, Lcom/google/ads/af;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/af;->r:Lcom/google/ads/ab;

    iget-wide v2, p0, Lcom/google/ads/af;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Not refreshing because the ad is not visible."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Tried to refresh an ad that wasn\'t an AdView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "Tried to refresh before calling loadAd()."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
