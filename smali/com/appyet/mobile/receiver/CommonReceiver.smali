.class public Lcom/appyet/mobile/receiver/CommonReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bv;->a()Lcom/appyet/mobile/manager/ck;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v2

    if-lez v2, :cond_2

    sget-object v2, Lcom/appyet/mobile/manager/ck;->a:Lcom/appyet/mobile/manager/ck;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/appyet/mobile/manager/ck;->c:Lcom/appyet/mobile/manager/ck;

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->aA()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bl;->b()V

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->aA()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/appyet/mobile/manager/ck;->b:Lcom/appyet/mobile/manager/ck;

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/mobile/manager/bl;->a(ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v2, Lcom/appyet/mobile/manager/ck;->a:Lcom/appyet/mobile/manager/ck;

    if-eq v1, v2, :cond_1

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/mobile/manager/bl;->a(ZZZ)V

    goto :goto_0

    :cond_4
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->ak()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getEventTime()J

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->h()V

    goto :goto_0

    :sswitch_1
    iget-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->d()V

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->i()V

    goto/16 :goto_0

    :cond_6
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->ai()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->d()V

    goto/16 :goto_0

    :cond_7
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->aj()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->h()V

    goto/16 :goto_0

    :cond_8
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/e;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
