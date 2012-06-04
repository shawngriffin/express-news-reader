.class public abstract Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;
.super Landroid/app/ActivityGroup;


# instance fields
.field private volatile created:Z

.field private volatile destroyed:Z

.field private volatile helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->created:Z

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->destroyed:Z

    return-void
.end method


# virtual methods
.method public getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;
    .locals 1

    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->getHelper()Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    return-object v0
.end method

.method public getHelper()Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->created:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A call has not been made to onCreate() yet so the helper is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->destroyed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A call to onDestroy has already been made and the helper cannot be used after that point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Helper is null for some unknown reason"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    return-object v0
.end method

.method protected getHelperInternal(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 1

    invoke-static {p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->getHelperInternal(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->created:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->releaseHelper(Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->destroyed:Z

    return-void
.end method

.method protected releaseHelper(Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;)V
    .locals 1

    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    return-void
.end method
