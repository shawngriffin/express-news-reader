.class public Lcom/j256/ormlite/stmt/RawResultsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/dao/GenericRawResults;


# instance fields
.field private final columnNames:[Ljava/lang/String;

.field private iterator:Lcom/j256/ormlite/stmt/SelectIterator;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/j256/ormlite/stmt/SelectIterator;

    const/4 v2, 0x0

    move-object v1, p4

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p3

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/stmt/SelectIterator;-><init>(Ljava/lang/Class;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/support/CompiledStatement;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    iput-object p6, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->columnNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/SelectIterator;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    :cond_0
    return-void
.end method

.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getFirstResult()Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/SelectIterator;->hasNextThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/SelectIterator;->nextThrow()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/RawResultsImpl;->close()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/RawResultsImpl;->close()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/RawResultsImpl;->close()V

    throw v0
.end method

.method public getNumberColumns()I
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->columnNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getResults()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/SelectIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/SelectIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/SelectIterator;->close()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/SelectIterator;->close()V

    return-object v0
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method
