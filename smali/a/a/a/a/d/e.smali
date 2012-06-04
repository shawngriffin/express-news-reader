.class public abstract La/a/a/a/d/e;
.super Ljava/lang/Object;


# instance fields
.field protected a:[I

.field protected b:F

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, La/a/a/a/d/e;->b()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 4

    const v1, 0x3f7d70a4

    iget v0, p0, La/a/a/a/d/e;->d:I

    if-lez v0, :cond_0

    iget v0, p0, La/a/a/a/d/e;->c:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_2

    :cond_0
    const v0, 0x3c23d70a

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v0, p0, La/a/a/a/d/e;->d:I

    iget v2, p0, La/a/a/a/d/e;->c:I

    if-eq v0, v2, :cond_3

    iget v0, p0, La/a/a/a/d/e;->c:I

    iget v2, p0, La/a/a/a/d/e;->d:I

    iget v3, p0, La/a/a/a/d/e;->c:I

    sub-int/2addr v2, v3

    div-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, La/a/a/a/d/e;->b:F

    mul-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected abstract a([BI)I
.end method

.method public final a([BII)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    invoke-virtual {p0, p1, p2}, La/a/a/a/d/e;->a([BI)I

    move-result v0

    :cond_0
    if-ltz v0, :cond_1

    iget v1, p0, La/a/a/a/d/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/a/a/a/d/e;->d:I

    iget-object v1, p0, La/a/a/a/d/e;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/16 v1, 0x200

    iget-object v2, p0, La/a/a/a/d/e;->a:[I

    aget v0, v2, v0

    if-le v1, v0, :cond_1

    iget v0, p0, La/a/a/a/d/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/d/e;->c:I

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/d/e;->e:Z

    iput v0, p0, La/a/a/a/d/e;->d:I

    iput v0, p0, La/a/a/a/d/e;->c:I

    return-void
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, La/a/a/a/d/e;->d:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
