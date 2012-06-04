.class public Lcom/appyet/mobile/data/FeedItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "FeedItem"
.end annotation


# static fields
.field public static final COLUMN_ARTICLE:Ljava/lang/String; = "Article"

.field public static final COLUMN_ARTICLE_STATUS:Ljava/lang/String; = "ArticleStatus"

.field public static final COLUMN_AUTHOR:Ljava/lang/String; = "Author"

.field public static final COLUMN_CACHE_GUID:Ljava/lang/String; = "CacheGuid"

.field public static final COLUMN_COMMENTS_LINK:Ljava/lang/String; = "CommentsLink"

.field public static final COLUMN_CREATED_DATE:Ljava/lang/String; = "CreatedDate"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "Description"

.field public static final COLUMN_ENCLOSURE_CURRENT_POSITION:Ljava/lang/String; = "EnclosureCurrentPosition"

.field public static final COLUMN_ENCLOSURE_DURATION:Ljava/lang/String; = "EnclosureDuration"

.field public static final COLUMN_ENCLOSURE_LENGTH:Ljava/lang/String; = "EnclosureLength"

.field public static final COLUMN_ENCLOSURE_LINK:Ljava/lang/String; = "EnclosureLink"

.field public static final COLUMN_ENCLOSURE_STATUS:Ljava/lang/String; = "EnclosureStatus"

.field public static final COLUMN_ENCLOSURE_TYPE:Ljava/lang/String; = "EnclosureType"

.field public static final COLUMN_FEEDITEM_ID:Ljava/lang/String; = "FeedItemId"

.field public static final COLUMN_FEED_ID:Ljava/lang/String; = "FeedId"

.field public static final COLUMN_IS_DELETED:Ljava/lang/String; = "IsDeleted"

.field public static final COLUMN_IS_QUEUED:Ljava/lang/String; = "IsQueued"

.field public static final COLUMN_IS_READ:Ljava/lang/String; = "IsRead"

.field public static final COLUMN_IS_STAR:Ljava/lang/String; = "IsStar"

.field public static final COLUMN_KEY:Ljava/lang/String; = "Key"

.field public static final COLUMN_LINK:Ljava/lang/String; = "Link"

.field public static final COLUMN_PUB_DATE:Ljava/lang/String; = "PubDate"

.field public static final COLUMN_QUEUE_ORDER:Ljava/lang/String; = "QueueOrder"

.field public static final COLUMN_READ_DATE:Ljava/lang/String; = "ReadDate"

.field public static final COLUMN_SNIPPET:Ljava/lang/String; = "Snippet"

.field public static final COLUMN_THUMBNAIL:Ljava/lang/String; = "Thumbnail"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "Title"

.field private static final serialVersionUID:J = -0x1a0128d6f1316c0dL


# instance fields
.field private mArticle:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Article"
        useGetSet = false
    .end annotation
.end field

.field private mArticleStatus:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "ArticleStatus"
        useGetSet = false
    .end annotation
.end field

.field private mAuthor:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Author"
        useGetSet = false
    .end annotation
.end field

.field private mCacheGuid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "CacheGuid"
        useGetSet = false
    .end annotation
.end field

.field private mCommentsLink:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "CommentsLink"
        useGetSet = false
    .end annotation
.end field

.field private mCreatedDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = true
        columnName = "CreatedDate"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
        useGetSet = false
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Description"
        useGetSet = false
    .end annotation
.end field

.field private mDisplayMode:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

.field private mEnclosureCurrentPosition:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "EnclosureCurrentPosition"
        useGetSet = false
    .end annotation
.end field

.field private mEnclosureDuration:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "EnclosureDuration"
        useGetSet = false
    .end annotation
.end field

.field private mEnclosureLength:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "EnclosureLength"
        useGetSet = false
    .end annotation
.end field

.field private mEnclosureLink:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "EnclosureLink"
        useGetSet = false
    .end annotation
.end field

.field private mEnclosureLinkMD5:Ljava/lang/String;

.field private mEnclosureStatus:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "EnclosureStatus"
        useGetSet = false
    .end annotation
.end field

.field private mEnclosureType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "EnclosureType"
        useGetSet = false
    .end annotation
.end field

.field private mFeed:Lcom/appyet/mobile/data/Feed;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "FeedId"
        foreign = true
        useGetSet = false
    .end annotation
.end field

.field private mFeedItemId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "FeedItemId"
        generatedId = true
        useGetSet = false
    .end annotation
.end field

.field private mFlag:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

.field private mIsDeleted:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "IsDeleted"
        useGetSet = false
    .end annotation
.end field

.field private mIsQueued:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "IsQueued"
        useGetSet = false
    .end annotation
.end field

.field private mIsRead:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "IsRead"
        useGetSet = false
    .end annotation
.end field

.field private mIsStar:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "IsStar"
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
        columnName = "Link"
        useGetSet = false
    .end annotation
.end field

