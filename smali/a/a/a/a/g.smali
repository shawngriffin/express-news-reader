.class public final La/a/a/a/g;
.super La/a/a/a/m;


# instance fields
.field private a:I

.field private b:I

.field private c:B

.field private d:B

.field private e:La/a/a/a/m;

.field private f:La/a/a/a/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, La/a/a/a/m;-><init>()V

    iput-object v0, p0, La/a/a/a/g;->e:La/a/a/a/m;

    iput-object v0, p0, La/a/a/a/g;->f:La/a/a/a/m;

    invoke-virtual {p0}, La/a/a/a/g;->d()V

    return-void
.end method

.method private static a(B)Z
    .locals 2

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0xea

    if-eq v0, v1, :cond_0

    const/16 v1, 0xed

    if-eq v0, v1, :cond_0

    const/16 v1, 0xef

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a([BI)La/a/a/a/h;
    .locals 7

    const/4 v1, 0x0

    const/16 v6, 0x20

    invoke-virtual {p0}, La/a/a/a/g;->c()La/a/a/a/h;

    move-result-object v0

    sget-object v2, La/a/a/a/h;->c:La/a/a/a/h;

    if-ne v0, v2, :cond_0

    sget-object v0, La/a/a/a/h;->c:La/a/a/a/h;

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v3, p2, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_6

    aget-byte v4, p1, v2

    if-ne v4, v6, :cond_5

    iget-byte v0, p0, La/a/a/a/g;->d:B

    if-eq v0, v6, :cond_1

    iget-byte v0, p0, La/a/a/a/g;->c:B

    invoke-static {v0}, La/a/a/a/g;->a(B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, La/a/a/a/g;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/g;->a:I

    :cond_1
    :goto_2
    iget-byte v0, p0, La/a/a/a/g;->c:B

    iput-byte v0, p0, La/a/a/a/g;->d:B

    iput-byte v4, p0, La/a/a/a/g;->c:B

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-byte v0, p0, La/a/a/a/g;->c:B

    and-int/lit16 v0, v0, 0xff

    const/16 v5, 0xeb

    if-eq v0, v5, :cond_3

    const/16 v5, 0xee

    if-eq v0, v5, :cond_3

    const/16 v5, 0xf0

    if-eq v0, v5, :cond_3

    const/16 v5, 0xf4

    if-ne v0, v5, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_1

    iget v0, p0, La/a/a/a/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/g;->b:I

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    iget-byte v0, p0, La/a/a/a/g;->d:B

    if-ne v0, v6, :cond_1

    iget-byte v0, p0, La/a/a/a/g;->c:B

    invoke-static {v0}, La/a/a/a/g;->a(B)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq v4, v6, :cond_1

    iget v0, p0, La/a/a/a/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/g;->b:I

    goto :goto_2

    :cond_6
    sget-object v0, La/a/a/a/h;->a:La/a/a/a/h;

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    iget v0, p0, La/a/a/a/g;->a:I

    iget v1, p0, La/a/a/a/g;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    sget-object v0, La/a/a/d;->t:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, -0x5

    if-gt v0, v1, :cond_1

    sget-object v0, La/a/a/d;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, La/a/a/a/g;->e:La/a/a/a/m;

    invoke-virtual {v1}, La/a/a/a/m;->b()F

    move-result v1

    iget-object v2, p0, La/a/a/a/g;->f:La/a/a/a/m;

    invoke-virtual {v2}, La/a/a/a/m;->b()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3c23d70a

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    sget-object v0, La/a/a/d;->t:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const v2, -0x43dc28f6

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    sget-object v0, La/a/a/d;->f:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-gez v0, :cond_4

    sget-object v0, La/a/a/d;->f:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, La/a/a/d;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(La/a/a/a/m;La/a/a/a/m;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/g;->e:La/a/a/a/m;

    iput-object p2, p0, La/a/a/a/g;->f:La/a/a/a/m;

    return-void
.end method

.method public final b()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()La/a/a/a/h;
    .locals 2

    iget-object v0, p0, La/a/a/a/g;->e:La/a/a/a/m;

    invoke-virtual {v0}, La/a/a/a/m;->c()La/a/a/a/h;

    move-result-object v0

    sget-object v1, La/a/a/a/h;->c:La/a/a/a/h;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La/a/a/a/g;->f:La/a/a/a/m;

    invoke-virtual {v0}, La/a/a/a/m;->c()La/a/a/a/h;

    move-result-object v0

    sget-object v1, La/a/a/a/h;->c:La/a/a/a/h;

    if-ne v0, v1, :cond_0

    sget-object v0, La/a/a/a/h;->c:La/a/a/a/h;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, La/a/a/a/h;->a:La/a/a/a/h;

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    const/16 v1, 0x20

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/g;->a:I

    iput v0, p0, La/a/a/a/g;->b:I

    iput-byte v1, p0, La/a/a/a/g;->c:B

    iput-byte v1, p0, La/a/a/a/g;->d:B

    return-void
.end method
