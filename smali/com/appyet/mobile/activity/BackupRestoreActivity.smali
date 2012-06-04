.class public Lcom/appyet/mobile/activity/BackupRestoreActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/appyet/mobile/activity/bn;

.field private h:Lcom/appyet/mobile/activity/ci;

.field private i:Z

.field private j:Lcom/appyet/mobile/context/ApplicationContext;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/appyet/mobile/activity/do;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/do;-><init>(Lcom/appyet/mobile/activity/BackupRestoreActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/dl;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/dl;-><init>(Lcom/appyet/mobile/activity/BackupRestoreActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/BackupRestoreActivity;Lcom/appyet/mobile/activity/bn;)Lcom/appyet/mobile/activity/bn;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->g:Lcom/appyet/mobile/activity/bn;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/BackupRestoreActivity;)Lcom/appyet/mobile/activity/ci;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->h:Lcom/appyet/mobile/activity/ci;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/BackupRestoreActivity;Lcom/appyet/mobile/activity/ci;)Lcom/appyet/mobile/activity/ci;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->h:Lcom/appyet/mobile/activity/ci;

    return-object p1
.end method

.method private a()V
    .locals 8

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->f:Landroid/widget/Button;

    iget-object v3, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->j:Lcom/appyet/mobile/context/ApplicationContext;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v5}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Database.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/AppSettings.xml"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/BackupRestoreActivity;)Lcom/appyet/mobile/activity/bn;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->g:Lcom/appyet/mobile/activity/bn;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/BackupRestoreActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->a()V

    return-void
.end method

.method static synthetic d(Lcom/appyet/mobile/activity/BackupRestoreActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/appyet/mobile/activity/BackupRestoreActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/appyet/mobile/activity/BackupRestoreActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->j:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->setContentView(I)V

    const v1, 0x1080028

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->j:Lcom/appyet/mobile/context/ApplicationContext;

    const v0, 0x7f0d000a

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0008

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0d0007

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0d0009

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->c:Landroid/widget/CheckBox;

    const v0, 0x7f0d000b

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->c:Landroid/widget/CheckBox;

    new-instance v1, Lcom/appyet/mobile/activity/dm;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/dm;-><init>(Lcom/appyet/mobile/activity/BackupRestoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->d:Landroid/widget/CheckBox;

    new-instance v1, Lcom/appyet/mobile/activity/dn;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/dn;-><init>(Lcom/appyet/mobile/activity/BackupRestoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->a()V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/appyet/mobile/activity/ci;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/appyet/mobile/activity/ci;

    iput-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->h:Lcom/appyet/mobile/activity/ci;

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->h:Lcom/appyet/mobile/activity/ci;

    invoke-static {v0, p0}, Lcom/appyet/mobile/activity/ci;->a(Lcom/appyet/mobile/activity/ci;Lcom/appyet/mobile/activity/BackupRestoreActivity;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->j:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->j:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupRestoreActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of v1, v0, Lcom/appyet/mobile/activity/bn;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/appyet/mobile/activity/bn;

    iput-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->g:Lcom/appyet/mobile/activity/bn;

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->g:Lcom/appyet/mobile/activity/bn;

    invoke-static {v0, p0}, Lcom/appyet/mobile/activity/bn;->a(Lcom/appyet/mobile/activity/bn;Lcom/appyet/mobile/activity/BackupRestoreActivity;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0008

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0009

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/BackupRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->i:Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->h:Lcom/appyet/mobile/activity/ci;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->h:Lcom/appyet/mobile/activity/ci;

    invoke-static {v1, v0}, Lcom/appyet/mobile/activity/ci;->a(Lcom/appyet/mobile/activity/ci;Lcom/appyet/mobile/activity/BackupRestoreActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->h:Lcom/appyet/mobile/activity/ci;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->g:Lcom/appyet/mobile/activity/bn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->g:Lcom/appyet/mobile/activity/bn;

    invoke-static {v1, v0}, Lcom/appyet/mobile/activity/bn;->a(Lcom/appyet/mobile/activity/bn;Lcom/appyet/mobile/activity/BackupRestoreActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/BackupRestoreActivity;->g:Lcom/appyet/mobile/activity/bn;

    goto :goto_0
.end method
