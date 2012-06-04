.class public final enum Lcom/appyet/mobile/activity/bo;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/appyet/mobile/activity/bo;

.field public static final enum b:Lcom/appyet/mobile/activity/bo;

.field private static final synthetic c:[Lcom/appyet/mobile/activity/bo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/mobile/activity/bo;

    const-string v1, "PlayList"

    invoke-direct {v0, v1, v2}, Lcom/appyet/mobile/activity/bo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/activity/bo;->a:Lcom/appyet/mobile/activity/bo;

    new-instance v0, Lcom/appyet/mobile/activity/bo;

    const-string v1, "Podcast"

    invoke-direct {v0, v1, v3}, Lcom/appyet/mobile/activity/bo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/activity/bo;->b:Lcom/appyet/mobile/activity/bo;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appyet/mobile/activity/bo;

    sget-object v1, Lcom/appyet/mobile/activity/bo;->a:Lcom/appyet/mobile/activity/bo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/mobile/activity/bo;->b:Lcom/appyet/mobile/activity/bo;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appyet/mobile/activity/bo;->c:[Lcom/appyet/mobile/activity/bo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/mobile/activity/bo;
    .locals 1

    const-class v0, Lcom/appyet/mobile/activity/bo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/activity/bo;

    return-object v0
.end method

.method public static values()[Lcom/appyet/mobile/activity/bo;
    .locals 1

    sget-object v0, Lcom/appyet/mobile/activity/bo;->c:[Lcom/appyet/mobile/activity/bo;

    invoke-virtual {v0}, [Lcom/appyet/mobile/activity/bo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/mobile/activity/bo;

    return-object v0
.end method
