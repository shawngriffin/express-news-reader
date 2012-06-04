.class public Lcom/j256/ormlite/dao/LruObjectCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/dao/ObjectCache;


# instance fields
.field private final capacity:I

.field private final classMaps:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/dao/LruObjectCache;->classMaps:Ljava/util/concurrent/ConcurrentHashMap;

    iput p1, p0, Lcom/j256/ormlite/dao/LruObjectCache;->capacity:I

    return-void
.end method

.method private getMapForClass(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/dao/LruObjectCache;->classMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/j256/ormlite/dao/LruObjectCache$LimitedLinkedHashMap;

    iget v1, p0, Lcom/j256/ormlite/dao/LruObjectCache;->capacity:I

    invoke-direct {v0, v1}, Lcom/j256/ormlite/dao/LruObjectCache$LimitedLinkedHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/dao/LruObjectCache;->classMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear(Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/LruObjectCache;->getMapForClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearAll()V
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/dao/LruObjectCache;->classMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/LruObjectCache;->getMapForClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/LruObjectCache;->getMapForClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/LruObjectCache;->getMapForClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size(Ljava/lang/Class;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/LruObjectCache;->getMapForClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public sizeAll()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/j256/ormlite/dao/LruObjectCache;->classMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public updateId(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/LruObjectCache;->getMapForClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
