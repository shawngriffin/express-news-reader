.class public Lcom/appyet/mobile/data/FeedTag;
.super Ljava/lang/Object;


# static fields
.field public static final COLUMN_FEEDTAG_ID:Ljava/lang/String; = "FeedTagId"

.field public static final COLUMN_FEED_ID:Ljava/lang/String; = "FeedId"

.field public static final COLUMN_TAG_ID:Ljava/lang/String; = "TagId"


# instance fields
.field private mFeedId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "FeedId"
        useGetSet = false
    .end annotation
.end field

.field private mFeedTagId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "FeedTagId"
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
.method public getFeedId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedTag;->mFeedId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFeedTagId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedTag;->mFeedTagId:Ljava/lang/Long;

    return-object v0
.end method

.method public getTagId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedTag;->mTagId:Ljava/lang/Long;

    return-object v0
.end method

.method public setFeedId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedTag;->mFeedId:Ljava/lang/Long;

    return-void
.end method

.method public setFeedTagId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedTag;->mFeedTagId:Ljava/lang/Long;

    return-void
.end method

.method public setTagId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedTag;->mTagId:Ljava/lang/Long;

    return-void
.end method
