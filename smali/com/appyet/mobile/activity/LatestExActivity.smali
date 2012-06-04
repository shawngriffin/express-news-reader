.class public Lcom/appyet/mobile/activity/LatestExActivity;
.super Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/appyet/mobile/context/d;->a:Lcom/appyet/mobile/context/d;

    iput-object v0, p0, Lcom/appyet/mobile/activity/LatestExActivity;->a:Lcom/appyet/mobile/context/d;

    invoke-super {p0, p1}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/LatestExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/LatestExActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/LatestExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LatestActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
