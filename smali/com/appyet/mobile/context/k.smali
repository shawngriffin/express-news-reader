.class public final enum Lcom/appyet/mobile/context/k;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/appyet/mobile/context/k;

.field public static final enum b:Lcom/appyet/mobile/context/k;

.field private static final synthetic c:[Lcom/appyet/mobile/context/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/mobile/context/k;

    const-string v1, "InstapaperMobilizer"

    invoke-direct {v0, v1, v2}, Lcom/appyet/mobile/context/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/context/k;->a:Lcom/appyet/mobile/context/k;

    new-instance v0, Lcom/appyet/mobile/context/k;

    const-string v1, "GoogleMobilizer"

    invoke-direct {v0, v1, v3}, Lcom/appyet/mobile/context/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/context/k;->b:Lcom/appyet/mobile/context/k;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appyet/mobile/context/k;

    sget-object v1, Lcom/appyet/mobile/context/k;->a:Lcom/appyet/mobile/context/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/mobile/context/k;->b:Lcom/appyet/mobile/context/k;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appyet/mobile/context/k;->c:[Lcom/appyet/mobile/context/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/mobile/context/k;
    .locals 1

    const-class v0, Lcom/appyet/mobile/context/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/k;

    return-object v0
.end method

.method public static values()[Lcom/appyet/mobile/context/k;
    .locals 1

    sget-object v0, Lcom/appyet/mobile/context/k;->c:[Lcom/appyet/mobile/context/k;

    invoke-virtual {v0}, [Lcom/appyet/mobile/context/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/mobile/context/k;

    return-object v0
.end method
