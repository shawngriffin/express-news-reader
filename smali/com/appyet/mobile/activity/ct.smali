.class final Lcom/appyet/mobile/activity/ct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/WidgetConfigureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ct;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/activity/ct;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->setResult(I)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/appyet/mobile/activity/ct;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->a(Lcom/appyet/mobile/activity/WidgetConfigureActivity;)Lcom/appyet/mobile/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appyet/mobile/d/b;->getCount()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/ct;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->a(Lcom/appyet/mobile/activity/WidgetConfigureActivity;)Lcom/appyet/mobile/d/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/d/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getIsSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v1, Lcom/appyet/mobile/data/Widget;

    invoke-direct {v1}, Lcom/appyet/mobile/data/Widget;-><init>()V

    iget-object v2, p0, Lcom/appyet/mobile/activity/ct;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    iget v2, v2, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->a:I

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Widget;->setWidgetId(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/Widget;->setFeedId(Ljava/lang/Long;)V

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/Widget;->setPosition(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ct;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->b(Lcom/appyet/mobile/activity/WidgetConfigureActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/data/Widget;)Z

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_1

    :goto_2
    return-void

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget-object v2, p0, Lcom/appyet/mobile/activity/ct;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    iget v2, v2, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ct;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ct;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    iget v1, v1, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->a:I

    const/4 v2, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/appyet/mobile/provider/WidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ct;->a:Lcom/appyet/mobile/activity/WidgetConfigureActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/WidgetConfigureActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/high16 v0, 0x7f0b

    const/4 v1, 0x1

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
