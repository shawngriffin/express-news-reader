.class public abstract Lcom/j256/ormlite/misc/BaseDaoEnabled;
.super Ljava/lang/Object;


# instance fields
.field protected transient dao:Lcom/j256/ormlite/dao/Dao;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkForDao()V
    .locals 3

    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dao has not been set on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public create()I
    .locals 1

    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V

    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public delete()I
    .locals 1

    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V

    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public extractId()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V

    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->extractId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public objectToString()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public objectsEqual(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V

    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0, p1}, Lcom/j256/ormlite/dao/Dao;->objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public refresh()I
    .locals 1

    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V

    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->refresh(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDao(Lcom/j256/ormlite/dao/Dao;)V
    .locals 0

    iput-object p1, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method

.method public update()I
    .locals 1

    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V

    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public updateId(Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V

    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0, p1}, Lcom/j256/ormlite/dao/Dao;->updateId(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
