.class final Lcom/appyet/mobile/manager/c;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/manager/bm;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/c;->a:Lcom/appyet/mobile/manager/bm;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/appyet/mobile/manager/c;->a:Lcom/appyet/mobile/manager/bm;

    invoke-static {v2}, Lcom/appyet/mobile/manager/bm;->a(Lcom/appyet/mobile/manager/bm;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    const-class v3, Lcom/appyet/mobile/provider/WidgetProvider;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/appyet/mobile/manager/c;->a:Lcom/appyet/mobile/manager/bm;

    invoke-static {v2}, Lcom/appyet/mobile/manager/bm;->a(Lcom/appyet/mobile/manager/bm;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    iget-object v6, p0, Lcom/appyet/mobile/manager/c;->a:Lcom/appyet/mobile/manager/bm;

    invoke-static {v6}, Lcom/appyet/mobile/manager/bm;->a(Lcom/appyet/mobile/manager/bm;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v6

    invoke-static {v6, v2, v5, v1}, Lcom/appyet/mobile/provider/WidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a()V
    .locals 0

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    return-void
.end method
