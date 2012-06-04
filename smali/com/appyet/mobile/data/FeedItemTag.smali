.class public Lcom/appyet/mobile/data/FeedItemTag;
.super Ljava/lang/Object;


# static fields
.field public static final COLUMN_FEEDITEMTAG_ID:Ljava/lang/String; = "FeedItemTagId"

.field public static final COLUMN_FEEDITEM_ID:Ljava/lang/String; = "FeedItemId"

.field public static final COLUMN_TAG_ID:Ljava/lang/String; = "TagId"


# instance fields
.field private mFeedItemId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "FeedItemId"
        useGetSet = false
    .end annotation
.end field

.field private mFeedItemTagId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "FeedItemTagId"
        generatedId = true
        useGetSet = false
    .end annotation
.end field

.field private mTagId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "TagId"
        useGetSet = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeedItemId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItemTag;->mFeedItemId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFeedItemTagId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItemTag;->mFeedItemTagId:Ljava/lang/Long;

    return-object v0
.end method

.method public getTagId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItemTag;->mTagId:Ljava/lang/Long;

    return-object v0
.end method

.method public setFeedItemId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItemTag;->mFeedItemId:Ljava/lang/Long;

    return-void
.end method

.method public setFeedItemTagId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItemTag;->mFeedItemTagId:Ljava/lang/Long;

    return-void
.end method

.method public setTagId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItemTag;->mTagId:Ljava/lang/Long;

    return-void
.end method
