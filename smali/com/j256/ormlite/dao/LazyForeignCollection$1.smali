.class Lcom/j256/ormlite/dao/LazyForeignCollection$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableIterable;


# instance fields
.field final synthetic this$0:Lcom/j256/ormlite/dao/LazyForeignCollection;


# direct methods
.method constructor <init>(Lcom/j256/ormlite/dao/LazyForeignCollection;)V
    .locals 0

    iput-object p1, p0, Lcom/j256/ormlite/dao/LazyForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/LazyForeignCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/LazyForeignCollection;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->seperateIteratorThrow()Lcom/j256/ormlite/dao/CloseableIterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not build lazy iterator for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/j256/ormlite/dao/LazyForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/LazyForeignCollection;

    iget-object v3, v3, Lcom/j256/ormlite/dao/LazyForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1

    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection$1;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection$1;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method
