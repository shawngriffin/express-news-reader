.class final Lcom/google/android/apps/analytics/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/analytics/aa;


# static fields
.field private static final n:Ljava/lang/String;

.field private static final o:Ljava/lang/String;

.field private static final p:Ljava/lang/String;

.field private static final q:Ljava/lang/String;

.field private static final r:Ljava/lang/String;

.field private static final s:Ljava/lang/String;

.field private static final t:Ljava/lang/String;


# instance fields
.field private a:Lcom/google/android/apps/analytics/d;

.field private b:I

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private volatile g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Ljava/util/Random;

.field private m:Lcom/google/android/apps/analytics/u;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE events ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "event_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "user_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(256) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "account_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "random_val"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_first"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_previous"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_current"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "visits"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(256) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "category"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(256) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "action"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(256), "

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "label"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "value"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "screen_width"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "screen_height"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/b;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS session ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_first"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_previous"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_current"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "visits"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "store_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/b;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE custom_variables ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "event_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_index"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(64) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_name"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(64) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_value"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_scope"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/b;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS custom_var_cache ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "event_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_index"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(64) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_name"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(64) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_value"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_scope"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/b;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE transaction_events ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tran_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "event_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "order_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tran_storename"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tran_totalcost"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tran_totaltax"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tran_shippingcost"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/b;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE item_events ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "item_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "event_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "order_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "item_sku"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "item_name"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "item_category"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "item_price"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "item_count"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/b;->s:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS hits ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "hit_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "hit_string"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "hit_time"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/b;->t:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "google_analytics.db"

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/analytics/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/apps/analytics/b;->k:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/b;->l:Ljava/util/Random;

    new-instance v0, Lcom/google/android/apps/analytics/d;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/apps/analytics/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/analytics/b;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/b;->a:Lcom/google/android/apps/analytics/d;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/b;->a:Lcom/google/android/apps/analytics/d;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/analytics/b;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/google/android/apps/analytics/b;->l()Lcom/google/android/apps/analytics/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/b;->m:Lcom/google/android/apps/analytics/u;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/u;
    .locals 10

    const/4 v8, 0x0

    new-instance v9, Lcom/google/android/apps/analytics/u;

    invoke-direct {v9}, Lcom/google/android/apps/analytics/u;-><init>()V

    :try_start_0
    const-string v1, "custom_var_cache"

    const/4 v2, 0x0

    const-string v3, "cv_scope= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/apps/analytics/t;

    const-string v2, "cv_index"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "cv_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cv_value"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cv_scope"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/apps/analytics/t;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Lcom/google/android/apps/analytics/u;->a(Lcom/google/android/apps/analytics/t;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return-object v9

    :cond_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/b;Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/u;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/b;->m:Lcom/google/android/apps/analytics/u;

    return-object p1
.end method

