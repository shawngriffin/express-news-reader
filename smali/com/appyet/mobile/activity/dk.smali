.class final Lcom/appyet/mobile/activity/dk;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/dk;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/dk;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/MainActivity;->a(Lcom/appyet/mobile/activity/MainActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->m:Lcom/appyet/mobile/manager/bb;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bb;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/dk;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dk;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/MainActivity;->e(Lcom/appyet/mobile/activity/MainActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x1

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dk;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/MainActivity;->d(Lcom/appyet/mobile/activity/MainActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dk;->a:Lcom/appyet/mobile/activity/MainActivity;

    iget-object v1, p0, Lcom/appyet/mobile/activity/dk;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/MainActivity;->a(Lcom/appyet/mobile/activity/MainActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    const v2, 0x7f0b00ea

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appyet/mobile/activity/dk;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v4}, Lcom/appyet/mobile/activity/MainActivity;->a(Lcom/appyet/mobile/activity/MainActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v4

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->m:Lcom/appyet/mobile/manager/bb;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/bb;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/appyet/mobile/activity/dk;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v3}, Lcom/appyet/mobile/activity/MainActivity;->a(Lcom/appyet/mobile/activity/MainActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v3

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->m:Lcom/appyet/mobile/manager/bb;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/bb;->b()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4130

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
