.class public interface abstract Lcom/j256/ormlite/dao/ForeignCollection;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableIterable;
.implements Ljava/util/Collection;


# virtual methods
.method public abstract closeLastIterator()V
.end method

.method public abstract getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;
.end method

.method public abstract isEager()Z
.end method

.method public abstract iteratorThrow()Lcom/j256/ormlite/dao/CloseableIterator;
.end method
