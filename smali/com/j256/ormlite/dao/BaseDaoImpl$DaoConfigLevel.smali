.class Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigLevel;
.super Ljava/lang/Object;


# instance fields
.field daoList:Ljava/util/List;

.field level:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/j256/ormlite/dao/BaseDaoImpl$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigLevel;-><init>()V

    return-void
.end method


# virtual methods
.method public addDao(Lcom/j256/ormlite/dao/BaseDaoImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigLevel;->daoList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigLevel;->daoList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigLevel;->daoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
