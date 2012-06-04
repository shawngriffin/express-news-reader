.class public Lcom/j256/ormlite/misc/TransactionManager;
.super Ljava/lang/Object;


# static fields
.field private static final SAVE_POINT_PREFIX:Ljava/lang/String; = "ORMLITE"

.field private static final logger:Lcom/j256/ormlite/logger/Logger;

.field private static savePointCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private connectionSource:Lcom/j256/ormlite/support/ConnectionSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/j256/ormlite/misc/TransactionManager;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/j256/ormlite/misc/TransactionManager;->savePointCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/misc/TransactionManager;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {p0}, Lcom/j256/ormlite/misc/TransactionManager;->initialize()V

    return-void
.end method

.method public static callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    :try_start_0
    invoke-interface {p0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z

    move-result v0

    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v2

    invoke-static {v1, v0, v2, p1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/DatabaseConnection;ZLcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {p0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    invoke-interface {p0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    invoke-interface {p0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v0
.end method

.method public static callInTransaction(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/DatabaseConnection;ZLcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static callInTransaction(Lcom/j256/ormlite/support/DatabaseConnection;ZLcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 9

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    invoke-interface {p2}, Lcom/j256/ormlite/db/DatabaseType;->isNestedSavePointsSupported()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_0
    invoke-interface {p0}, Lcom/j256/ormlite/support/DatabaseConnection;->isAutoCommitSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Lcom/j256/ormlite/support/DatabaseConnection;->getAutoCommit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    sget-object v0, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "had to set auto-commit to false"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ORMLITE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/j256/ormlite/misc/TransactionManager;->savePointCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v3, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "started savePoint transaction"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move-object v3, v0

    move v4, v5

    :goto_2
    :try_start_2
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    if-eqz v4, :cond_2

    invoke-static {p0, v3}, Lcom/j256/ormlite/misc/TransactionManager;->commit(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {p0, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    sget-object v1, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "restored auto-commit to true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-object v0

    :cond_4
    :try_start_3
    sget-object v3, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "started savePoint transaction {}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {p0, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    sget-object v1, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "restored auto-commit to true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    throw v0

    :catch_0
    move-exception v0

    if-eqz v4, :cond_6

    :try_start_4
    invoke-static {p0, v3}, Lcom/j256/ormlite/misc/TransactionManager;->rollBack(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V

    :cond_6
    throw v0

    :catch_1
    move-exception v0

    if-eqz v4, :cond_7

    invoke-static {p0, v3}, Lcom/j256/ormlite/misc/TransactionManager;->rollBack(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V

    :cond_7
    const-string v3, "Operation in transaction threw non-SQL exception"

    invoke-static {v3, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_0

    :cond_9
    move-object v3, v0

    move v4, v2

    move v1, v2

    goto :goto_2
.end method

.method private static commit(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    if-nez v0, :cond_1

    sget-object v0, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "committed savePoint transaction"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "committed savePoint transaction {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static rollBack(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V

    if-nez v0, :cond_1

    sget-object v0, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "rolled back savePoint transaction"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "rolled back savePoint transaction {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/misc/TransactionManager;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-static {v0, p1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 3

    iget-object v0, p0, Lcom/j256/ormlite/misc/TransactionManager;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataSource was not set on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public setConnectionSource(Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/j256/ormlite/misc/TransactionManager;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    return-void
.end method
