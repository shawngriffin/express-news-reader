.class public Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;


# instance fields
.field private final label:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;)V

    iput-object p5, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->label:Ljava/lang/String;

    return-void
.end method

.method public static build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;
    .locals 6

    invoke-static {p0, p1}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->buildStatement(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    const/4 v1, 0x1

    new-array v3, v1, [Lcom/j256/ormlite/field/FieldType;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    const-string v5, "query-for-id"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)V

    return-object v0
.end method

.method protected static buildStatement(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot query-for-id with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it doesn\'t have an id field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SELECT * FROM "

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->appendTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->appendWhereFieldEq(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logArgs([Ljava/lang/Object;)V
    .locals 5

    array-length v0, p1

    if-lez v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{} arguments: {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->label:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->clazz:Ljava/lang/Class;

    invoke-interface {p3, v0, p2}, Lcom/j256/ormlite/dao/ObjectCache;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->convertIdToFieldObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v6

    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->statement:Ljava/lang/String;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    move-object v0, p1

    move-object v4, p0

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/j256/ormlite/support/DatabaseConnection;->queryForOne(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "{} using \'{}\' and {} args, got no results"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->label:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->statement:Ljava/lang/String;

    aput-object v5, v4, v7

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0, v2}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->logArgs([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/j256/ormlite/support/DatabaseConnection;->MORE_THAN_ONE:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{} using \'{}\' and {} args, got >1 results"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->label:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->statement:Ljava/lang/String;

    aput-object v4, v3, v7

    array-length v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->logArgs([Ljava/lang/Object;)V

    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got more than 1 result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->statement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v1, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "{} using \'{}\' and {} args, got 1 result"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->label:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->statement:Ljava/lang/String;

    aput-object v5, v4, v7

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
