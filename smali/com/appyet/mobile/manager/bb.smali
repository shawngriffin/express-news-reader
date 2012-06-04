.class public final Lcom/appyet/mobile/manager/bb;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/appyet/mobile/manager/bb;->b:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appyet/mobile/manager/bb;->c:J

    iget-object v0, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->b()Z

    iget-object v0, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->h()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FileCache;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FileCache;->getFileCacheName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->l()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLinkMD5()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const-class v4, Lcom/appyet/mobile/provider/WidgetProvider;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    iget-object v0, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->g()Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Widget;

    array-length v6, v3

    move v1, v2

    :goto_4
    if-ge v1, v6, :cond_6

    aget v7, v3, v1

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Widget;->getWidgetId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    const/4 v1, 0x1

    :goto_5
    if-nez v1, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, v4}, Lcom/appyet/mobile/manager/bo;->d(Ljava/util/List;)Z

    iget-object v0, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/f;->a(J)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ch;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/ch;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/ch;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/ch;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/appyet/mobile/manager/bb;->c:J

    iget-object v0, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ch;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/ch;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/ch;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/appyet/mobile/manager/bb;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/ch;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/appyet/mobile/manager/bb;->b:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto :goto_5
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/appyet/mobile/manager/bb;->c:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/appyet/mobile/manager/bb;->b:J

    return-wide v0
.end method
