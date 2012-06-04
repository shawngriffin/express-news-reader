.class public final enum Lcom/appyet/mobile/manager/ax;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/appyet/mobile/manager/ax;

.field public static final enum b:Lcom/appyet/mobile/manager/ax;

.field private static final synthetic c:[Lcom/appyet/mobile/manager/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/mobile/manager/ax;

    const-string v1, "Grid"

    invoke-direct {v0, v1, v2}, Lcom/appyet/mobile/manager/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    new-instance v0, Lcom/appyet/mobile/manager/ax;

    const-string v1, "List"

    invoke-direct {v0, v1, v3}, Lcom/appyet/mobile/manager/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/manager/ax;->b:Lcom/appyet/mobile/manager/ax;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appyet/mobile/manager/ax;

    sget-object v1, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/mobile/manager/ax;->b:Lcom/appyet/mobile/manager/ax;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appyet/mobile/manager/ax;->c:[Lcom/appyet/mobile/manager/ax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/mobile/manager/ax;
    .locals 1

    const-class v0, Lcom/appyet/mobile/manager/ax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/manager/ax;

    return-object v0
.end method

.method public static values()[Lcom/appyet/mobile/manager/ax;
    .locals 1

    sget-object v0, Lcom/appyet/mobile/manager/ax;->c:[Lcom/appyet/mobile/manager/ax;

    invoke-virtual {v0}, [Lcom/appyet/mobile/manager/ax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/mobile/manager/ax;

    return-object v0
.end method
