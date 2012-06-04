.class public final enum Lcom/appyet/mobile/a/av;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/appyet/mobile/a/av;

.field public static final enum b:Lcom/appyet/mobile/a/av;

.field public static final enum c:Lcom/appyet/mobile/a/av;

.field private static final synthetic d:[Lcom/appyet/mobile/a/av;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/mobile/a/av;

    const-string v1, "Success"

    invoke-direct {v0, v1, v2}, Lcom/appyet/mobile/a/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/a/av;->a:Lcom/appyet/mobile/a/av;

    new-instance v0, Lcom/appyet/mobile/a/av;

    const-string v1, "Failed"

    invoke-direct {v0, v1, v3}, Lcom/appyet/mobile/a/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/a/av;->b:Lcom/appyet/mobile/a/av;

    new-instance v0, Lcom/appyet/mobile/a/av;

    const-string v1, "NoChange"

    invoke-direct {v0, v1, v4}, Lcom/appyet/mobile/a/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/a/av;->c:Lcom/appyet/mobile/a/av;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appyet/mobile/a/av;

    sget-object v1, Lcom/appyet/mobile/a/av;->a:Lcom/appyet/mobile/a/av;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/mobile/a/av;->b:Lcom/appyet/mobile/a/av;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appyet/mobile/a/av;->c:Lcom/appyet/mobile/a/av;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appyet/mobile/a/av;->d:[Lcom/appyet/mobile/a/av;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/mobile/a/av;
    .locals 1

    const-class v0, Lcom/appyet/mobile/a/av;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/a/av;

    return-object v0
.end method

.method public static values()[Lcom/appyet/mobile/a/av;
    .locals 1

    sget-object v0, Lcom/appyet/mobile/a/av;->d:[Lcom/appyet/mobile/a/av;

    invoke-virtual {v0}, [Lcom/appyet/mobile/a/av;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/mobile/a/av;

    return-object v0
.end method
