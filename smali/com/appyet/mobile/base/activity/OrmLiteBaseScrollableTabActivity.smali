.class public abstract Lcom/appyet/mobile/base/activity/OrmLiteBaseScrollableTabActivity;
.super Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;


# instance fields
.field private a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/OrmLiteBaseScrollableTabActivity;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->onDestroy()V

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/OrmLiteBaseScrollableTabActivity;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/OrmLiteBaseScrollableTabActivity;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
