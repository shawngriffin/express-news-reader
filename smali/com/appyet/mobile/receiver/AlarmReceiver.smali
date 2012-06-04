.class public Lcom/appyet/mobile/receiver/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/receiver/AlarmReceiver;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/receiver/AlarmReceiver;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/receiver/AlarmReceiver;->a:Lcom/appyet/mobile/context/ApplicationContext;

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/receiver/a;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/receiver/a;-><init>(Lcom/appyet/mobile/receiver/AlarmReceiver;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/receiver/a;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
