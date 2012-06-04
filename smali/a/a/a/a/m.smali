.class public abstract La/a/a/a/m;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(B)Z
    .locals 1

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b([BI)Ljava/nio/ByteBuffer;
    .locals 8

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    add-int/lit8 v5, p1, 0x0

    move v3, v2

    move v0, v2

    move v1, v2

    :goto_0
    if-ge v3, v5, :cond_3

    aget-byte v6, p0, v3

    invoke-static {v6}, La/a/a/a/m;->a(B)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v6}, La/a/a/a/m;->b(B)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_2

    if-le v3, v0, :cond_2

    sub-int v1, v3, v0

    invoke-virtual {v4, p0, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, 0x1

    move v1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    if-le v3, v0, :cond_4

    sub-int v1, v3, v0

    invoke-virtual {v4, p0, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_4
    return-object v4
.end method

.method private static b(B)Z
    .locals 2

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c([BI)Ljava/nio/ByteBuffer;
    .locals 8

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    add-int/lit8 v5, p1, 0x0

    move v3, v1

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v3, v5, :cond_4

    aget-byte v6, p0, v3

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_3

    move v0, v1

    :cond_0
    :goto_1
    invoke-static {v6}, La/a/a/a/m;->a(B)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, La/a/a/a/m;->b(B)Z

    move-result v6

    if-eqz v6, :cond_2

    if-le v3, v2, :cond_1

    if-nez v0, :cond_1

    sub-int v6, v3, v2

    invoke-virtual {v4, p0, v2, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v2, 0x20

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_1
    add-int/lit8 v2, v3, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v7, 0x3c

    if-ne v6, v7, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    if-le v3, v2, :cond_5

    sub-int v0, v3, v2

    invoke-virtual {v4, p0, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_5
    return-object v4
.end method


# virtual methods
.method public abstract a([BI)La/a/a/a/h;
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()F
.end method

.method public abstract c()La/a/a/a/h;
.end method

.method public abstract d()V
.end method
