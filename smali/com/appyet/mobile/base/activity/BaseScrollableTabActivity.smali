.class public Lcom/appyet/mobile/base/activity/BaseScrollableTabActivity;
.super Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->onResume()V

    return-void
.end method
