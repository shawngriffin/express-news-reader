.class public final La/a/a/a/l;
.super La/a/a/a/m;


# static fields
.field private static final d:La/a/a/a/b/e;


# instance fields
.field private a:La/a/a/a/b/g;

.field private b:La/a/a/a/h;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a/a/b/c;

    invoke-direct {v0}, La/a/a/a/b/c;-><init>()V

    sput-object v0, La/a/a/a/l;->d:La/a/a/a/b/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, La/a/a/a/m;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/l;->c:I

    new-instance v0, La/a/a/a/b/g;

    sget-object v1, La/a/a/a/l;->d:La/a/a/a/b/e;

    invoke-direct {v0, v1}, La/a/a/a/b/g;-><init>(La/a/a/a/b/e;)V

    iput-object v0, p0, La/a/a/a/l;->a:La/a/a/a/b/g;

    invoke-virtual {p0}, La/a/a/a/l;->d()V

    return-void
.end method


# virtual methods
.method public final a([BI)La/a/a/a/h;
    .locals 5

    const/4 v4, 0x2

    add-int/lit8 v1, p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, La/a/a/a/l;->a:La/a/a/a/b/g;

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, La/a/a/a/b/g;->a(B)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    sget-object v0, La/a/a/a/h;->c:La/a/a/a/h;

    iput-object v0, p0, La/a/a/a/l;->b:La/a/a/a/h;

    :cond_0
    :goto_1
    iget-object v0, p0, La/a/a/a/l;->b:La/a/a/a/h;

    sget-object v1, La/a/a/a/h;->a:La/a/a/a/h;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, La/a/a/a/l;->b()F

    move-result v0

    const v1, 0x3f733333

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget-object v0, La/a/a/a/h;->b:La/a/a/a/h;

    iput-object v0, p0, La/a/a/a/l;->b:La/a/a/a/h;

    :cond_1
    iget-object v0, p0, La/a/a/a/l;->b:La/a/a/a/h;

    return-object v0

    :cond_2
    if-ne v2, v4, :cond_3

    sget-object v0, La/a/a/a/h;->b:La/a/a/a/h;

    iput-object v0, p0, La/a/a/a/l;->b:La/a/a/a/h;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    iget-object v2, p0, La/a/a/a/l;->a:La/a/a/a/b/g;

    invoke-virtual {v2}, La/a/a/a/b/g;->a()I

    move-result v2

    if-lt v2, v4, :cond_4

    iget v2, p0, La/a/a/a/l;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La/a/a/a/l;->c:I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, La/a/a/d;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final b()F
    .locals 3

    const v1, 0x3f7d70a4

    iget v0, p0, La/a/a/a/l;->c:I

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, La/a/a/a/l;->c:I

    if-ge v0, v2, :cond_0

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f80

    sub-float v1, v0, v1

    :cond_1
    return v1
.end method

.method public final c()La/a/a/a/h;
    .locals 1

    iget-object v0, p0, La/a/a/a/l;->b:La/a/a/a/h;

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, La/a/a/a/l;->a:La/a/a/a/b/g;

    invoke-virtual {v0}, La/a/a/a/b/g;->b()V

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/l;->c:I

    sget-object v0, La/a/a/a/h;->a:La/a/a/a/h;

    iput-object v0, p0, La/a/a/a/l;->b:La/a/a/a/h;

    return-void
.end method
