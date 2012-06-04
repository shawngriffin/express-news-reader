.class public Lcom/appyet/mobile/data/Feed;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "Feed"
.end annotation


# static fields
.field public static final COLUMN_CACHE_GUID:Ljava/lang/String; = "CacheGuid"

.field public static final COLUMN_CATEGORY_ID:Ljava/lang/String; = "CategoryId"

.field public static final COLUMN_ENCODING:Ljava/lang/String; = "Encoding"

.field public static final COLUMN_FAV_ICON:Ljava/lang/String; = "FavIcon"

.field public static final COLUMN_FEED_ID:Ljava/lang/String; = "FeedId"

.field public static final COLUMN_FEED_TYPE:Ljava/lang/String; = "FeedType"

.field public static final COLUMN_HTTPETag:Ljava/lang/String; = "HTTPETag"

.field public static final COLUMN_HTTPLastModified:Ljava/lang/String; = "HTTPLastModified"

.field public static final COLUMN_HTTP_AUTH_PASSWORD:Ljava/lang/String; = "HttpAuthPassword"

.field public static final COLUMN_HTTP_AUTH_USER_NAME:Ljava/lang/String; = "HttpAuthUserName"

.field public static final COLUMN_IMAGE_LINK:Ljava/lang/String; = "ImageLink"

.field public static final COLUMN_IS_DOWNLOAD_NEW_ARTICLE:Ljava/lang/String; = "IsDownloadNewArticle"

.field public static final COLUMN_IS_DOWNLOAD_NEW_ENCLOSURE:Ljava/lang/String; = "IsDownloadNewEnclosure"

.field public static final COLUMN_IS_HIDDEN:Ljava/lang/String; = "IsHidden"

.field public static final COLUMN_IS_SKIP_AUTO_UPDATE:Ljava/lang/String; = "IsSkipAutoUpdate"

.field public static final COLUMN_KEY:Ljava/lang/String; = "Key"

.field public static final COLUMN_LINK:Ljava/lang/String; = "Link"

.field public static final COLUMN_ORDER:Ljava/lang/String; = "Order"

.field public static final COLUMN_PUB_DATE:Ljava/lang/String; = "PubDate"

.field public static final COLUMN_STREAM_HASH:Ljava/lang/String; = "StreamHash"

.field public static final COLUMN_SYNC_DATE:Ljava/lang/String; = "SyncDate"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "Title"

.field public static final COLUMN_TOTAL_COUNT:Ljava/lang/String; = "TotalCount"

.field public static final COLUMN_UNREAD_COUNT:Ljava/lang/String; = "UnreadCount"

.field public static final COLUMN_WEB_LINK:Ljava/lang/String; = "WebLink"

.field private static final serialVersionUID:J = -0x5b5a2da297eb5374L


# instance fields
.field private mCacheGuid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "CacheGuid"
        useGetSet = false
    .end annotation
.end field

.field private mCategoryId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "CategoryId"
        useGetSet = false
    .end annotation
.end field

.field private mEncoding:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Encoding"
        useGetSet = false
    .end annotation
.end field

.field private mFavIcon:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "FavIcon"
        useGetSet = false
    .end annotation
.end field

.field private mFavIconUrlMD5:Ljava/lang/String;

.field private mFeedId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "FeedId"
        generatedId = true
        useGetSet = false
    .end annotation
.end field

.field private mFeedItems:Ljava/util/List;

.field private mFeedType:Lcom/appyet/mobile/data/Feed$FeedTypeEnum;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "FeedType"
        useGetSet = false
    .end annotation
.end field

.field private mHTTPETag:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "HTTPETag"
        useGetSet = false
    .end annotation
.end field

.field private mHTTPLastModified:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "HTTPLastModified"
        useGetSet = false
    .end annotation
.end field

.field private mHttpAuthPassword:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "HttpAuthPassword"
        useGetSet = false
    .end annotation
.end field

.field private mHttpAuthUserName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "HttpAuthUserName"
        useGetSet = false
    .end annotation
.end field

