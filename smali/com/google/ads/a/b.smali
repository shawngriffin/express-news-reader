.class public final Lcom/google/ads/a/b;
.super Lcom/google/ads/at;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/util/Pair;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Lcom/google/ads/a/a;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/at;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 4

    const-string v0, "#%06x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xffffff

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/a/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "q"

    iget-object v1, p0, Lcom/google/ads/a/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/google/ads/a/b;->c:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bgcolor"

    iget v1, p0, Lcom/google/ads/a/b;->c:I

    invoke-static {v1}, Lcom/google/ads/a/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/a/b;->d:Landroid/util/Pair;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/a/b;->d:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/a/b;->d:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string v1, "gradientfrom"

    iget-object v0, p0, Lcom/google/ads/a/b;->d:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/ads/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "gradientto"

    iget-object v0, p0, Lcom/google/ads/a/b;->d:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/ads/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/google/ads/a/b;->e:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "hcolor"

    iget v1, p0, Lcom/google/ads/a/b;->e:I

    invoke-static {v1}, Lcom/google/ads/a/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget v0, p0, Lcom/google/ads/a/b;->f:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "dcolor"

    iget v1, p0, Lcom/google/ads/a/b;->f:I

    invoke-static {v1}, Lcom/google/ads/a/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget v0, p0, Lcom/google/ads/a/b;->g:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "acolor"

    iget v1, p0, Lcom/google/ads/a/b;->g:I

    invoke-static {v1}, Lcom/google/ads/a/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/google/ads/a/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "font"

    iget-object v1, p0, Lcom/google/ads/a/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    const-string v0, "headersize"

    iget v1, p0, Lcom/google/ads/a/b;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/google/ads/a/b;->j:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "bcolor"

    iget v1, p0, Lcom/google/ads/a/b;->j:I

    invoke-static {v1}, Lcom/google/ads/a/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/google/ads/a/b;->k:Lcom/google/ads/a/a;

    if-eqz v0, :cond_8

    const-string v0, "btype"

    iget-object v1, p0, Lcom/google/ads/a/b;->k:Lcom/google/ads/a/a;

    invoke-virtual {v1}, Lcom/google/ads/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    const-string v0, "bthick"

    iget v1, p0, Lcom/google/ads/a/b;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/google/ads/at;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
