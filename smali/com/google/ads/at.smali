.class public Lcom/google/ads/at;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/google/ads/i;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Set;

.field private e:Z

.field private f:Ljava/util/Map;

.field private g:Landroid/location/Location;

.field private h:Z

.field private i:Z

.field private j:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/at;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/at;->b:Lcom/google/ads/i;

    iput-object v0, p0, Lcom/google/ads/at;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/at;->d:Ljava/util/Set;

    iput-boolean v1, p0, Lcom/google/ads/at;->e:Z

    iput-object v0, p0, Lcom/google/ads/at;->f:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/ads/at;->g:Landroid/location/Location;

    iput-boolean v1, p0, Lcom/google/ads/at;->h:Z

    iput-boolean v1, p0, Lcom/google/ads/at;->i:Z

    iput-object v0, p0, Lcom/google/ads/at;->j:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/Map;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/ads/at;->d:Ljava/util/Set;

    if-eqz v0, :cond_0

    const-string v0, "kw"

    iget-object v4, p0, Lcom/google/ads/at;->d:Ljava/util/Set;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/at;->b:Lcom/google/ads/i;

    if-eqz v0, :cond_1

    const-string v0, "cust_gender"

    iget-object v4, p0, Lcom/google/ads/at;->b:Lcom/google/ads/i;

    invoke-virtual {v4}, Lcom/google/ads/i;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/at;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "cust_age"

    iget-object v4, p0, Lcom/google/ads/at;->c:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/google/ads/at;->g:Landroid/location/Location;

    if-eqz v0, :cond_3

    const-string v0, "uule"

    iget-object v4, p0, Lcom/google/ads/at;->g:Landroid/location/Location;

    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-boolean v0, p0, Lcom/google/ads/at;->h:Z

    if-eqz v0, :cond_4

    const-string v0, "testing"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-boolean v0, p0, Lcom/google/ads/at;->e:Z

    if-eqz v0, :cond_8

    const-string v0, "pto"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/google/ads/at;->j:Ljava/util/Set;

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/google/ads/at;->j:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    if-eqz v2, :cond_a

    const-string v0, "adtest"

    const-string v1, "on"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/google/ads/at;->f:Ljava/util/Map;

    if-eqz v0, :cond_7

    const-string v0, "extras"

    iget-object v1, p0, Lcom/google/ads/at;->f:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v3

    :cond_8
    const-string v4, "cipa"

    invoke-static {p1}, Lcom/google/ads/aj;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    iget-boolean v0, p0, Lcom/google/ads/at;->i:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/google/ads/util/AdUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "AdRequest.TEST_EMULATOR"

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "To get test ads on this device, call adRequest.addTestDevice("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/ads/at;->i:Z

    goto :goto_1

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/at;->d:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/at;->d:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/at;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/at;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/at;->f:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/at;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/at;->j:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/at;->j:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/at;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