.field private mImageLink:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "ImageLink"
        useGetSet = false
    .end annotation
.end field

.field private mImageLinkMD5:Ljava/lang/String;

.field private mIsDownloadNewArticle:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "IsDownloadNewArticle"
        useGetSet = false
    .end annotation
.end field

.field private mIsDownloadNewEnclosure:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "IsDownloadNewEnclosure"
        useGetSet = false
    .end annotation
.end field

.field private mIsHidden:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "IsHidden"
        useGetSet = false
    .end annotation
.end field

.field private mIsSelected:Z

.field private mIsSkipAutoUpdate:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "IsSkipAutoUpdate"
        useGetSet = false
    .end annotation
.end field

.field private mKey:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Key"
        useGetSet = false
    .end annotation
.end field

.field private mLink:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        columnName = "Link"
        uniqueIndex = true
        uniqueIndexName = "IDX_Feed_Link"
        useGetSet = false
    .end annotation
.end field

.field private mOrder:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Order"
        useGetSet = false
    .end annotation
.end field

.field private mPubDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "PubDate"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
        useGetSet = false
    .end annotation
.end field

.field private mPubDateString:Ljava/lang/String;

.field private mStreamHash:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "StreamHash"
        useGetSet = false
    .end annotation
.end field

.field private mSyncDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "SyncDate"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
        useGetSet = false
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Title"
        useGetSet = false
    .end annotation
.end field

.field private mTotalCount:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "TotalCount"
        defaultValue = "0"
        useGetSet = false
    .end annotation
.end field

.field private mUnreadCount:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "UnreadCount"
        defaultValue = "0"
        useGetSet = false
    .end annotation
.end field

