.class public Lcom/appyet/mobile/activity/SourceItemActivity;
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

    sget-object v0, Lcom/appyet/mobile/context/d;->e:Lcom/appyet/mobile/context/d;

    iput-object v0, p0, Lcom/appyet/mobile/activity/SourceItemActivity;->a:Lcom/appyet/mobile/context/d;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/SourceItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "feed_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "feed_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/SourceItemActivity;->c:Ljava/lang/Long;

    :goto_0
    invoke-super {p0, p1}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/SourceItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/SourceItemActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/SourceItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SourceItemActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "category_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "category_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/SourceItemActivity;->d:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/SourceItemActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/SourceItemActivity;->finish()V

    goto :goto_0
.end method
