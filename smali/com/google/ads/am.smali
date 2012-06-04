.class public final Lcom/google/ads/am;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/ads/am;

.field public static final b:Lcom/google/ads/am;

.field public static final c:Lcom/google/ads/am;

.field public static final d:Lcom/google/ads/am;


# instance fields
.field private e:I

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/ads/am;

    const/16 v1, 0x140

    const/16 v2, 0x32

    const-string v3, "320x50_mb"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/am;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/am;->a:Lcom/google/ads/am;

    new-instance v0, Lcom/google/ads/am;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    const-string v3, "300x250_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/am;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/am;->b:Lcom/google/ads/am;

    new-instance v0, Lcom/google/ads/am;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    const-string v3, "468x60_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/am;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/am;->c:Lcom/google/ads/am;

    new-instance v0, Lcom/google/ads/am;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    const-string v3, "728x90_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/am;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/am;->d:Lcom/google/ads/am;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/am;->e:I

    iput p2, p0, Lcom/google/ads/am;->f:I

    iput-object p3, p0, Lcom/google/ads/am;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/ads/am;->e:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/ads/am;->f:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/am;->g:Ljava/lang/String;

    return-object v0
.end method
