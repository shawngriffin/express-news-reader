.class public Lcom/j256/ormlite/field/types/ShortType;
.super Lcom/j256/ormlite/field/types/ShortObjectType;


# static fields
.field private static final singleTon:Lcom/j256/ormlite/field/types/ShortType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/j256/ormlite/field/types/ShortType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/ShortType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/ShortType;->singleTon:Lcom/j256/ormlite/field/types/ShortType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    sget-object v0, Lcom/j256/ormlite/field/SqlType;->SHORT:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/ShortObjectType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    return-void
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/ShortType;
    .locals 1

    sget-object v0, Lcom/j256/ormlite/field/types/ShortType;->singleTon:Lcom/j256/ormlite/field/types/ShortType;

    return-object v0
.end method


# virtual methods
.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
