.class final Lcom/google/android/apps/analytics/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/apps/analytics/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/analytics/b;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput v1, p0, Lcom/google/android/apps/analytics/d;->a:I

    iput-object p3, p0, Lcom/google/android/apps/analytics/d;->b:Lcom/google/android/apps/analytics/b;

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "DROP TABLE IF EXISTS custom_variables;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS custom_var_cache;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "event_id"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_index"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cv_scope"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_value"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "custom_var_cache"

    const-string v3, "event_id"

    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS transaction_events;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS item_events;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS hits;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS referrer;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS referrer (referrer TEXT PRIMARY KEY NOT NULL,timestamp_referrer INTEGER NOT NULL,referrer_visit INTEGER NOT NULL DEFAULT 1,referrer_index INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "DROP TABLE IF EXISTS events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS install_referrer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE install_referrer (referrer TEXT PRIMARY KEY NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS session;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/apps/analytics/d;->a:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p1}, Lcom/google/android/apps/analytics/d;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    iget v0, p0, Lcom/google/android/apps/analytics/d;->a:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    invoke-static {p1}, Lcom/google/android/apps/analytics/d;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    iget v0, p0, Lcom/google/android/apps/analytics/d;->a:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    invoke-static {p1}, Lcom/google/android/apps/analytics/d;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/google/android/apps/analytics/d;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10

    const/4 v2, 0x0

    const-string v0, "GoogleAnalyticsTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downgrading database version from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not recommended."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CREATE TABLE IF NOT EXISTS referrer (referrer TEXT PRIMARY KEY NOT NULL,timestamp_referrer INTEGER NOT NULL,referrer_visit INTEGER NOT NULL DEFAULT 1,referrer_index INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const-string v1, "custom_var_cache"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cv_index"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "GoogleAnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on downgrade: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v0, 0x1

    move v1, v0

    :goto_2
    const/4 v0, 0x5

    if-gt v1, v0, :cond_2

    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "event_id"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_index"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cv_scope"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_value"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "custom_var_cache"

    const-string v3, "event_id"

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_1
    move-exception v0

    const-string v2, "GoogleAnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inserting custom variable on downgrade: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Warning: Need to update database, but it\'s read only."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v1, "referrer"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    move v2, v10

    move v0, v10

    move v1, v10

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_4

    aget-object v4, v3, v2

    const-string v5, "referrer_index"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v8

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    aget-object v4, v3, v2

    const-string v5, "referrer_visit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v8

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    if-nez v0, :cond_7

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "referrer_visit"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "referrer_index"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    new-instance v0, Lcom/google/android/apps/analytics/g;

    const-string v1, "referrer"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp_referrer"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    if-ne v4, v11, :cond_9

    move v4, v8

    :goto_3
    if-ne v5, v11, :cond_a

    move v5, v8

    :goto_4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/g;-><init>(Ljava/lang/String;JII)V

    :goto_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {p1}, Lcom/google/android/apps/analytics/d;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz v0, :cond_6

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "referrer"

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timestamp_referrer"

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/g;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "referrer_visit"

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/g;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "referrer_index"

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/g;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "referrer"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/apps/analytics/b;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto/16 :goto_0

    :cond_9
    :try_start_2
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    goto :goto_3

    :cond_a
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_6
    :try_start_3
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/apps/analytics/b;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v9

    :goto_7
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p1}, Lcom/google/android/apps/analytics/b;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_d
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_6

    :cond_e
    move-object v0, v9

    goto/16 :goto_5
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    invoke-virtual/range {p0 .. p3}, Lcom/google/android/apps/analytics/d;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x1

    move/from16 v0, p3

    if-le v0, v2, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/analytics/d;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ge v0, v2, :cond_3

    const/4 v2, 0x2

    move/from16 v0, p3

    if-le v0, v2, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/analytics/d;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x3

    move/from16 v0, p3

    if-le v0, v2, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/analytics/d;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/analytics/d;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v2, p0, Lcom/google/android/apps/analytics/d;->b:Lcom/google/android/apps/analytics/b;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/apps/analytics/b;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v2, p0, Lcom/google/android/apps/analytics/d;->b:Lcom/google/android/apps/analytics/b;

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/analytics/b;->a(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/u;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/analytics/b;->a(Lcom/google/android/apps/analytics/b;Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/u;

    invoke-static/range {p1 .. p2}, Lcom/google/android/apps/analytics/b;->a(Landroid/database/sqlite/SQLiteDatabase;I)[Lcom/google/android/apps/analytics/j;

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/apps/analytics/d;->b:Lcom/google/android/apps/analytics/b;

    aget-object v5, v3, v2

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Lcom/google/android/apps/analytics/b;->a(Lcom/google/android/apps/analytics/b;Lcom/google/android/apps/analytics/j;Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "DELETE from events;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DELETE from item_events;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DELETE from transaction_events;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DELETE from custom_variables;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v10, 0x0

    :try_start_0
    const-string v3, "install_referrer"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "referrer"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    const-wide/16 v12, 0x0

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v3, "session"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :goto_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "referrer"

    invoke-virtual {v2, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "timestamp_referrer"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "referrer_visit"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "referrer_index"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "referrer"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object v3, v10

    move-object v4, v11

    :goto_4
    :try_start_3
    const-string v5, "GoogleAnalyticsTracker"

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    move-object v3, v10

    :goto_5
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v11, v4

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v3, v10

    move-object v4, v11

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v4, v11

    goto :goto_4

    :cond_9
    move-wide v4, v12

    goto :goto_2

    :cond_a
    move-object v3, v10

    goto :goto_3
.end method
