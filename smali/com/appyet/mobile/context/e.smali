.class public final enum Lcom/appyet/mobile/context/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/appyet/mobile/context/e;

.field public static final enum b:Lcom/appyet/mobile/context/e;

.field private static enum c:Lcom/appyet/mobile/context/e;

.field private static enum d:Lcom/appyet/mobile/context/e;

.field private static enum e:Lcom/appyet/mobile/context/e;

.field private static final synthetic f:[Lcom/appyet/mobile/context/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/mobile/context/e;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/appyet/mobile/context/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/context/e;->a:Lcom/appyet/mobile/context/e;

    new-instance v0, Lcom/appyet/mobile/context/e;

    const-string v1, "AdMob"

    invoke-direct {v0, v1, v3}, Lcom/appyet/mobile/context/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/context/e;->b:Lcom/appyet/mobile/context/e;

    new-instance v0, Lcom/appyet/mobile/context/e;

    const-string v1, "Millennial"

    invoke-direct {v0, v1, v4}, Lcom/appyet/mobile/context/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/context/e;->c:Lcom/appyet/mobile/context/e;

    new-instance v0, Lcom/appyet/mobile/context/e;

    const-string v1, "MoPub"

    invoke-direct {v0, v1, v5}, Lcom/appyet/mobile/context/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/context/e;->d:Lcom/appyet/mobile/context/e;

    new-instance v0, Lcom/appyet/mobile/context/e;

    const-string v1, "InMobi"

    invoke-direct {v0, v1, v6}, Lcom/appyet/mobile/context/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/context/e;->e:Lcom/appyet/mobile/context/e;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/appyet/mobile/context/e;

    sget-object v1, Lcom/appyet/mobile/context/e;->a:Lcom/appyet/mobile/context/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/mobile/context/e;->b:Lcom/appyet/mobile/context/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appyet/mobile/context/e;->c:Lcom/appyet/mobile/context/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appyet/mobile/context/e;->d:Lcom/appyet/mobile/context/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appyet/mobile/context/e;->e:Lcom/appyet/mobile/context/e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/appyet/mobile/context/e;->f:[Lcom/appyet/mobile/context/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/mobile/context/e;
    .locals 1

    const-class v0, Lcom/appyet/mobile/context/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/e;

    return-object v0
.end method

.method public static values()[Lcom/appyet/mobile/context/e;
    .locals 1

    sget-object v0, Lcom/appyet/mobile/context/e;->f:[Lcom/appyet/mobile/context/e;

    invoke-virtual {v0}, [Lcom/appyet/mobile/context/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/mobile/context/e;

    return-object v0
.end method