.field private mPubDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        columnName = "PubDate"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
        useGetSet = false
    .end annotation
.end field

.field private mPubDateString:Ljava/lang/String;

.field private mQueueOrder:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "QueueOrder"
        useGetSet = false
    .end annotation
.end field

.field private mReadDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = true
        columnName = "ReadDate"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
        useGetSet = false
    .end annotation
.end field

.field private mSnippet:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Snippet"
        useGetSet = false
    .end annotation
.end field

.field private mThumbnail:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Thumbnail"
        useGetSet = false
    .end annotation
.end field

.field private mThumbnailMD5:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Title"
        useGetSet = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;->None:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    iput-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mDisplayMode:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    iput-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mArticleStatus:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    iput-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureStatus:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;->None:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    iput-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mDisplayMode:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mFeedItemId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mLink:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mDescription:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mPubDate:Ljava/util/Date;

    iput-boolean v1, p0, Lcom/appyet/mobile/data/FeedItem;->mIsRead:Z

    iput-boolean v1, p0, Lcom/appyet/mobile/data/FeedItem;->mIsDeleted:Z

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mCommentsLink:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureType:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLength:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLink:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mThumbnail:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mSnippet:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureDuration:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureCurrentPosition:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mAuthor:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mPubDateString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/appyet/mobile/data/FeedItem;->mIsQueued:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appyet/mobile/data/FeedItem;->mQueueOrder:J

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    iput-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mArticleStatus:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    iput-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureStatus:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mArticle:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mCacheGuid:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mCreatedDate:Ljava/util/Date;

    iput-object v2, p0, Lcom/appyet/mobile/data/FeedItem;->mReadDate:Ljava/util/Date;

    return-void
.end method

.method public copy()Lcom/appyet/mobile/data/FeedItem;
    .locals 3

    new-instance v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-direct {v0}, Lcom/appyet/mobile/data/FeedItem;-><init>()V

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mAuthor:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mAuthor:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mLink:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mPubDate:Ljava/util/Date;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mPubDate:Ljava/util/Date;

    iget-boolean v1, p0, Lcom/appyet/mobile/data/FeedItem;->mIsRead:Z

    iput-boolean v1, v0, Lcom/appyet/mobile/data/FeedItem;->mIsRead:Z

    iget-boolean v1, p0, Lcom/appyet/mobile/data/FeedItem;->mIsDeleted:Z

    iput-boolean v1, v0, Lcom/appyet/mobile/data/FeedItem;->mIsDeleted:Z

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mCommentsLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mCommentsLink:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureType:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureType:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLength:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLength:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLink:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mThumbnail:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mThumbnail:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mSnippet:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mSnippet:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureDuration:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureDuration:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureCurrentPosition:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureCurrentPosition:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mPubDateString:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mPubDateString:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/appyet/mobile/data/FeedItem;->mIsQueued:Z

    iput-boolean v1, v0, Lcom/appyet/mobile/data/FeedItem;->mIsQueued:Z

    iget-wide v1, p0, Lcom/appyet/mobile/data/FeedItem;->mQueueOrder:J

    iput-wide v1, v0, Lcom/appyet/mobile/data/FeedItem;->mQueueOrder:J

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mArticleStatus:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mArticleStatus:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureStatus:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureStatus:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mArticle:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mArticle:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mCacheGuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mCacheGuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mCreatedDate:Ljava/util/Date;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mCreatedDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mReadDate:Ljava/util/Date;

    iput-object v1, v0, Lcom/appyet/mobile/data/FeedItem;->mReadDate:Ljava/util/Date;

    return-object v0
.end method

.method public getArticle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mArticle:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleSpanned(Lcom/appyet/mobile/context/ApplicationContext;Landroid/text/Html$ImageGetter;)Landroid/text/Spanned;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mArticle:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mArticle:Ljava/lang/String;

    const-string v1, "<img"

    const-string v2, "<span"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mArticle:Ljava/lang/String;

    iget-object v2, p1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/appyet/mobile/data/FeedItem;->transformImage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mArticle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/data/FeedItem;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mArticleStatus:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-nez v0, :cond_0

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mArticleStatus:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    goto :goto_0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mCacheGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mCommentsLink:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mCreatedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionSpanned(Lcom/appyet/mobile/context/ApplicationContext;Landroid/text/Html$ImageGetter;)Landroid/text/Spanned;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mDescription:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mDescription:Ljava/lang/String;

    const-string v1, "<img"

    const-string v2, "<span"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mDescription:Ljava/lang/String;

    iget-object v2, p1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/appyet/mobile/data/FeedItem;->transformImage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mDescription:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/data/FeedItem;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayMode()Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mDisplayMode:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    if-nez v0, :cond_0

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;->None:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mDisplayMode:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    goto :goto_0
.end method

