.class final Lcom/appyet/mobile/receiver/a;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/receiver/AlarmReceiver;


# direct methods
.method synthetic constructor <init>(Lcom/appyet/mobile/receiver/AlarmReceiver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appyet/mobile/receiver/a;-><init>(Lcom/appyet/mobile/receiver/AlarmReceiver;B)V

    return-void
.end method

.method private constructor <init>(Lcom/appyet/mobile/receiver/AlarmReceiver;B)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/receiver/a;->a:Lcom/appyet/mobile/receiver/AlarmReceiver;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/receiver/a;->a:Lcom/appyet/mobile/receiver/AlarmReceiver;

    invoke-static {v0}, Lcom/appyet/mobile/receiver/AlarmReceiver;->a(Lcom/appyet/mobile/receiver/AlarmReceiver;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bl;->a(Ljava/lang/Long;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/receiver/a;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
