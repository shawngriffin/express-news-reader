.class public final La/a/a/a/c;
.super La/a/a/a/m;


# static fields
.field private static final e:La/a/a/a/b/d;

.field private static final f:La/a/a/a/b/h;

.field private static final g:La/a/a/a/b/b;

.field private static final h:La/a/a/a/b/m;


# instance fields
.field private a:[La/a/a/a/b/g;

.field private b:I

.field private c:La/a/a/a/h;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a/a/b/d;

    invoke-direct {v0}, La/a/a/a/b/d;-><init>()V

    sput-object v0, La/a/a/a/c;->e:La/a/a/a/b/d;

    new-instance v0, La/a/a/a/b/h;

    invoke-direct {v0}, La/a/a/a/b/h;-><init>()V

    sput-object v0, La/a/a/a/c;->f:La/a/a/a/b/h;

    new-instance v0, La/a/a/a/b/b;

    invoke-direct {v0}, La/a/a/a/b/b;-><init>()V

    sput-object v0, La/a/a/a/c;->g:La/a/a/a/b/b;

    new-instance v0, La/a/a/a/b/m;

    invoke-direct {v0}, La/a/a/a/b/m;-><init>()V

    sput-object v0, La/a/a/a/c;->h:La/a/a/a/b/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, La/a/a/a/m;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [La/a/a/a/b/g;

    iput-object v0, p0, La/a/a/a/c;->a:[La/a/a/a/b/g;

    iget-object v0, p0, La/a/a/a/c;->a:[La/a/a/a/b/g;

    const/4 v1, 0x0

    new-instance v2, La/a/a/a/b/g;

    sget-object v3, La/a/a/a/c;->e:La/a/a/a/b/d;

    invoke-direct {v2, v3}, La/a/a/a/b/g;-><init>(La/a/a/a/b/e;)V

    aput-object v2, v0, v1

    iget-object v0, p0, La/a/a/a/c;->a:[La/a/a/a/b/g;

    const/4 v1, 0x1

    new-instance v2, La/a/a/a/b/g;

    sget-object v3, La/a/a/a/c;->f:La/a/a/a/b/h;

    invoke-direct {v2, v3}, La/a/a/a/b/g;-><init>(La/a/a/a/b/e;)V

    aput-object v2, v0, v1

    iget-object v0, p0, La/a/a/a/c;->a:[La/a/a/a/b/g;

    const/4 v1, 0x2

    new-instance v2, La/a/a/a/b/g;

    sget-object v3, La/a/a/a/c;->g:La/a/a/a/b/b;

    invoke-direct {v2, v3}, La/a/a/a/b/g;-><init>(La/a/a/a/b/e;)V

    aput-object v2, v0, v1

    iget-object v0, p0, La/a/a/a/c;->a:[La/a/a/a/b/g;

    const/4 v1, 0x3

    new-instance v2, La/a/a/a/b/g;

    sget-object v3, La/a/a/a/c;->h:La/a/a/a/b/m;

    invoke-direct {v2, v3}, La/a/a/a/b/g;-><init>(La/a/a/a/b/e;)V

    aput-object v2, v0, v1

    invoke-virtual {p0}, La/a/a/a/c;->d()V

    return-void
.end method


# virtual methods
.method public final a([BI)La/a/a/a/h;
    .locals 7

    add-int/lit8 v2, p2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    iget-object v0, p0, La/a/a/a/c;->c:La/a/a/a/h;

    sget-object v3, La/a/a/a/h;->a:La/a/a/a/h;

    if-ne v0, v3, :cond_4

    iget v0, p0, La/a/a/a/c;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v3, p0, La/a/a/a/c;->a:[La/a/a/a/b/g;

    aget-object v3, v3, v0

    aget-byte v4, p1, v1

    invoke-virtual {v3, v4}, La/a/a/a/b/g;->a(B)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget v3, p0, La/a/a/a/c;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, La/a/a/a/c;->b:I

    iget v3, p0, La/a/a/a/c;->b:I

    if-gtz v3, :cond_0

    sget-object v0, La/a/a/a/h;->c:La/a/a/a/h;

    iput-object v0, p0, La/a/a/a/c;->c:La/a/a/a/h;

    iget-object v0, p0, La/a/a/a/c;->c:La/a/a/a/h;

    :goto_2
    return-object v0

    :cond_0
    iget v3, p0, La/a/a/a/c;->b:I

    if-eq v0, v3, :cond_1

    iget-object v3, p0, La/a/a/a/c;->a:[La/a/a/a/b/g;

    iget v4, p0, La/a/a/a/c;->b:I

    aget-object v3, v3, v4

    iget-object v4, p0, La/a/a/a/c;->a:[La/a/a/a/b/g;

    iget v5, p0, La/a/a/a/c;->b:I

    iget-object v6, p0, La/a/a/a/c;->a:[La/a/a/a/b/g;

    aget-object v6, v6, v0

    aput-object v6, v4, v5

    iget-object v4, p0, La/a/a/a/c;->a:[La/a/a/a/b/g;

    aput-object v3, v4, v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    sget-object v1, La/a/a/a/h;->b:La/a/a/a/h;

    iput-object v1, p0, La/a/a/a/c;->c:La/a/a/a/h;

    iget-object v1, p0, La/a/a/a/c;->a:[La/a/a/a/b/g;

    aget-object v0, v1, v0

    invoke-virtual {v0}, La/a/a/a/b/g;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/c;->d:Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/c;->c:La/a/a/a/h;

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, La/a/a/a/c;->c:La/a/a/a/h;

    goto :goto_2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()F
    .locals 1

    const v0, 0x3f7d70a4

    return v0
.end method

.method public final c()La/a/a/a/h;
    .locals 1

    iget-object v0, p0, La/a/a/a/c;->c:La/a/a/a/h;

    return-object v0
.end method

.method public final d()V
    .locals 2

    sget-object v0, La/a/a/a/h;->a:La/a/a/a/h;

    iput-object v0, p0, La/a/a/a/c;->c:La/a/a/a/h;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, La/a/a/a/c;->a:[La/a/a/a/b/g;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, La/a/a/a/c;->a:[La/a/a/a/b/g;

    aget-object v1, v1, v0

    invoke-virtual {v1}, La/a/a/a/b/g;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/a/a/c;->a:[La/a/a/a/b/g;

    array-length v0, v0

    iput v0, p0, La/a/a/a/c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/c;->d:Ljava/lang/String;

    return-void
.end method