.method public getEnclosureCurrentPosition()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureCurrentPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureCurrentPosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureCurrentPosition:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getEnclosureDuration()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureDuration:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureDuration:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getEnclosureLength()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLength:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLength:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLength:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getEnclosureLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLink:Ljava/lang/String;

    return-object v0
.end method

.method public getEnclosureLinkMD5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLinkMD5:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/appyet/mobile/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLinkMD5:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLinkMD5:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureStatus:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-nez v0, :cond_0

    sget-object v0, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureStatus:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    goto :goto_0
.end method

.method public getEnclosureType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureType:Ljava/lang/String;

    return-object v0
.end method

.method public getFeed()Lcom/appyet/mobile/data/Feed;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mFeed:Lcom/appyet/mobile/data/Feed;

    return-object v0
.end method

.method public getFeedItemId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mFeedItemId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFlag()Lcom/appyet/mobile/data/FeedItem$FlagEnum;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mFlag:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    return-object v0
.end method

.method public getIsDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/data/FeedItem;->mIsDeleted:Z

    return v0
.end method

.method public getIsQueued()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/data/FeedItem;->mIsQueued:Z

    return v0
.end method

.method public getIsRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/data/FeedItem;->mIsRead:Z

    return v0
.end method

.method public getIsStar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/data/FeedItem;->mIsStar:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPubDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mPubDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPubDateString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mPubDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueOrder()J
    .locals 2

    iget-wide v0, p0, Lcom/appyet/mobile/data/FeedItem;->mQueueOrder:J

    return-wide v0
.end method

.method public getReadDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mReadDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailMD5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mThumbnailMD5:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/appyet/mobile/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mThumbnailMD5:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mThumbnailMD5:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mKey:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mLink:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/data/FeedItem;->mLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mLink:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mLink:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mLink:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public setArticle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mArticle:Ljava/lang/String;

    return-void
.end method

.method public setArticleStatus(Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mArticleStatus:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mAuthor:Ljava/lang/String;

    return-void
.end method

.method public setCacheGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mCacheGuid:Ljava/lang/String;

    return-void
.end method

.method public setCommentsLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mCommentsLink:Ljava/lang/String;

    return-void
.end method

.method public setCreatedDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mCreatedDate:Ljava/util/Date;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setDisplayMode(Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mDisplayMode:Lcom/appyet/mobile/data/FeedItem$DisplayModeEnum;

    return-void
.end method

.method public setEnclosureCurrentPosition(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureCurrentPosition:Ljava/lang/Integer;

    return-void
.end method

.method public setEnclosureDuration(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureDuration:Ljava/lang/Integer;

    return-void
.end method

.method public setEnclosureLength(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLength:Ljava/lang/Integer;

    return-void
.end method

.method public setEnclosureLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureLink:Ljava/lang/String;

    return-void
.end method

.method public setEnclosureStatus(Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureStatus:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    return-void
.end method

.method public setEnclosureType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mEnclosureType:Ljava/lang/String;

    return-void
.end method

.method public setFeed(Lcom/appyet/mobile/data/Feed;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mFeed:Lcom/appyet/mobile/data/Feed;

    return-void
.end method

.method public setFeedItemId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mFeedItemId:Ljava/lang/Long;

    return-void
.end method

.method public setFlag(Lcom/appyet/mobile/data/FeedItem$FlagEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mFlag:Lcom/appyet/mobile/data/FeedItem$FlagEnum;

    return-void
.end method

.method public setIsDeleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/data/FeedItem;->mIsDeleted:Z

    return-void
.end method

.method public setIsQueued(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/data/FeedItem;->mIsQueued:Z

    return-void
.end method

.method public setIsRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/data/FeedItem;->mIsRead:Z

    return-void
.end method

.method public setIsStar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/data/FeedItem;->mIsStar:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mLink:Ljava/lang/String;

    return-void
.end method

.method public setPubDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mPubDate:Ljava/util/Date;

    return-void
.end method

.method public setPubDateString(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mPubDateString:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mPubDateString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mPubDateString:Ljava/lang/String;

    invoke-static {v0}, Lcom/appyet/mobile/b/r;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mPubDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/data/FeedItem;->mPubDate:Ljava/util/Date;

    goto :goto_0
.end method

.method public setQueueOrder(J)V
    .locals 0

    iput-wide p1, p0, Lcom/appyet/mobile/data/FeedItem;->mQueueOrder:J

    return-void
.end method

.method public setReadDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mReadDate:Ljava/util/Date;

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mSnippet:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mThumbnail:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/FeedItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<img[^>]+src\\s*=\\s*[\'\"]([^\'\"]+)[\'\"][^>]*>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :goto_1
    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_1
.end method

.method public transformImage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<img[^>]+src\\s*=\\s*[\'\"]([^\'\"]+)[\'\"][^>]*>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<a href=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/appyet/mobile/data/FeedItem;->mFeedItemId:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "///"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a><br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :goto_1
    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_1
.end method
