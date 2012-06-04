.class public Lcom/j256/ormlite/logger/Logger;
.super Ljava/lang/Object;


# static fields
.field private static final ARG_STRING:Ljava/lang/String; = "{}"

.field private static final ARG_STRING_LENGTH:I


# instance fields
.field private final log:Lcom/j256/ormlite/logger/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "{}"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/j256/ormlite/logger/Logger;->ARG_STRING_LENGTH:I

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/logger/Log;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    return-void
.end method

.method private buildFullMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    :goto_0
    const-string v2, "{}"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/j256/ormlite/logger/Logger;->ARG_STRING_LENGTH:I

    add-int/2addr v2, v0

    array-length v0, p2

    if-ge v1, v0, :cond_2

    aget-object v0, p2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/logger/Log;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p4}, Lcom/j256/ormlite/logger/Logger;->buildFullMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v1, p1, v0}, Lcom/j256/ormlite/logger/Log;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v1, p1, v0, p2}, Lcom/j256/ormlite/logger/Log;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/j256/ormlite/logger/Logger;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/j256/ormlite/logger/Logger;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/j256/ormlite/logger/Logger;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/j256/ormlite/logger/Logger;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs fatal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/j256/ormlite/logger/Logger;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/j256/ormlite/logger/Logger;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/j256/ormlite/logger/Logger;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/j256/ormlite/logger/Logger;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/logger/Log;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    return v0
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/j256/ormlite/logger/Logger;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/j256/ormlite/logger/Logger;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/j256/ormlite/logger/Logger;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/j256/ormlite/logger/Logger;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
