.class public Lcom/j256/ormlite/stmt/query/Not;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/stmt/query/Clause;
.implements Lcom/j256/ormlite/stmt/query/NeedsFutureClause;


# instance fields
.field private comparison:Lcom/j256/ormlite/stmt/query/Comparison;

.field private exists:Lcom/j256/ormlite/stmt/query/Exists;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->exists:Lcom/j256/ormlite/stmt/query/Exists;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->exists:Lcom/j256/ormlite/stmt/query/Exists;

    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/query/Not;->setMissingClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-void
.end method


# virtual methods
.method public appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->exists:Lcom/j256/ormlite/stmt/query/Exists;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Clause has not been set in NOT operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    if-nez v0, :cond_1

    const-string v0, "(NOT "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->exists:Lcom/j256/ormlite/stmt/query/Exists;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/query/Exists;->appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    :goto_0
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    const-string v0, "(NOT "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    invoke-interface {v0}, Lcom/j256/ormlite/stmt/query/Comparison;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    invoke-interface {v0, p2}, Lcom/j256/ormlite/stmt/query/Comparison;->appendOperation(Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    invoke-interface {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/query/Comparison;->appendValue(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_0
.end method

.method public setMissingClause(Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 3

    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NOT operation already has a comparison set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Lcom/j256/ormlite/stmt/query/Comparison;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/j256/ormlite/stmt/query/Comparison;

    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/j256/ormlite/stmt/query/Exists;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/j256/ormlite/stmt/query/Exists;

    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/Not;->exists:Lcom/j256/ormlite/stmt/query/Exists;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT operation can only work with comparison SQL clauses, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    if-nez v0, :cond_0

    const-string v0, "NOT without comparison"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT comparison "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
