.class public abstract Lcom/j256/ormlite/support/BaseConnectionSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/support/ConnectionSource;


# instance fields
.field private specialConnection:Ljava/lang/ThreadLocal;

.field protected usedSpecialConnection:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->usedSpecialConnection:Z

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method protected clearSpecial(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/logger/Logger;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    if-nez v0, :cond_0

    const-string v0, "no connection has been saved when clear() called"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v3, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    if-ne v3, p1, :cond_2

    invoke-virtual {v0}, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v3, "connection saved {} is not the one being cleared {}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    aput-object v0, v4, v1

    aput-object p1, v4, v2

    invoke-virtual {p2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method protected getSavedConnection()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->usedSpecialConnection:Z

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    goto :goto_0
.end method

.method public getSpecialConnection()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    goto :goto_0
.end method

.method protected isSavedConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->usedSpecialConnection:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    if-ne v0, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected saveSpecial(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->usedSpecialConnection:Z

    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    new-instance v2, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    invoke-direct {v2, p1}, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;-><init>(Lcom/j256/ormlite/support/DatabaseConnection;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v1, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    if-eq v1, p1, :cond_1

    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to save connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but already have saved connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v0}, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->increment()V

    const/4 v0, 0x0

    goto :goto_0
.end method
