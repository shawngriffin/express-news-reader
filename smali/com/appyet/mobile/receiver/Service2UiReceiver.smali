.class public Lcom/appyet/mobile/receiver/Service2UiReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:Lcom/appyet/mobile/activity/bm;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/activity/bm;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/appyet/mobile/receiver/Service2UiReceiver;->b:Lcom/appyet/mobile/activity/bm;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/receiver/Service2UiReceiver;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, p0, Lcom/appyet/mobile/receiver/Service2UiReceiver;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-boolean v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/receiver/Service2UiReceiver;->b:Lcom/appyet/mobile/activity/bm;

    invoke-interface {v0, p2}, Lcom/appyet/mobile/activity/bm;->a(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "feedid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "feedid"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v0, "forced"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    if-nez v2, :cond_1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/receiver/Service2UiReceiver;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-boolean v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/receiver/Service2UiReceiver;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/mobile/receiver/Service2UiReceiver;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v3, 0x7f0b0061

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/appyet/mobile/receiver/Service2UiReceiver;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/bl;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    move v0, v1

    goto :goto_0
.end method
