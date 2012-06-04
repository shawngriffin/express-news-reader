.class public Lcom/j256/ormlite/android/AndroidConnectionSource;
.super Lcom/j256/ormlite/support/BaseConnectionSource;

# interfaces
.implements Lcom/j256/ormlite/support/ConnectionSource;


# static fields
.field private static final logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private connection:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

.field private final databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field private final helper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private volatile isOpen:Z

.field private final sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/j256/ormlite/android/AndroidConnectionSource;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/AndroidConnectionSource;->logger:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/j256/ormlite/support/BaseConnectionSource;-><init>()V

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->isOpen:Z

    new-instance v0, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;

    invoke-direct {v0}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/j256/ormlite/support/BaseConnectionSource;-><init>()V

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->isOpen:Z

    new-instance v0, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;

    invoke-direct {v0}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 1

    sget-object v0, Lcom/j256/ormlite/android/AndroidConnectionSource;->logger:Lcom/j256/ormlite/logger/Logger;

    invoke-virtual {p0, p1, v0}, Lcom/j256/ormlite/android/AndroidConnectionSource;->clearSpecial(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/logger/Logger;)Z

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->isOpen:Z

    return-void
.end method

.method public getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    return-object v0
.end method

.method public getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 1

    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    return-object v0
.end method

.method public getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidConnectionSource;->getSavedConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    invoke-direct {v1, v0, v2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;-><init>(Landroid/database/sqlite/SQLiteDatabase;Z)V

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Getting a writable database from SQLiteOpenHelper failed"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_2
    new-instance v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;-><init>(Landroid/database/sqlite/SQLiteDatabase;Z)V

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    goto :goto_1
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->isOpen:Z

    return v0
.end method

.method public releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 0

    return-void
.end method

.method public saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/j256/ormlite/android/AndroidConnectionSource;->saveSpecial(Lcom/j256/ormlite/support/DatabaseConnection;)Z

    move-result v0

    return v0
.end method
