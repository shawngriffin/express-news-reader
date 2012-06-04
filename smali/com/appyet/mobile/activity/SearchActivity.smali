.class public Lcom/appyet/mobile/activity/SearchActivity;
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

    sget-object v0, Lcom/appyet/mobile/context/d;->g:Lcom/appyet/mobile/context/d;

    iput-object v0, p0, Lcom/appyet/mobile/activity/SearchActivity;->a:Lcom/appyet/mobile/context/d;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/SearchActivity;->f:Ljava/lang/String;

    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/SearchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".suggestion.provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/SearchActivity;->f:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/SearchActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/SearchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/SearchActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SearchActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->onPause()V

    return-void
.end method
