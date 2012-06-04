.class public Lcom/appyet/mobile/provider/WidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ACTION_WIDGET_FORWARD"

    sput-object v0, Lcom/appyet/mobile/provider/WidgetProvider;->b:Ljava/lang/String;

    const-string v0, "ACTION_WIDGET_BACKWARD"

    sput-object v0, Lcom/appyet/mobile/provider/WidgetProvider;->c:Ljava/lang/String;

    const-string v0, "ACTION_WIDGET_OPEN"

    sput-object v0, Lcom/appyet/mobile/provider/WidgetProvider;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V
    .locals 9

    const/4 v1, 0x0

    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f030048

    invoke-direct {v6, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    sget-object v2, Lcom/appyet/mobile/provider/WidgetProvider;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MFRD://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".widget/id/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/appyet/mobile/provider/WidgetProvider;->a:Ljava/lang/String;

    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/appyet/mobile/provider/WidgetProvider;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lcom/appyet/mobile/provider/WidgetProvider;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/appyet/mobile/provider/WidgetProvider;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v3, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const v3, 0x7f0d00ee

    invoke-virtual {v6, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/appyet/mobile/provider/WidgetProvider;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lcom/appyet/mobile/provider/WidgetProvider;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/appyet/mobile/provider/WidgetProvider;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v3, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const v3, 0x7f0d00ef

    invoke-virtual {v6, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/bu;->E()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Lcom/appyet/mobile/manager/bo;->d(J)Lcom/appyet/mobile/data/Widget;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    invoke-static {v6, p0, v0}, Lcom/appyet/mobile/provider/WidgetProvider;->a(Landroid/widget/RemoteViews;Landroid/content/Context;Lcom/appyet/mobile/data/Feed;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p2, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v2, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/Widget;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/appyet/mobile/manager/bo;->f(J)Ljava/util/List;

    move-result-object v3

    iget-object v2, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v4}, Lcom/appyet/mobile/data/Widget;->getFeedId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/appyet/mobile/manager/bo;->b(J)Lcom/appyet/mobile/data/Feed;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1, p2, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/appyet/mobile/provider/WidgetProvider;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v7, Lcom/appyet/mobile/provider/WidgetProvider;->d:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v7, Lcom/appyet/mobile/provider/WidgetProvider;->a:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4}, Lcom/appyet/mobile/data/Widget;->getFeedId()Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v7, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const v7, 0x7f0d00e3

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f0d00e6

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f0d00e9

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object v5, v3

    move-object v3, v4

    :goto_1
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    invoke-static {v6, p0, v2}, Lcom/appyet/mobile/provider/WidgetProvider;->a(Landroid/widget/RemoteViews;Landroid/content/Context;Lcom/appyet/mobile/data/Feed;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {p1, p2, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_4
    :try_start_3
    iget-object v3, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/bo;->q()Ljava/util/List;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/appyet/mobile/activity/MainActivity;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v7, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const v7, 0x7f0d00e3

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f0d00e6

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f0d00e9

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object v5, v3

    move-object v3, v4

    goto :goto_1

    :cond_5
    if-nez v2, :cond_8

    const v2, 0x7f0d00e0

    const v4, 0x7f0b01bb

    invoke-virtual {v0, v4}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_2
    iget-object v2, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->E()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Widget;->getPosition()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-int v2, v7

    add-int/2addr v2, p3

    int-to-long v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/appyet/mobile/data/Widget;->setPosition(Ljava/lang/Long;)V

    iget-object v4, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v4, v3}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/data/Widget;)Z

    :goto_3
    if-gez v2, :cond_1b

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_5
    if-gtz v4, :cond_b

    const v1, 0x7f0d00ef

    const/16 v2, 0x8

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d00ec

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v4, v1, :cond_c

    const v1, 0x7f0d00ee

    const/16 v2, 0x8

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d00eb

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_7
    const v1, 0x7f0d00ed

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_f

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/FeedItem;

    const v2, 0x7f0d00e4

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v3, v0, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    :cond_6
    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/appyet/mobile/manager/ch;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_d

    const v2, 0x7f0d00e3

    invoke-virtual {v6, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v4, 0x1

    if-le v1, v2, :cond_12

    add-int/lit8 v1, v4, 0x1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/FeedItem;

    const v2, 0x7f0d00e7

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v3, v0, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    :cond_7
    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/appyet/mobile/manager/ch;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_a
    if-eqz v1, :cond_10

    const v2, 0x7f0d00e6

    invoke-virtual {v6, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v4, 0x2

    if-le v1, v2, :cond_15

    add-int/lit8 v1, v4, 0x2

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/data/FeedItem;

    const v2, 0x7f0d00ea

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    :goto_c
    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_13

    const v1, 0x7f0d00e9

    invoke-virtual {v6, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_e
    invoke-virtual {p1, p2, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_0

    :cond_8
    :try_start_4
    invoke-virtual {v2}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const v4, 0x7f0d00e0

    invoke-virtual {v2}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p1, p2, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_0

    :cond_9
    const v4, 0x7f0d00e0

    :try_start_6
    invoke-virtual {v2}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p1, p2, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    throw v0

    :cond_a
    :try_start_7
    iget-object v2, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->aD()I

    move-result v2

    add-int/2addr v2, p3

    iget-object v3, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3, v2}, Lcom/appyet/mobile/manager/f;->i(I)V

    goto/16 :goto_3

    :cond_b
    const v1, 0x7f0d00ec

    const/16 v2, 0x8

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d00ef

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_6

    :cond_c
    const v1, 0x7f0d00eb

    const/16 v2, 0x8

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d00ee

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_7

    :cond_d
    const v1, 0x7f0d00e3

    const v2, 0x7f020094

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_9

    :cond_e
    const v1, 0x7f0d00e3

    const v2, 0x7f020094

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_9

    :cond_f
    const v1, 0x7f0d00e4

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0d00e3

    const v2, 0x7f020094

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_9

    :cond_10
    const v1, 0x7f0d00e6

    const v2, 0x7f020094

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_b

    :cond_11
    const v1, 0x7f0d00e6

    const v2, 0x7f020094

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_b

    :cond_12
    const v1, 0x7f0d00e7

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0d00e6

    const v2, 0x7f020094

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_b

    :cond_13
    const v0, 0x7f0d00e9

    const v1, 0x7f020094

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_e

    :cond_14
    const v0, 0x7f0d00e9

    const v1, 0x7f020094

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_e

    :cond_15
    const v0, 0x7f0d00ea

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0d00e9

    const v1, 0x7f020094

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_e

    :cond_16
    move-object v0, v2

    goto/16 :goto_d

    :cond_17
    move-object v0, v3

    goto/16 :goto_c

    :cond_18
    move-object v1, v2

    goto/16 :goto_a

    :cond_19
    move-object v1, v2

    goto/16 :goto_8

    :cond_1a
    move v4, v1

    goto/16 :goto_5

    :cond_1b
    move v1, v2

    goto/16 :goto_4
.end method

.method private static a(Landroid/widget/RemoteViews;Landroid/content/Context;Lcom/appyet/mobile/data/Feed;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v3, 0x7f0d00e0

    const v2, 0x7f020094

    if-nez p2, :cond_0

    const v0, 0x7f0b01bb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f0d00e4

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0d00e3

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0d00e7

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0d00e6

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0d00ea

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0d00e9

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0d00ed

    const-string v1, "0/0"

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0d00ef

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0d00ec

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0d00ee

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, p2, v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/manager/bo;->e(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MFRD://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".widget/id/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appyet/mobile/provider/WidgetProvider;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/provider/WidgetProvider;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/provider/WidgetProvider;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {p1, v1, v0, v2}, Lcom/appyet/mobile/provider/WidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/provider/WidgetProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/provider/WidgetProvider;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/appyet/mobile/provider/WidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/provider/WidgetProvider;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/provider/WidgetProvider;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/appyet/mobile/activity/MainActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "feed_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_7
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p3

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p3, v0

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3}, Lcom/appyet/mobile/provider/WidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
