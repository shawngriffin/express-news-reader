.class public final enum Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

.field public static final enum DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

.field public static final enum DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

.field public static final enum None:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    new-instance v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    const-string v1, "DownloadPending"

    invoke-direct {v0, v1, v3}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    new-instance v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    const-string v1, "DownloadCompleted"

    invoke-direct {v0, v1, v4}, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->$VALUES:[Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;
    .locals 1

    const-class v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    return-object v0
.end method

.method public static values()[Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;
    .locals 1

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->$VALUES:[Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v0}, [Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    return-object v0
.end method
