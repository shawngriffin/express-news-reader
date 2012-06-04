.class public Lcom/appyet/mobile/data/DatabaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "data.db"

.field private static final DATABASE_VERSION:I = 0x20

.field private static final OPTIMIZATION_SQL:Ljava/lang/String; = "PRAGMA count_changes=OFF; VACUUM;"


# instance fields
.field private mCategoryDao:Lcom/j256/ormlite/dao/Dao;

.field private mContext:Landroid/content/Context;

.field private mFeedDao:Lcom/j256/ormlite/dao/Dao;

.field private mFeedItemDao:Lcom/j256/ormlite/dao/Dao;

.field private mFileCacheDao:Lcom/j256/ormlite/dao/Dao;

.field private mWidgetDao:Lcom/j256/ormlite/dao/Dao;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "data.db"

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private upgradeDB(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3

    const/16 v0, 0x16

    if-ge p2, v0, :cond_0

    const-string v0, "UPDATE Feed SET PubDate = strftime(\'now\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE FeedItem SET PubDate = strftime(\'now\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'WebLink\' VARCHAR;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'StreamHash\' VARCHAR;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'SyncDate\' BIGINT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'IsHidden\' SMALLINT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'ImageLink\' VARCHAR;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'IsDownloadNewArticle\' SMALLINT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'IsDownloadNewEnclosure\' SMALLINT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'HttpAuthUserName\' VARCHAR;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'HttpAuthPassword\' VARCHAR;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE FeedItem ADD COLUMN \'IsQueued\' SMALLINT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE FeedItem ADD COLUMN \'QueueOrder\' INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE FeedItem ADD COLUMN \'ArticleStatus\' SMALLINT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE FeedItem ADD COLUMN \'EnclosureStatus\' SMALLINT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE FeedItem ADD COLUMN \'Article\' VARCHAR;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM FileCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM FeedItem;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE Tag (\'TagId\' INTEGER PRIMARY KEY AUTOINCREMENT , \'Name\' VARCHAR NOT NULL , \'TotalCount\' INTEGER DEFAULT 0 , \'UnreadCount\' INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE FeedItemTag (\'TagId\' INTEGER, \'FeedItemId\' INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'CacheGuid\' VARCHAR;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE FeedItem ADD COLUMN \'CacheGuid\' VARCHAR;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE FileCache ADD COLUMN \'CacheGuid\' VARCHAR;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x17

    if-ge p2, v0, :cond_1

    const-string v0, "DROP TABLE FeedItemTag"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE FeedItemTag (\'FeedItemTagId\' INTEGER PRIMARY KEY AUTOINCREMENT, \'TagId\' INTEGER, \'FeedItemId\' INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE FeedTag (\'FeedTagId\' INTEGER PRIMARY KEY AUTOINCREMENT, \'TagId\' INTEGER, \'FeedId\' INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'Key\' VARCHAR;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x18

    if-ge p2, v0, :cond_2

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'HTTPLastModified\' VARCHAR;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'HTTPETag\' VARCHAR;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x19

    if-ge p2, v0, :cond_3

    const-string v0, "CREATE INDEX IDX_FeedItem_FeedId ON FeedItem(\'FeedId\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS \'Category\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS \'FeedItemTag\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS \'FeedTag\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE \'Category\' (\'CategoryId\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'Name\' VARCHAR, \'Order\' INTEGER, \'IsExpand\' SMALLINT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "ALTER TABLE \'Feed\' ADD COLUMN \'CategoryId\' INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "ALTER TABLE \'FeedItem\' ADD COLUMN \'CreatedDate\' INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE \'FeedItem\' SET \'CreatedDate\' = \'PubDate\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE \'FeedItem\' ADD COLUMN \'ReadDate\' INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE \'FeedItem\' SET \'ReadDate\' = strftime(\'now\') WHERE IsRead = 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    const/16 v0, 0x1a

    if-ge p2, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO Category ( CategoryId , Name, [Order], IsExpand) VALUES (0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0160

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 32767, 1) ;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO Category ( CategoryId , Name, [Order], IsExpand) VALUES (-1, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0b015f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", -1, 1) ;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE \'Feed\' SET \'CategoryId\' = 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x1b

    if-ge p2, v0, :cond_5

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'IsSkipAutoUpdate\' SMALLINT DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    const/16 v0, 0x1c

    if-ge p2, v0, :cond_6

    const-string v0, "CREATE TABLE Widget (\'WidgetId\' INTEGER, \'FeedId\' INTEGER, \'Position\' INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'Order\' INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    const/16 v0, 0x1d

    if-ge p2, v0, :cond_7

    const-string v0, "ALTER TABLE Category ADD COLUMN \'Color\' INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    const/16 v0, 0x1e

    if-ge p2, v0, :cond_8

    const-string v0, "ALTER TABLE Widget RENAME TO Widget_TMP;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE Widget (\'WidgetId\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'FeedId\' INTEGER, \'Position\' INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO Widget (WidgetId, FeedId, Position) SELECT WidgetId, FeedId, Position FROM Widget_TMP;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE Widget_TMP;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_8
    const/16 v0, 0x1f

    if-ge p2, v0, :cond_9

    const-string v0, "UPDATE Feed SET StreamHash = \'\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_9
    const/16 v0, 0x20

    if-ge p2, v0, :cond_a

    const-string v0, "CREATE TEMPORARY TABLE FileCache_TMP(DownloadAttempt INTEGER DEFAULT 0 NOT NULL , DownloadStatus VARCHAR NOT NULL , FileCacheId INTEGER PRIMARY KEY AUTOINCREMENT , FileCacheName VARCHAR NOT NULL , FileLink VARCHAR NOT NULL , FileType VARCHAR NOT NULL, CacheGuid VARCHAR); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO FileCache_TMP (DownloadAttempt, DownloadStatus, FileCacheId, FileCacheName, FileLink, FileType, CacheGuid) SELECT DownloadAttempt, DownloadStatus, FileCacheId, FileCacheName, FileLink, FileType, CacheGuid FROM FileCache; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE FileCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE FileCache(DownloadAttempt INTEGER DEFAULT 0 NOT NULL , DownloadStatus VARCHAR NOT NULL , FileCacheId INTEGER PRIMARY KEY AUTOINCREMENT , FileCacheName VARCHAR NOT NULL , FileLink VARCHAR NOT NULL , FileType VARCHAR NOT NULL, CacheGuid VARCHAR); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO FileCache (DownloadAttempt, DownloadStatus, FileCacheId, FileCacheName, FileLink, FileType, CacheGuid) SELECT DownloadAttempt, DownloadStatus, FileCacheId, FileCacheName, FileLink, FileType, CacheGuid FROM FileCache_TMP; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE FileCache_TMP;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_a
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCategoryDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mCategoryDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mCategoryDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mCategoryDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getFeedDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mFeedDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mFeedDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mFeedDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getFeedItemDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mFeedItemDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mFeedItemDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mFeedItemDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getFileCacheDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mFileCacheDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/appyet/mobile/data/FileCache;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mFileCacheDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mFileCacheDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getWidgetDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mWidgetDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/appyet/mobile/data/Widget;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mWidgetDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/data/DatabaseHelper;->mWidgetDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 1

    const-string v0, "CREATE TABLE \'Feed\' (\'Encoding\' VARCHAR , \'FavIcon\' VARCHAR , \'FeedId\' INTEGER PRIMARY KEY AUTOINCREMENT , \'FeedType\' VARCHAR , \'Link\' VARCHAR NOT NULL , \'PubDate\' BIGINT , \'Title\' VARCHAR , \'TotalCount\' INTEGER DEFAULT 0 , \'UnreadCount\' INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE \'FeedItem\' (\'Author\' VARCHAR , \'CommentsLink\' VARCHAR , \'Description\' VARCHAR , \'EnclosureCurrentPosition\' INTEGER , \'EnclosureDuration\' INTEGER , \'EnclosureLength\' INTEGER , \'EnclosureLink\' VARCHAR , \'EnclosureType\' VARCHAR , \'FeedId\' INTEGER , \'FeedItemId\' INTEGER PRIMARY KEY AUTOINCREMENT , \'Title\' VARCHAR , \'Thumbnail\' VARCHAR , \'Snippet\' VARCHAR , \'PubDate\' BIGINT NOT NULL , \'Key\' VARCHAR , \'Link\' VARCHAR , \'IsStar\' SMALLINT , \'IsRead\' SMALLINT , \'IsDeleted\' SMALLINT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE \'FileCache\' (\'DownloadAttempt\' INTEGER DEFAULT 0 NOT NULL , \'DownloadStatus\' VARCHAR NOT NULL , \'FeedItemId\' INTEGER , \'FileCacheId\' INTEGER PRIMARY KEY AUTOINCREMENT , \'FileCacheName\' VARCHAR NOT NULL , \'FileLink\' VARCHAR NOT NULL , \'FileType\' VARCHAR NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appyet/mobile/data/DatabaseHelper;->upgradeDB(Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    invoke-super {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "PRAGMA count_changes=OFF; VACUUM;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/appyet/mobile/data/DatabaseHelper;->upgradeDB(Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method
