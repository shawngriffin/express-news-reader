.class public final La/a/a/a/o;
.super La/a/a/a/m;


# instance fields
.field private a:La/a/a/a/h;

.field private b:La/a/a/a/a/o;

.field private c:Z

.field private d:S

.field private e:I

.field private f:[I

.field private g:I

.field private h:I

.field private i:La/a/a/a/m;


# direct methods
.method public constructor <init>(La/a/a/a/a/o;)V
    .locals 1

    invoke-direct {p0}, La/a/a/a/m;-><init>()V

    iput-object p1, p0, La/a/a/a/o;->b:La/a/a/a/a/o;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/o;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/o;->i:La/a/a/a/m;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, La/a/a/a/o;->f:[I

    invoke-virtual {p0}, La/a/a/a/o;->d()V

    return-void
.end method

.method public constructor <init>(La/a/a/a/a/o;ZLa/a/a/a/m;)V
    .locals 1

    invoke-direct {p0}, La/a/a/a/m;-><init>()V

    iput-object p1, p0, La/a/a/a/o;->b:La/a/a/a/a/o;

    iput-boolean p2, p0, La/a/a/a/o;->c:Z

    iput-object p3, p0, La/a/a/a/o;->i:La/a/a/a/m;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, La/a/a/a/o;->f:[I

    invoke-virtual {p0}, La/a/a/a/o;->d()V

    return-void
.end method


# virtual methods
.method public final a([BI)La/a/a/a/h;
    .locals 8

    const/16 v7, 0x40

    add-int/lit8 v1, p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v2, p0, La/a/a/a/o;->b:La/a/a/a/a/o;

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, La/a/a/a/a/o;->a(B)S

    move-result v2

    const/16 v3, 0xfa

    if-ge v2, v3, :cond_0

    iget v3, p0, La/a/a/a/o;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, La/a/a/a/o;->g:I

    :cond_0
    if-ge v2, v7, :cond_1

    iget v3, p0, La/a/a/a/o;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, La/a/a/a/o;->h:I

    iget-short v3, p0, La/a/a/a/o;->d:S

    if-ge v3, v7, :cond_1

    iget v3, p0, La/a/a/a/o;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, La/a/a/a/o;->e:I

    iget-boolean v3, p0, La/a/a/a/o;->c:Z

    if-nez v3, :cond_2

    iget-object v3, p0, La/a/a/a/o;->f:[I

    iget-object v4, p0, La/a/a/a/o;->b:La/a/a/a/a/o;

    iget-short v5, p0, La/a/a/a/o;->d:S

    mul-int/lit8 v5, v5, 0x40

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, La/a/a/a/a/o;->a(I)B

    move-result v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    :cond_1
    :goto_1
    iput-short v2, p0, La/a/a/a/o;->d:S

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, La/a/a/a/o;->f:[I

    iget-object v4, p0, La/a/a/a/o;->b:La/a/a/a/a/o;

    mul-int/lit8 v5, v2, 0x40

    iget-short v6, p0, La/a/a/a/o;->d:S

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, La/a/a/a/a/o;->a(I)B

    move-result v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, La/a/a/a/o;->a:La/a/a/a/h;

    sget-object v1, La/a/a/a/h;->a:La/a/a/a/h;

    if-ne v0, v1, :cond_4

    iget v0, p0, La/a/a/a/o;->e:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_4

    invoke-virtual {p0}, La/a/a/a/o;->b()F

    move-result v0

    const v1, 0x3f733333

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    sget-object v0, La/a/a/a/h;->b:La/a/a/a/h;

    iput-object v0, p0, La/a/a/a/o;->a:La/a/a/a/h;

    :cond_4
    :goto_2
    iget-object v0, p0, La/a/a/a/o;->a:La/a/a/a/h;

    return-object v0

    :cond_5
    const v1, 0x3d4ccccd

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    sget-object v0, La/a/a/a/h;->c:La/a/a/a/h;

    iput-object v0, p0, La/a/a/a/o;->a:La/a/a/a/h;

    goto :goto_2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/o;->i:La/a/a/a/m;

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/o;->b:La/a/a/a/a/o;

    invoke-virtual {v0}, La/a/a/a/a/o;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/a/o;->i:La/a/a/a/m;

    invoke-virtual {v0}, La/a/a/a/m;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()F
    .locals 3

    const/high16 v2, 0x3f80

    iget v0, p0, La/a/a/a/o;->e:I

    if-lez v0, :cond_1

    iget-object v0, p0, La/a/a/a/o;->f:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, La/a/a/a/o;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, La/a/a/a/o;->b:La/a/a/a/a/o;

    invoke-virtual {v1}, La/a/a/a/a/o;->a()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, La/a/a/a/o;->h:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, La/a/a/a/o;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_0

    const v0, 0x3f7d70a4

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, 0x3c23d70a

    goto :goto_0
.end method

.method public final c()La/a/a/a/h;
    .locals 1

    iget-object v0, p0, La/a/a/a/o;->a:La/a/a/a/h;

    return-object v0
.end method

.method public final d()V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, La/a/a/a/h;->a:La/a/a/a/h;

    iput-object v0, p0, La/a/a/a/o;->a:La/a/a/a/h;

    const/16 v0, 0xff

    iput-short v0, p0, La/a/a/a/o;->d:S

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v2, p0, La/a/a/a/o;->f:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, La/a/a/a/o;->e:I

    iput v1, p0, La/a/a/a/o;->g:I

    iput v1, p0, La/a/a/a/o;->h:I

    return-void
.end method
