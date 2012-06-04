.class public final Lcom/appyet/mobile/e/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3e8

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, v1

    if-ne v2, v5, :cond_2

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    :cond_2
    array-length v2, v1

    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0xa

    const-wide/16 v6, 0x3c

    const-wide/16 v0, 0x3e8

    :try_start_0
    div-long v2, p0, v0

    const/4 v0, 0x3

    new-array v4, v0, [J

    fill-array-data v4, :array_0

    const/4 v5, 0x2

    cmp-long v0, v2, v6

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x3c

    rem-long v0, v2, v0

    :goto_0
    aput-wide v0, v4, v5

    const/4 v5, 0x1

    const-wide/16 v0, 0x3c

    div-long/2addr v2, v0

    cmp-long v0, v2, v6

    if-ltz v0, :cond_2

    const-wide/16 v0, 0x3c

    rem-long v0, v2, v0

    :goto_1
    aput-wide v0, v4, v5

    const/4 v5, 0x0

    const-wide/16 v0, 0x3c

    div-long v0, v2, v0

    const-wide/16 v2, 0x18

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    :cond_0
    aput-wide v0, v4, v5

    const/4 v0, 0x0

    aget-wide v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    aget-wide v0, v4, v0

    cmp-long v0, v0, v8

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    aget-wide v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    const/4 v0, 0x2

    aget-wide v5, v4, v0

    cmp-long v0, v5, v8

    if-ltz v0, :cond_4

    const/4 v0, 0x2

    aget-wide v3, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v5, v4, v1

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x2

    aget-wide v3, v4, v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v0, "0:00:00"

    goto :goto_4

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0x18

    const-wide/16 v6, 0x3c

    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    const/4 v0, 0x4

    new-array v4, v0, [J

    fill-array-data v4, :array_0

    const/4 v5, 0x3

    cmp-long v0, v2, v6

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x3c

    rem-long v0, v2, v0

    :goto_0
    aput-wide v0, v4, v5

    const/4 v5, 0x2

    const-wide/16 v0, 0x3c

    div-long/2addr v2, v0

    cmp-long v0, v2, v6

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x3c

    rem-long v0, v2, v0

    :goto_1
    aput-wide v0, v4, v5

    const/4 v5, 0x1

    const-wide/16 v0, 0x3c

    div-long/2addr v2, v0

    cmp-long v0, v2, v8

    if-ltz v0, :cond_2

    const-wide/16 v0, 0x18

    rem-long v0, v2, v0

    :goto_2
    aput-wide v0, v4, v5

    const/4 v0, 0x0

    const-wide/16 v5, 0x18

    div-long v1, v2, v5

    aput-wide v1, v4, v0

    const/4 v0, 0x0

    aget-wide v0, v4, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const v0, 0x7f0b01bf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v3, v4, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    aget-wide v0, v4, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    const v0, 0x7f0b01be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-wide v3, v4, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const v0, 0x7f0b01bd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    aget-wide v3, v4, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_3

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/appyet/mobile/e/d;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/appyet/mobile/context/ApplicationContext;Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->v()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->v()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v7, 0x3c

    cmp-long v2, p0, v10

    if-gez v2, :cond_1

    move v4, v0

    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    const/4 v0, 0x3

    new-array v5, v0, [J

    fill-array-data v5, :array_0

    const/4 v6, 0x2

    cmp-long v0, v2, v7

    if-ltz v0, :cond_2

    const-wide/16 v0, 0x3c

    rem-long v0, v2, v0

    :goto_1
    aput-wide v0, v5, v6

    const/4 v6, 0x1

    const-wide/16 v0, 0x3c

    div-long/2addr v2, v0

    cmp-long v0, v2, v7

    if-ltz v0, :cond_3

    const-wide/16 v0, 0x3c

    rem-long v0, v2, v0

    :goto_2
    aput-wide v0, v5, v6

    const/4 v6, 0x0

    const-wide/16 v0, 0x3c

    div-long v0, v2, v0

    const-wide/16 v2, 0x18

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    :cond_0
    aput-wide v0, v5, v6

    const/4 v0, 0x0

    aget-wide v0, v5, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    aget-wide v0, v5, v0

    const-wide/16 v6, 0xa

    cmp-long v0, v0, v6

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    aget-wide v0, v5, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_3
    const/4 v0, 0x2

    aget-wide v6, v5, v0

    const-wide/16 v8, 0xa

    cmp-long v0, v6, v8

    if-ltz v0, :cond_5

    const/4 v0, 0x2

    aget-wide v6, v5, v0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v4, :cond_7

    const/4 v3, 0x0

    aget-wide v3, v5, v3

    cmp-long v3, v3, v10

    if-nez v3, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    return-object v0

    :cond_1
    move v4, v1

    goto/16 :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x2

    aget-wide v6, v5, v3

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    aget-wide v3, v5, v3

    cmp-long v3, v3, v10

    if-nez v3, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    const-string v0, "00:00"

    goto/16 :goto_5

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static b(Lcom/appyet/mobile/context/ApplicationContext;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
