.class public final La/a/a/a/b/g;
.super Ljava/lang/Object;


# instance fields
.field private a:La/a/a/a/b/e;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(La/a/a/a/b/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/b/g;->a:La/a/a/a/b/e;

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/b/g;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, La/a/a/a/b/g;->c:I

    return v0
.end method

.method public final a(B)I
    .locals 3

    iget-object v0, p0, La/a/a/a/b/g;->a:La/a/a/a/b/e;

    invoke-virtual {v0, p1}, La/a/a/a/b/e;->a(B)I

    move-result v0

    iget v1, p0, La/a/a/a/b/g;->b:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, La/a/a/a/b/g;->d:I

    iget-object v1, p0, La/a/a/a/b/g;->a:La/a/a/a/b/e;

    invoke-virtual {v1, v0}, La/a/a/a/b/e;->a(I)I

    move-result v1

    iput v1, p0, La/a/a/a/b/g;->c:I

    :cond_0
    iget-object v1, p0, La/a/a/a/b/g;->a:La/a/a/a/b/e;

    iget v2, p0, La/a/a/a/b/g;->b:I

    invoke-virtual {v1, v0, v2}, La/a/a/a/b/e;->a(II)I

    move-result v0

    iput v0, p0, La/a/a/a/b/g;->b:I

    iget v0, p0, La/a/a/a/b/g;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/g;->d:I

    iget v0, p0, La/a/a/a/b/g;->b:I

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/b/g;->b:I

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/b/g;->a:La/a/a/a/b/e;

    invoke-virtual {v0}, La/a/a/a/b/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