.field private mWebLink:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "WebLink"
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
.method public applyChange(Lcom/appyet/mobile/data/Feed;)V
    .locals 2

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getUnreadCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/data/Feed;->setUnreadCount(J)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getTotalCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/data/Feed;->setTotalCount(J)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setFeedId(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedType()Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setFeedType(Lcom/appyet/mobile/data/Feed$FeedTypeEnum;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getPubDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setPubDate(Ljava/util/Date;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFavIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setFavIcon(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setOrder(I)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setWebLink(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getImageLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setImageLink(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getCategoryId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/data/Feed;->setCategoryId(J)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getIsHidden()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setIsHidden(Z)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getIsSkipAutoUpdate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setIsSkipAutoUpdate(Z)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHttpAuthUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setHttpAuthUserName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHttpAuthPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setHttpAuthPassword(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getIsDownloadNewArticle()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setIsDownloadNewArticle(Z)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getIsDownloadNewEnclosure()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setIsDownloadNewEnclosure(Z)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getCacheGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setCacheGuid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHTTPETag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setHTTPETag(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHTTPLastModified()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setHTTPLastModified(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getSyncDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setSyncDate(Ljava/util/Date;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Feed;->setStreamHash(Ljava/lang/String;)V

    return-void
.end method

.method public getCacheGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mCacheGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()J
    .locals 2

    iget-wide v0, p0, Lcom/appyet/mobile/data/Feed;->mCategoryId:J

    return-wide v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFavIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mFavIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getFavIconUrl()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/data/Feed;->getFavIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/data/Feed;->getFavIcon()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/mobile/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appyet/mobile/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appyet/mobile/manager/bv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/favicon.ico"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFavIconUrlMD5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mFavIconUrlMD5:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/data/Feed;->getFavIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/appyet/mobile/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/data/Feed;->mFavIconUrlMD5:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mFavIconUrlMD5:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFeedId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mFeedId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFeedItems()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mFeedItems:Ljava/util/List;

    return-object v0
.end method

.method public getFeedType()Lcom/appyet/mobile/data/Feed$FeedTypeEnum;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mFeedType:Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    return-object v0
.end method

.method public getHTTPETag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mHTTPETag:Ljava/lang/String;

    return-object v0
.end method

.method public getHTTPLastModified()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mHTTPLastModified:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpAuthPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mHttpAuthPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpAuthUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mHttpAuthUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mImageLink:Ljava/lang/String;

    return-object v0
.end method

.method public getImageLinkMD5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mImageLinkMD5:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/data/Feed;->getImageLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/appyet/mobile/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/data/Feed;->mImageLinkMD5:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mImageLinkMD5:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsDownloadNewArticle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/data/Feed;->mIsDownloadNewArticle:Z

    return v0
.end method

.method public getIsDownloadNewEnclosure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/data/Feed;->mIsDownloadNewEnclosure:Z

    return v0
.end method

.method public getIsHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/data/Feed;->mIsHidden:Z

    return v0
.end method

.method public getIsSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/data/Feed;->mIsSelected:Z

    return v0
.end method

.method public getIsSkipAutoUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/data/Feed;->mIsSkipAutoUpdate:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/data/Feed;->mOrder:I

    return v0
.end method

.method public getPubDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mPubDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPubDateString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mPubDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mStreamHash:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mSyncDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()J
    .locals 2

    iget-wide v0, p0, Lcom/appyet/mobile/data/Feed;->mTotalCount:J

    return-wide v0
.end method

.method public getUnreadCount()J
    .locals 2

    iget-wide v0, p0, Lcom/appyet/mobile/data/Feed;->mUnreadCount:J

    return-wide v0
.end method

.method public getWebLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mWebLink:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mCacheGuid:Ljava/lang/String;

    return-void
.end method

.method public setCategoryId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/appyet/mobile/data/Feed;->mCategoryId:J

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mEncoding:Ljava/lang/String;

    return-void
.end method

.method public setFavIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mFavIcon:Ljava/lang/String;

    return-void
.end method

.method public setFeedId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mFeedId:Ljava/lang/Long;

    return-void
.end method

.method public setFeedItems(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mFeedItems:Ljava/util/List;

    return-void
.end method

.method public setFeedType(Lcom/appyet/mobile/data/Feed$FeedTypeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mFeedType:Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    return-void
.end method

.method public setHTTPETag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mHTTPETag:Ljava/lang/String;

    return-void
.end method

.method public setHTTPLastModified(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mHTTPLastModified:Ljava/lang/String;

    return-void
.end method

.method public setHttpAuthPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mHttpAuthPassword:Ljava/lang/String;

    return-void
.end method

.method public setHttpAuthUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mHttpAuthUserName:Ljava/lang/String;

    return-void
.end method

.method public setImageLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mImageLink:Ljava/lang/String;

    return-void
.end method

.method public setIsDownloadNewArticle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/data/Feed;->mIsDownloadNewArticle:Z

    return-void
.end method

.method public setIsDownloadNewEnclosure(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/data/Feed;->mIsDownloadNewEnclosure:Z

    return-void
.end method

.method public setIsHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/data/Feed;->mIsHidden:Z

    return-void
.end method

.method public setIsSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/data/Feed;->mIsSelected:Z

    return-void
.end method

.method public setIsSkipAutoUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/data/Feed;->mIsSkipAutoUpdate:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mLink:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    iput p1, p0, Lcom/appyet/mobile/data/Feed;->mOrder:I

    return-void
.end method

.method public setPubDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mPubDate:Ljava/util/Date;

    return-void
.end method

.method public setPubDateString(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mPubDateString:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mPubDateString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/data/Feed;->mPubDateString:Ljava/lang/String;

    invoke-static {v0}, Lcom/appyet/mobile/b/r;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/data/Feed;->mPubDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/data/Feed;->mPubDate:Ljava/util/Date;

    goto :goto_0
.end method

.method public setStreamHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mStreamHash:Ljava/lang/String;

    return-void
.end method

.method public setSyncDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mSyncDate:Ljava/util/Date;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTotalCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/appyet/mobile/data/Feed;->mTotalCount:J

    return-void
.end method

.method public setUnreadCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/appyet/mobile/data/Feed;->mUnreadCount:J

    return-void
.end method

.method public setWebLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Feed;->mWebLink:Ljava/lang/String;

    return-void
.end method
