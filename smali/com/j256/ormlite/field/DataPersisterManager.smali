.class public Lcom/j256/ormlite/field/DataPersisterManager;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_ENUM_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

.field private static builtInMap:Ljava/util/Map;

.field private static registeredPersisters:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/j256/ormlite/field/types/EnumStringType;->getSingleton()Lcom/j256/ormlite/field/types/EnumStringType;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->DEFAULT_ENUM_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

    sput-object v1, Lcom/j256/ormlite/field/DataPersisterManager;->builtInMap:Ljava/util/Map;

    sput-object v1, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    return-void
.end method

.method public static lookupForField(Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DataPersister;
    .locals 10

    const/4 v1, 0x0

    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/field/DataPersister;->isValidForField(Ljava/lang/reflect/Field;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->builtInMap:Ljava/util/Map;

    if-nez v0, :cond_5

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/j256/ormlite/field/DataType;->values()[Lcom/j256/ormlite/field/DataType;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v0, v4, v2

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Lcom/j256/ormlite/field/DataPersister;->getAssociatedClasses()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    move v0, v1

    :goto_2
    if-ge v0, v8, :cond_3

    aget-object v9, v7, v0

    invoke-virtual {v3, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    sput-object v3, Lcom/j256/ormlite/field/DataPersisterManager;->builtInMap:Ljava/util/Map;

    :cond_5
    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->builtInMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/DataPersister;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->DEFAULT_ENUM_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs registerDataPersisters([Lcom/j256/ormlite/field/DataPersister;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sput-object v1, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    return-void
.end method
