.class public final La/a/a/a/j;
.super La/a/a/a/m;


# static fields
.field private static final f:La/a/a/a/b/e;


# instance fields
.field private a:La/a/a/a/b/g;

.field private b:La/a/a/a/h;

.field private c:La/a/a/a/c/c;

.field private d:La/a/a/a/d/b;

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a/a/b/i;

    invoke-direct {v0}, La/a/a/a/b/i;-><init>()V

    sput-object v0, La/a/a/a/j;->f:La/a/a/a/b/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, La/a/a/a/m;-><init>()V

    new-instance v0, La/a/a/a/b/g;

    sget-object v1, La/a/a/a/j;->f:La/a/a/a/b/e;

    invoke-direct {v0, v1}, La/a/a/a/b/g;-><init>(La/a/a/a/b/e;)V

    iput-object v0, p0, La/a/a/a/j;->a:La/a/a/a/b/g;

    new-instance v0, La/a/a/a/c/c;

    invoke-direct {v0}, La/a/a/a/c/c;-><init>()V

    iput-object v0, p0, La/a/a/a/j;->c:La/a/a/a/c/c;

    new-instance v0, La/a/a/a/d/b;

    invoke-direct {v0}, La/a/a/a/d/b;-><init>()V

    iput-object v0, p0, La/a/a/a/j;->d:La/a/a/a/d/b;

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, La/a/a/a/j;->e:[B

    invoke-virtual {p0}, La/a/a/a/j;->d()V

    return-void
.end method


# virtual methods
.method public final a([BI)La/a/a/a/h;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, La/a/a/a/j;->a:La/a/a/a/b/g;

    aget-byte v4, p1, v0

    invoke-virtual {v3, v4}, La/a/a/a/b/g;->a(B)I

    move-result v3

    if-ne v3, v7, :cond_2

    sget-object v0, La/a/a/a/h;->c:La/a/a/a/h;

    iput-object v0, p0, La/a/a/a/j;->b:La/a/a/a/h;

    :cond_0
    :goto_1
    iget-object v0, p0, La/a/a/a/j;->e:[B

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, La/a/a/a/j;->b:La/a/a/a/h;

    sget-object v1, La/a/a/a/h;->a:La/a/a/a/h;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, La/a/a/a/j;->c:La/a/a/a/c/c;

    invoke-virtual {v0}, La/a/a/a/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, La/a/a/a/j;->b()F

    move-result v0

    const v1, 0x3f733333

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget-object v0, La/a/a/a/h;->b:La/a/a/a/h;

    iput-object v0, p0, La/a/a/a/j;->b:La/a/a/a/h;

    :cond_1
    iget-object v0, p0, La/a/a/a/j;->b:La/a/a/a/h;

    return-object v0

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    sget-object v0, La/a/a/a/h;->b:La/a/a/a/h;

    iput-object v0, p0, La/a/a/a/j;->b:La/a/a/a/h;

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    iget-object v3, p0, La/a/a/a/j;->a:La/a/a/a/b/g;

    invoke-virtual {v3}, La/a/a/a/b/g;->a()I

    move-result v3

    if-nez v0, :cond_5

    iget-object v4, p0, La/a/a/a/j;->e:[B

    aget-byte v5, p1, v1

    aput-byte v5, v4, v7

    iget-object v4, p0, La/a/a/a/j;->c:La/a/a/a/c/c;

    iget-object v5, p0, La/a/a/a/j;->e:[B

    rsub-int/lit8 v6, v3, 0x2

    invoke-virtual {v4, v5, v6, v3}, La/a/a/a/c/c;->a([BII)V

    iget-object v4, p0, La/a/a/a/j;->d:La/a/a/a/d/b;

    iget-object v5, p0, La/a/a/a/j;->e:[B

    invoke-virtual {v4, v5, v1, v3}, La/a/a/a/d/b;->a([BII)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, p0, La/a/a/a/j;->c:La/a/a/a/c/c;

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v5, v3

    invoke-virtual {v4, p1, v5, v3}, La/a/a/a/c/c;->a([BII)V

    iget-object v4, p0, La/a/a/a/j;->d:La/a/a/a/d/b;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, p1, v5, v3}, La/a/a/a/d/b;->a([BII)V

    goto :goto_2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, La/a/a/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final b()F
    .locals 2

    iget-object v0, p0, La/a/a/a/j;->c:La/a/a/a/c/c;

    invoke-virtual {v0}, La/a/a/a/c/c;->a()F

    move-result v0

    iget-object v1, p0, La/a/a/a/j;->d:La/a/a/a/d/b;

    invoke-virtual {v1}, La/a/a/a/d/b;->a()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final c()La/a/a/a/h;
    .locals 1

    iget-object v0, p0, La/a/a/a/j;->b:La/a/a/a/h;

    return-object v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, La/a/a/a/j;->a:La/a/a/a/b/g;

    invoke-virtual {v0}, La/a/a/a/b/g;->b()V

    sget-object v0, La/a/a/a/h;->a:La/a/a/a/h;

    iput-object v0, p0, La/a/a/a/j;->b:La/a/a/a/h;

    iget-object v0, p0, La/a/a/a/j;->c:La/a/a/a/c/c;

    invoke-virtual {v0}, La/a/a/a/c/c;->b()V

    iget-object v0, p0, La/a/a/a/j;->d:La/a/a/a/d/b;

    invoke-virtual {v0}, La/a/a/a/d/b;->b()V

    iget-object v0, p0, La/a/a/a/j;->e:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method
