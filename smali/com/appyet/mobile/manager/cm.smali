.class public final Lcom/appyet/mobile/manager/cm;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# instance fields
.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SEARCH"

    sput-object v0, Lcom/appyet/mobile/manager/cm;->a:Ljava/lang/String;

    const-string v0, "URL"

    sput-object v0, Lcom/appyet/mobile/manager/cm;->b:Ljava/lang/String;

    const-string v0, "GOOGLE_READER"

    sput-object v0, Lcom/appyet/mobile/manager/cm;->c:Ljava/lang/String;

    const-string v0, "OPML"

    sput-object v0, Lcom/appyet/mobile/manager/cm;->d:Ljava/lang/String;

    const-string v0, "BROWSE"

    sput-object v0, Lcom/appyet/mobile/manager/cm;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/manager/cm;->g:Lcom/appyet/mobile/context/ApplicationContext;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/manager/cm;->f:Ljava/util/List;

    invoke-direct {p0}, Lcom/appyet/mobile/manager/cm;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/appyet/mobile/manager/cm;->g:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->F()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/manager/cm;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/appyet/mobile/manager/cm;->e:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/manager/cm;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/appyet/mobile/manager/cm;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/manager/cm;->g:Lcom/appyet/mobile/context/ApplicationContext;

    const v2, 0x7f0b0091

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/appyet/mobile/manager/cm;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/appyet/mobile/manager/cm;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/manager/cm;->g:Lcom/appyet/mobile/context/ApplicationContext;

    const v2, 0x7f0b0092

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/appyet/mobile/manager/cm;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/manager/cm;->g:Lcom/appyet/mobile/context/ApplicationContext;

    const v2, 0x7f0b0093

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/appyet/mobile/manager/cm;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/appyet/mobile/manager/cm;->g:Lcom/appyet/mobile/context/ApplicationContext;

    const v2, 0x7f0b0094

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/appyet/mobile/manager/cm;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/appyet/mobile/manager/cm;->g:Lcom/appyet/mobile/context/ApplicationContext;

    const v2, 0x7f0b00b1

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid provider code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/cm;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/cm;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/cm;->f:Ljava/util/List;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cm;->g:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    new-instance v6, Lcom/appyet/mobile/c/e;

    invoke-direct {v6}, Lcom/appyet/mobile/c/e;-><init>()V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    iput-boolean v2, v6, Lcom/appyet/mobile/c/e;->f:Z

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/cm;->g:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/manager/cm;->g:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->G()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/appyet/mobile/c/e;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-object v8, v1, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    if-nez v0, :cond_1

    iput-boolean v3, v1, Lcom/appyet/mobile/c/e;->f:Z

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v4

    :cond_4
    move v0, v3

    goto :goto_2
.end method
