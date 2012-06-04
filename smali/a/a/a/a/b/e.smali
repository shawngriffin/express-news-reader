.class public abstract La/a/a/a/b/e;
.super Ljava/lang/Object;


# instance fields
.field private a:La/a/a/a/b/a;

.field private b:I

.field private c:La/a/a/a/b/a;

.field private d:[I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/a/a/a/b/a;ILa/a/a/a/b/a;[ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/b/e;->a:La/a/a/a/b/a;

    iput p2, p0, La/a/a/a/b/e;->b:I

    iput-object p3, p0, La/a/a/a/b/e;->c:La/a/a/a/b/a;

    iput-object p4, p0, La/a/a/a/b/e;->d:[I

    iput-object p5, p0, La/a/a/a/b/e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(B)I
    .locals 2

    and-int/lit16 v0, p1, 0xff

    iget-object v1, p0, La/a/a/a/b/e;->a:La/a/a/a/b/a;

    invoke-virtual {v1, v0}, La/a/a/a/b/a;->a(I)I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .locals 1

    iget-object v0, p0, La/a/a/a/b/e;->d:[I

    aget v0, v0, p1

    return v0
.end method

.method public final a(II)I
    .locals 2

    iget-object v0, p0, La/a/a/a/b/e;->c:La/a/a/a/b/a;

    iget v1, p0, La/a/a/a/b/e;->b:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, La/a/a/a/b/a;->a(I)I

    move-result v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/b/e;->e:Ljava/lang/String;

    return-object v0
.end method
