.class public interface abstract Lcom/j256/ormlite/dao/Dao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableIterable;


# virtual methods
.method public abstract callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.end method

.method public abstract clearObjectCache()V
.end method

.method public abstract closeLastIterator()V
.end method

.method public abstract countOf()J
.end method

.method public abstract countOf(Lcom/j256/ormlite/stmt/PreparedQuery;)J
.end method

.method public abstract create(Ljava/lang/Object;)I
.end method

.method public abstract createIfNotExists(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
.end method

.method public abstract delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I
.end method

.method public abstract delete(Ljava/lang/Object;)I
.end method

.method public abstract delete(Ljava/util/Collection;)I
.end method

.method public abstract deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;
.end method

.method public abstract deleteById(Ljava/lang/Object;)I
.end method

.method public abstract deleteIds(Ljava/util/Collection;)I
.end method

.method public varargs abstract executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract extractId(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract findForeignFieldType(Ljava/lang/Class;)Lcom/j256/ormlite/field/FieldType;
.end method

.method public abstract getDataClass()Ljava/lang/Class;
.end method

.method public abstract getEmptyForeignCollection(Ljava/lang/String;)Lcom/j256/ormlite/dao/ForeignCollection;
.end method

.method public abstract getObjectCache()Lcom/j256/ormlite/dao/ObjectCache;
.end method

.method public abstract getSelectStarRowMapper()Lcom/j256/ormlite/stmt/GenericRowMapper;
.end method

.method public abstract getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;
.end method

.method public abstract getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
.end method

.method public abstract idExists(Ljava/lang/Object;)Z
.end method

.method public abstract isTableExists()Z
.end method

.method public abstract isUpdatable()Z
.end method

.method public abstract iterator()Lcom/j256/ormlite/dao/CloseableIterator;
.end method

.method public abstract iterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
.end method

.method public abstract iterator(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableIterator;
.end method

.method public abstract iterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
.end method

.method public abstract mapSelectStarRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
.end method

.method public abstract objectToString(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
.end method

.method public abstract queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;
.end method

.method public abstract queryForAll()Ljava/util/List;
.end method

.method public abstract queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
.end method

.method public abstract queryForFieldValues(Ljava/util/Map;)Ljava/util/List;
.end method

.method public abstract queryForFieldValuesArgs(Ljava/util/Map;)Ljava/util/List;
.end method

.method public abstract queryForFirst(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;
.end method

.method public abstract queryForId(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract queryForMatching(Ljava/lang/Object;)Ljava/util/List;
.end method

.method public abstract queryForMatchingArgs(Ljava/lang/Object;)Ljava/util/List;
.end method

.method public abstract queryForSameId(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public varargs abstract queryRaw(Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
.end method

.method public varargs abstract queryRaw(Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
.end method

.method public varargs abstract queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
.end method

.method public abstract refresh(Ljava/lang/Object;)I
.end method

.method public abstract setObjectCache(Lcom/j256/ormlite/dao/ObjectCache;)V
.end method

.method public abstract setObjectCache(Z)V
.end method

.method public abstract update(Lcom/j256/ormlite/stmt/PreparedUpdate;)I
.end method

.method public abstract update(Ljava/lang/Object;)I
.end method

.method public abstract updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;
.end method

.method public abstract updateId(Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method public varargs abstract updateRaw(Ljava/lang/String;[Ljava/lang/String;)I
.end method
