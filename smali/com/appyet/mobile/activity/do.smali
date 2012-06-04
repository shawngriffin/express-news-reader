.class final Lcom/appyet/mobile/activity/do;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/BackupRestoreActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/BackupRestoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/do;->a:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/appyet/mobile/activity/do;->a:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    new-instance v1, Lcom/appyet/mobile/activity/ci;

    iget-object v2, p0, Lcom/appyet/mobile/activity/do;->a:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    iget-object v3, p0, Lcom/appyet/mobile/activity/do;->a:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    invoke-direct {v1, v2, v3}, Lcom/appyet/mobile/activity/ci;-><init>(Lcom/appyet/mobile/activity/BackupRestoreActivity;Lcom/appyet/mobile/activity/BackupRestoreActivity;)V

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->a(Lcom/appyet/mobile/activity/BackupRestoreActivity;Lcom/appyet/mobile/activity/ci;)Lcom/appyet/mobile/activity/ci;

    iget-object v0, p0, Lcom/appyet/mobile/activity/do;->a:Lcom/appyet/mobile/activity/BackupRestoreActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->a(Lcom/appyet/mobile/activity/BackupRestoreActivity;)Lcom/appyet/mobile/activity/ci;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/ci;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    return-void
.end method
