.class public Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;
.super Ljava/lang/Object;


# instance fields
.field private final queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;


# direct methods
.method constructor <init>(Lcom/j256/ormlite/stmt/QueryBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    return-void
.end method


# virtual methods
.method public appendStatementString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendStatementString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public getResultFieldTypes()[Lcom/j256/ormlite/field/FieldType;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    #getter for: Lcom/j256/ormlite/stmt/QueryBuilder;->resultFieldTypes:[Lcom/j256/ormlite/field/FieldType;
    invoke-static {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->access$000(Lcom/j256/ormlite/stmt/QueryBuilder;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    return-object v0
.end method
