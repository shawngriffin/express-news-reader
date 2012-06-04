.class Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# instance fields
.field private final columnNames:[Ljava/lang/String;

.field private final mapper:Lcom/j256/ormlite/dao/RawRowMapper;

.field private final stringRowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;Lcom/j256/ormlite/stmt/GenericRowMapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->mapper:Lcom/j256/ormlite/dao/RawRowMapper;

    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->columnNames:[Ljava/lang/String;

    iput-object p3, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->stringRowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;

    return-void
.end method


# virtual methods
.method public mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->stringRowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/stmt/GenericRowMapper;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->mapper:Lcom/j256/ormlite/dao/RawRowMapper;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->columnNames:[Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/j256/ormlite/dao/RawRowMapper;->mapRow([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
