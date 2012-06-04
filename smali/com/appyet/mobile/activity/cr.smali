.class final Lcom/appyet/mobile/activity/cr;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/cr;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/cr;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/MainActivity;->a(Lcom/appyet/mobile/activity/MainActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/cr;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cr;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/MainActivity;->e(Lcom/appyet/mobile/activity/MainActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cr;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/MainActivity;->a(Lcom/appyet/mobile/activity/MainActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    const v1, 0x7f0b01a8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cr;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/MainActivity;->d(Lcom/appyet/mobile/activity/MainActivity;)V

    return-void
.end method
