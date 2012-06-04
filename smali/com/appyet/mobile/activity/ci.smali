.class final Lcom/appyet/mobile/activity/ci;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Lcom/appyet/mobile/activity/BackupRestoreActivity;

.field private b:Z

.field private synthetic c:Lcom/appyet/mobile/activity/BackupRestoreActivity;


# direct methods
.method synthetic constructor <init>(Lcom/appyet/mobile/activity/BackupRestoreActivity;Lcom/appyet/mobile/activity/BackupRestoreActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/appyet/mobile/activity/ci;-><init>(Lcom/appyet/mobile/activity/BackupRestoreActivity;Lcom/appyet/mobile/activity/BackupRestoreActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/appyet/mobile/activity/BackupRestoreActivity;Lcom/appyet/mobile/activity/BackupRestoreActivity;B)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ci;->c:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput-object p2, p0, Lcom/appyet/mobile/activity/ci;->a:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ci;Lcom/appyet/mobile/activity/BackupRestoreActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/mobile/activity/ci;->a:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    iget-boolean v0, p0, Lcom/appyet/mobile/activity/ci;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/ci;->c()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/activity/ci;->a:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/ci;->c:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->d(Lcom/appyet/mobile/activity/BackupRestoreActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ci;->a:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ci;->c:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->e(Lcom/appyet/mobile/activity/BackupRestoreActivity;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private varargs d()Ljava/lang/Boolean;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ci;->c:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->f(Lcom/appyet/mobile/activity/BackupRestoreActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/appyet/mobile/manager/ay;->b(Lcom/appyet/mobile/context/ApplicationContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/ci;->c:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->f(Lcom/appyet/mobile/activity/BackupRestoreActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/appyet/mobile/manager/ay;->a(Lcom/appyet/mobile/context/ApplicationContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "appyet"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/ci;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/activity/ci;->a:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->showDialog(I)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    check-cast p1, Ljava/lang/Boolean;

    iput-boolean v3, p0, Lcom/appyet/mobile/activity/ci;->b:Z

    invoke-direct {p0}, Lcom/appyet/mobile/activity/ci;->c()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/ci;->c:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ci;->c:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ci;->c:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ci;->c:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ci;->c:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
