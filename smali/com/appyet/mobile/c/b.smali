.class public final enum Lcom/appyet/mobile/c/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/appyet/mobile/c/b;

.field private static enum b:Lcom/appyet/mobile/c/b;

.field private static final synthetic c:[Lcom/appyet/mobile/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/mobile/c/b;

    const-string v1, "Get"

    invoke-direct {v0, v1, v2}, Lcom/appyet/mobile/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/c/b;->a:Lcom/appyet/mobile/c/b;

    new-instance v0, Lcom/appyet/mobile/c/b;

    const-string v1, "Post"

    invoke-direct {v0, v1, v3}, Lcom/appyet/mobile/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/c/b;->b:Lcom/appyet/mobile/c/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appyet/mobile/c/b;

    sget-object v1, Lcom/appyet/mobile/c/b;->a:Lcom/appyet/mobile/c/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/mobile/c/b;->b:Lcom/appyet/mobile/c/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appyet/mobile/c/b;->c:[Lcom/appyet/mobile/c/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/mobile/c/b;
    .locals 1

    const-class v0, Lcom/appyet/mobile/c/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/b;

    return-object v0
.end method

.method public static values()[Lcom/appyet/mobile/c/b;
    .locals 1

    sget-object v0, Lcom/appyet/mobile/c/b;->c:[Lcom/appyet/mobile/c/b;

    invoke-virtual {v0}, [Lcom/appyet/mobile/c/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/mobile/c/b;

    return-object v0
.end method