.method private static a(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/z;
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    const-string v1, "transaction_events"

    const/4 v2, 0x0

    const-string v3, "event_id= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/apps/analytics/ac;

    const-string v2, "order_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tran_totalcost"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/analytics/ac;-><init>(Ljava/lang/String;D)V

    const-string v2, "tran_storename"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/analytics/ac;->a(Ljava/lang/String;)Lcom/google/android/apps/analytics/ac;

    move-result-object v0

    const-string v2, "tran_totaltax"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/analytics/ac;->a(D)Lcom/google/android/apps/analytics/ac;

    move-result-object v0

    const-string v2, "tran_shippingcost"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/analytics/ac;->b(D)Lcom/google/android/apps/analytics/ac;

    move-result-object v2

    new-instance v0, Lcom/google/android/apps/analytics/z;

    invoke-direct {v0, v2}, Lcom/google/android/apps/analytics/z;-><init>(Lcom/google/android/apps/analytics/ac;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_2
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/b;Lcom/google/android/apps/analytics/j;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/analytics/b;->a(Lcom/google/android/apps/analytics/j;Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private a(Lcom/google/android/apps/analytics/j;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 12

    const/4 v11, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/j;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/b;->l:Ljava/util/Random;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/j;->a(I)V

    iget-wide v0, p0, Lcom/google/android/apps/analytics/b;->c:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/j;->c(I)V

    iget-wide v0, p0, Lcom/google/android/apps/analytics/b;->d:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/j;->d(I)V

    iget-wide v0, p0, Lcom/google/android/apps/analytics/b;->e:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/j;->e(I)V

    iget v0, p0, Lcom/google/android/apps/analytics/b;->f:I

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/j;->f(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/analytics/b;->j:Z

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/j;->a(Z)V

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/j;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/apps/analytics/b;->b:I

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/j;->g(I)V

    :cond_1
    const-string v0, "__##GOOGLEITEM##__"

    iget-object v1, p1, Lcom/google/android/apps/analytics/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "__##GOOGLETRANSACTION##__"

    iget-object v1, p1, Lcom/google/android/apps/analytics/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/google/android/apps/analytics/b;->e(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/g;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/g;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    :goto_1
    iget-object v1, p1, Lcom/google/android/apps/analytics/j;->a:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    if-ne v1, v7, :cond_c

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/apps/analytics/b;->a(Lcom/google/android/apps/analytics/j;Lcom/google/android/apps/analytics/g;Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_3
    return-void

    :cond_4
    :try_start_0
    iget-object v0, p1, Lcom/google/android/apps/analytics/j;->h:Lcom/google/android/apps/analytics/u;

    iget-boolean v1, p0, Lcom/google/android/apps/analytics/b;->i:Z

    if-eqz v1, :cond_d

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/apps/analytics/u;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/u;-><init>()V

    iput-object v0, p1, Lcom/google/android/apps/analytics/j;->h:Lcom/google/android/apps/analytics/u;

    :cond_5
    move v1, v7

    :goto_2
    if-gt v1, v11, :cond_7

    iget-object v2, p0, Lcom/google/android/apps/analytics/b;->m:Lcom/google/android/apps/analytics/u;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/analytics/u;->b(I)Lcom/google/android/apps/analytics/t;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/u;->b(I)Lcom/google/android/apps/analytics/t;

    move-result-object v3

    if-eqz v2, :cond_6

    if-nez v3, :cond_6

    invoke-virtual {v0, v2}, Lcom/google/android/apps/analytics/u;->a(Lcom/google/android/apps/analytics/t;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/analytics/b;->i:Z

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_2

    move v0, v7

    :goto_4
    if-gt v0, v11, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/apps/analytics/u;->a(I)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1, v0}, Lcom/google/android/apps/analytics/u;->b(I)Lcom/google/android/apps/analytics/t;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "event_id"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "cv_index"

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/t;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "cv_name"

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/t;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cv_scope"

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/t;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "cv_value"

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/t;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "custom_var_cache"

    const-string v5, "cv_index = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/t;->d()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p2, v4, v3, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/t;->a()I

    move-result v3

    if-ne v3, v7, :cond_9

    iget-object v3, p0, Lcom/google/android/apps/analytics/b;->m:Lcom/google/android/apps/analytics/u;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/analytics/u;->a(Lcom/google/android/apps/analytics/t;)V

    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    iget-object v3, p0, Lcom/google/android/apps/analytics/b;->m:Lcom/google/android/apps/analytics/u;

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/t;->d()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/apps/analytics/u;->c(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Lcom/google/android/apps/analytics/g;->d()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/g;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "referrer"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timestamp_referrer"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/b;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "referrer_visit"

    iget v3, p0, Lcom/google/android/apps/analytics/b;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "referrer_index"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2, v0}, Lcom/google/android/apps/analytics/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/google/android/apps/analytics/g;

    iget-wide v2, p0, Lcom/google/android/apps/analytics/b;->e:J

    iget v4, p0, Lcom/google/android/apps/analytics/b;->f:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/g;-><init>(Ljava/lang/String;JII)V

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_c
    array-length v3, v2

    move v1, v6

    :goto_6
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    new-instance v5, Lcom/google/android/apps/analytics/j;

    invoke-direct {v5, p1, v4}, Lcom/google/android/apps/analytics/j;-><init>(Lcom/google/android/apps/analytics/j;Ljava/lang/String;)V

    invoke-direct {p0, v5, v0, p2, p3}, Lcom/google/android/apps/analytics/b;->a(Lcom/google/android/apps/analytics/j;Lcom/google/android/apps/analytics/g;Landroid/database/sqlite/SQLiteDatabase;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    move-object v1, v0

    goto/16 :goto_3
.end method

.method private a(Lcom/google/android/apps/analytics/j;Lcom/google/android/apps/analytics/g;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/apps/analytics/c;->a(Lcom/google/android/apps/analytics/j;Lcom/google/android/apps/analytics/g;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hit_string"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "hit_time"

    if-eqz p4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "hits"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget v0, p0, Lcom/google/android/apps/analytics/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/analytics/b;->g:I

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "referrer"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "referrer"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/google/android/apps/analytics/b;->d(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/android/apps/analytics/b;->d(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/google/android/apps/analytics/b;->d(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    throw v1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;I)[Lcom/google/android/apps/analytics/j;
    .locals 18

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :try_start_0
    const-string v2, "events"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "event_id"

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    :goto_0
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/google/android/apps/analytics/j;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v10, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x9

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xa

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xb

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/16 v14, 0xc

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v15, 0xd

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-direct/range {v1 .. v15}, Lcom/google/android/apps/analytics/j;-><init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/analytics/j;->g(I)V

    const-string v2, "event_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "__##GOOGLETRANSACTION##__"

    iget-object v5, v1, Lcom/google/android/apps/analytics/j;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/analytics/b;->a(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/z;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v5, "GoogleAnalyticsTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "missing expected transaction for event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1, v4}, Lcom/google/android/apps/analytics/j;->a(Lcom/google/android/apps/analytics/z;)V

    :goto_1
    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object/from16 v2, v16

    :goto_2
    :try_start_2
    const-string v3, "GoogleAnalyticsTracker"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/analytics/j;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_3
    return-object v1

    :cond_2
    :try_start_3
    const-string v4, "__##GOOGLEITEM##__"

    iget-object v5, v1, Lcom/google/android/apps/analytics/j;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/analytics/b;->b(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/i;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v5, "GoogleAnalyticsTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "missing expected item for event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v1, v4}, Lcom/google/android/apps/analytics/j;->a(Lcom/google/android/apps/analytics/i;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    :cond_5
    const/4 v4, 0x1

    move/from16 v0, p1

    if-le v0, v4, :cond_6

    :try_start_4
    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/analytics/b;->c(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/u;

    move-result-object v2

    :goto_5
    iput-object v2, v1, Lcom/google/android/apps/analytics/j;->h:Lcom/google/android/apps/analytics/u;

    goto :goto_1

    :cond_6
    new-instance v2, Lcom/google/android/apps/analytics/u;

    invoke-direct {v2}, Lcom/google/android/apps/analytics/u;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :cond_7
    if-eqz v16, :cond_8

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/analytics/j;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/apps/analytics/j;

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object/from16 v16, v10

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object/from16 v16, v2

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v10

    goto :goto_2
.end method

.method private static b(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/i;
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    const-string v1, "item_events"

    const/4 v2, 0x0

    const-string v3, "event_id= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/apps/analytics/f;

    const-string v1, "order_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "item_sku"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "item_price"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    const-string v5, "item_count"

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/analytics/f;-><init>(Ljava/lang/String;Ljava/lang/String;DJ)V

    const-string v1, "item_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/f;->a(Ljava/lang/String;)Lcom/google/android/apps/analytics/f;

    move-result-object v0

    const-string v1, "item_category"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/f;->b(Ljava/lang/String;)Lcom/google/android/apps/analytics/f;

    move-result-object v1

    new-instance v0, Lcom/google/android/apps/analytics/i;

    invoke-direct {v0, v1}, Lcom/google/android/apps/analytics/i;-><init>(Lcom/google/android/apps/analytics/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_2
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v8

    :goto_3
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "%3D"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_5

    aget-object v6, v3, v0

    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    if-le v8, v1, :cond_4

    aget-object v8, v6, v2

    aget-object v6, v6, v1

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v5

    goto :goto_0

    :cond_3
    move-object v0, v5

    goto :goto_0

    :cond_4
    array-length v8, v6

    if-ne v8, v1, :cond_2

    aget-object v6, v6, v2

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-string v0, "utm_campaign"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    const-string v3, "utm_medium"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    move v3, v1

    :goto_4
    const-string v4, "utm_source"

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    move v4, v1

    :goto_5
    const-string v6, "gclid"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    move v6, v1

    :goto_6
    if-nez v6, :cond_b

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    if-nez v4, :cond_b

    :cond_6
    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Badly formatted referrer missing campaign, medium and source or click ID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_4

    :cond_9
    move v4, v2

    goto :goto_5

    :cond_a
    move v6, v2

    goto :goto_6

    :cond_b
    const/4 v0, 0x7

    new-array v4, v0, [[Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/String;

    const-string v0, "utmcid"

    aput-object v0, v3, v2

    const-string v0, "utm_id"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    aput-object v3, v4, v2

    new-array v3, v9, [Ljava/lang/String;

    const-string v0, "utmcsr"

    aput-object v0, v3, v2

    const-string v0, "utm_source"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    aput-object v3, v4, v1

    new-array v3, v9, [Ljava/lang/String;

    const-string v0, "utmgclid"

    aput-object v0, v3, v2

    const-string v0, "gclid"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    aput-object v3, v4, v9

    const/4 v3, 0x3

    new-array v5, v9, [Ljava/lang/String;

    const-string v0, "utmccn"

    aput-object v0, v5, v2

    const-string v0, "utm_campaign"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    aput-object v5, v4, v3

    const/4 v3, 0x4

    new-array v5, v9, [Ljava/lang/String;

    const-string v0, "utmcmd"

    aput-object v0, v5, v2

    const-string v0, "utm_medium"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    aput-object v5, v4, v3

    const/4 v3, 0x5

    new-array v5, v9, [Ljava/lang/String;

    const-string v0, "utmctr"

    aput-object v0, v5, v2

    const-string v0, "utm_term"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    aput-object v5, v4, v3

    const/4 v3, 0x6

    new-array v5, v9, [Ljava/lang/String;

    const-string v0, "utmcct"

    aput-object v0, v5, v2

    const-string v0, "utm_content"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    aput-object v5, v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    move v3, v1

    :goto_7
    array-length v6, v4

    if-ge v0, v6, :cond_e

    aget-object v6, v4, v0

    aget-object v6, v6, v1

    if-eqz v6, :cond_c

    aget-object v6, v4, v0

    aget-object v6, v6, v1

    const-string v7, "+"

    const-string v8, "%20"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, "%20"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_d

    move v3, v2

    :goto_8
    aget-object v7, v4, v0

    aget-object v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static c(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/u;
    .locals 10

    const/4 v8, 0x0

    new-instance v9, Lcom/google/android/apps/analytics/u;

    invoke-direct {v9}, Lcom/google/android/apps/analytics/u;-><init>()V

    :try_start_0
    const-string v1, "custom_variables"

    const/4 v2, 0x0

    const-string v3, "event_id= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/apps/analytics/t;

    const-string v2, "cv_index"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "cv_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cv_value"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cv_scope"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/apps/analytics/t;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Lcom/google/android/apps/analytics/u;->a(Lcom/google/android/apps/analytics/t;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return-object v9

    :cond_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method static synthetic c(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/apps/analytics/b;->d(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/analytics/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception ending transaction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/g;
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    const-string v1, "referrer"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "referrer"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "timestamp_referrer"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "referrer_visit"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "referrer_index"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "timestamp_referrer"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v0, "referrer_visit"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v0, "referrer_index"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v0, "referrer"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/apps/analytics/g;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/g;-><init>(Ljava/lang/String;JII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_2
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v8

    :goto_3
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2

    :cond_3
    move-object v0, v8

    goto :goto_0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/analytics/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/analytics/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/analytics/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/analytics/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/analytics/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/analytics/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method private k()[Lcom/google/android/apps/analytics/e;
    .locals 11

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/b;->a:Lcom/google/android/apps/analytics/d;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hits"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "hit_id"

    const/16 v8, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/apps/analytics/e;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/analytics/e;-><init>(Ljava/lang/String;J)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/analytics/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/analytics/e;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/e;

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v9

    goto :goto_1
.end method

.method private l()Lcom/google/android/apps/analytics/u;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/b;->a:Lcom/google/android/apps/analytics/d;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/b;->a(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/u;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/apps/analytics/u;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/u;-><init>()V

    goto :goto_0
.end method

.method private m()I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/analytics/b;->a:Lcom/google/android/apps/analytics/d;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "SELECT COUNT(*) from hits"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "GoogleAnalyticsTracker"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/b;->k:I

    return-void
.end method

.method public final declared-synchronized a(J)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/apps/analytics/b;->g:I

    iget-object v1, p0, Lcom/google/android/apps/analytics/b;->a:Lcom/google/android/apps/analytics/d;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "hits"

    const-string v3, "hit_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/analytics/b;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/apps/analytics/j;)V
    .locals 6

    iget v0, p0, Lcom/google/android/apps/analytics/b;->g:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Store full. Not storing last event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/apps/analytics/b;->k:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/j;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/apps/analytics/b;->b:I

    :goto_1
    rem-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lcom/google/android/apps/analytics/b;->k:I

    mul-int/lit8 v1, v1, 0x64

    if-lt v0, v1, :cond_3

    invoke-static {}, Lcom/google/android/apps/analytics/v;->a()Lcom/google/android/apps/analytics/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/v;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "User has been sampled out. Aborting hit."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/apps/analytics/j;->g()I

    move-result v0

    goto :goto_1

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/b;->a:Lcom/google/android/apps/analytics/d;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/b;->h:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/analytics/b;->a:Lcom/google/android/apps/analytics/d;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "session"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/google/android/apps/analytics/b;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/apps/analytics/b;->c:J

    iput-wide v2, p0, Lcom/google/android/apps/analytics/b;->d:J

    iput-wide v2, p0, Lcom/google/android/apps/analytics/b;->e:J

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/apps/analytics/b;->f:I

    :goto_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "timestamp_first"

    iget-wide v4, p0, Lcom/google/android/apps/analytics/b;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "timestamp_previous"

    iget-wide v4, p0, Lcom/google/android/apps/analytics/b;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "timestamp_current"

    iget-wide v4, p0, Lcom/google/android/apps/analytics/b;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "visits"

    iget v4, p0, Lcom/google/android/apps/analytics/b;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "store_id"

    iget v4, p0, Lcom/google/android/apps/analytics/b;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "session"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/b;->h:Z

    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/apps/analytics/b;->a(Lcom/google/android/apps/analytics/j;Landroid/database/sqlite/SQLiteDatabase;Z)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Lcom/google/android/apps/analytics/b;->d(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_5
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "GoogleAnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_6
    :try_start_4
    iget-wide v2, p0, Lcom/google/android/apps/analytics/b;->e:J

    iput-wide v2, p0, Lcom/google/android/apps/analytics/b;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/apps/analytics/b;->e:J

    iget-wide v2, p0, Lcom/google/android/apps/analytics/b;->e:J

    iget-wide v4, p0, Lcom/google/android/apps/analytics/b;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    iget-wide v2, p0, Lcom/google/android/apps/analytics/b;->e:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/apps/analytics/b;->e:J

    :cond_7
    iget v2, p0, Lcom/google/android/apps/analytics/b;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/apps/analytics/b;->f:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    const-string v2, "GoogleAnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putEventOuter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Lcom/google/android/apps/analytics/b;->d(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v1}, Lcom/google/android/apps/analytics/b;->d(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_8
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/b;->j:Z

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 12

    const-wide/16 v2, 0x1

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/apps/analytics/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/analytics/b;->a:Lcom/google/android/apps/analytics/d;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/analytics/b;->e(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/g;

    move-result-object v6

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "referrer"

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timestamp_referrer"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "referrer_visit"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/google/android/apps/analytics/g;->d()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v6}, Lcom/google/android/apps/analytics/g;->b()J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-lez v6, :cond_1

    add-long/2addr v0, v2

    :cond_1
    :goto_1
    const-string v2, "referrer_index"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v5, v7}, Lcom/google/android/apps/analytics/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/b;->c()V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method public final a()[Lcom/google/android/apps/analytics/e;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/apps/analytics/b;->k()[Lcom/google/android/apps/analytics/e;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/b;->g:I

    return v0
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string v1, "session"

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

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/analytics/b;->c:J

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/analytics/b;->d:J

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/analytics/b;->e:J

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/b;->f:I

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/b;->b:I

    invoke-static {p1}, Lcom/google/android/apps/analytics/b;->e(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/g;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/apps/analytics/b;->c:J

    cmp-long v2, v2, v11

    if-eqz v2, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/g;->b()J

    move-result-wide v2

    cmp-long v0, v2, v11

    if-eqz v0, :cond_2

    :cond_0
    move v0, v9

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/analytics/b;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v10

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/analytics/b;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/b;->i:Z

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/apps/analytics/b;->b:I

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "timestamp_first"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "timestamp_previous"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "timestamp_current"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "visits"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "store_id"

    iget v2, p0, Lcom/google/android/apps/analytics/b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "session"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v8

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_3
    :try_start_4
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/apps/analytics/b;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/b;->i:Z

    invoke-direct {p0}, Lcom/google/android/apps/analytics/b;->m()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/b;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
