.class public final Lcom/google/android/apps/analytics/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/apps/analytics/p;


# instance fields
.field private b:I

.field private c:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/apps/analytics/p;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/p;-><init>()V

    sput-object v0, Lcom/google/android/apps/analytics/p;->a:Lcom/google/android/apps/analytics/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/p;->c:Ljava/util/Random;

    return-void
.end method

.method public static a()Lcom/google/android/apps/analytics/p;
    .locals 1

    sget-object v0, Lcom/google/android/apps/analytics/p;->a:Lcom/google/android/apps/analytics/p;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/p;->c:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/p;->b:I

    iget v0, p0, Lcom/google/android/apps/analytics/p;->b:I

    return v0
.end method
