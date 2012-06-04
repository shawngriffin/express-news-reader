.class public abstract La/a/a/a/a/o;
.super Ljava/lang/Object;


# instance fields
.field private a:[S

.field private b:[B

.field private c:F

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>([S[BFLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/a/o;->a:[S

    iput-object p2, p0, La/a/a/a/a/o;->b:[B

    iput p3, p0, La/a/a/a/a/o;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/o;->d:Z

    iput-object p4, p0, La/a/a/a/a/o;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    iget-object v0, p0, La/a/a/a/a/o;->b:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final a()F
    .locals 1

    iget v0, p0, La/a/a/a/a/o;->c:F

    return v0
.end method

.method public final a(B)S
    .locals 2

    and-int/lit16 v0, p1, 0xff

    iget-object v1, p0, La/a/a/a/a/o;->a:[S

    aget-short v0, v1, v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/o;->e:Ljava/lang/String;

    return-object v0
.end method
