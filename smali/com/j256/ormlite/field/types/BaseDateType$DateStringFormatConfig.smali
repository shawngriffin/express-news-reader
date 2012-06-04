.class public Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
.super Ljava/lang/Object;


# instance fields
.field final dateFormatStr:Ljava/lang/String;

.field private final threadLocal:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->threadLocal:Ljava/lang/ThreadLocal;

    iput-object p1, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->dateFormatStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDateFormat()Ljava/text/DateFormat;
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->dateFormatStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->dateFormatStr:Ljava/lang/String;

    return-object v0
.end method
