.class public final enum Lcom/appyet/mobile/data/FeedItem$FlagEnum;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/appyet/mobile/data/FeedItem$FlagEnum;

.field public static final enum Article:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

.field public static final enum Delete:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

.field public static final enum Feed:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

.field public static final enum None:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

.field public static final enum Update:Lcom/appyet/mobile/data/FeedItem$FlagEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/appyet/mobile/data/FeedItem$FlagEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->None:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    new-instance v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    const-string v1, "Update"

    invoke-direct {v0, v1, v3}, Lcom/appyet/mobile/data/FeedItem$FlagEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->Update:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    new-instance v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    const-string v1, "Delete"

    invoke-direct {v0, v1, v4}, Lcom/appyet/mobile/data/FeedItem$FlagEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->Delete:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    new-instance v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    const-string v1, "Article"

    invoke-direct {v0, v1, v5}, Lcom/appyet/mobile/data/FeedItem$FlagEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->Article:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    new-instance v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    const-string v1, "Feed"

    invoke-direct {v0, v1, v6}, Lcom/appyet/mobile/data/FeedItem$FlagEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->Feed:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->None:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->Update:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->Delete:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->Article:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->Feed:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->$VALUES:[Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/mobile/data/FeedItem$FlagEnum;
    .locals 1

    const-class v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    return-object v0
.end method

.method public static values()[Lcom/appyet/mobile/data/FeedItem$FlagEnum;
    .locals 1

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$FlagEnum;->$VALUES:[Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    invoke-virtual {v0}, [Lcom/appyet/mobile/data/FeedItem$FlagEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    return-object v0
.end method
