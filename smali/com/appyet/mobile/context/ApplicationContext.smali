.class public Lcom/appyet/mobile/context/ApplicationContext;
.super Landroid/app/Application;


# static fields
.field private static F:Ljava/lang/String;

.field private static H:I


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public D:I

.field public E:Lcom/appyet/mobile/context/e;

.field private G:Ljava/lang/String;

.field public a:Z

.field public b:Lcom/appyet/mobile/manager/e;

.field public c:Lcom/appyet/mobile/manager/f;

.field public d:Lcom/appyet/mobile/manager/bu;

.field public e:Lcom/appyet/mobile/manager/bv;

.field public f:Lcom/appyet/mobile/manager/bo;

.field public g:Lcom/appyet/mobile/manager/ch;

.field public h:Lcom/appyet/mobile/manager/ch;

.field public i:Lcom/appyet/mobile/manager/ch;

.field public j:Lcom/appyet/mobile/manager/ch;

.field public k:Lcom/appyet/mobile/manager/ch;

.field public l:Lcom/appyet/mobile/manager/ch;

.field public m:Lcom/appyet/mobile/manager/bb;

.field public n:Lcom/appyet/mobile/manager/bl;

.field public o:Ljava/lang/Long;

.field public p:Ljava/util/List;

.field public q:Ljava/util/Hashtable;

.field public r:Lcom/appyet/mobile/manager/bn;

.field public s:Lcom/appyet/mobile/manager/bm;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Lcom/google/android/apps/analytics/v;

.field public x:Lcom/appyet/mobile/f/e;

.field public y:Lcom/appyet/mobile/manager/cg;

.field public z:Lcom/appyet/mobile/manager/cf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "app.yet"

    sput-object v0, Lcom/appyet/mobile/context/ApplicationContext;->F:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/appyet/mobile/context/ApplicationContext;->H:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->A:Z

    sget-object v0, Lcom/appyet/mobile/context/e;->a:Lcom/appyet/mobile/context/e;

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->E:Lcom/appyet/mobile/context/e;

    return-void
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static f()V
    .locals 0

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private k()V
    .locals 8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->Q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/appyet/mobile/context/ApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v6, v5

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_2

    aget-object v7, v5, v1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->A:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sput p1, Lcom/appyet/mobile/context/ApplicationContext;->H:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/appyet/mobile/manager/cl;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/appyet/mobile/manager/cl;->a:Lcom/appyet/mobile/manager/cl;

    if-ne p1, v1, :cond_1

    new-instance v1, Lcom/appyet/mobile/manager/ch;

    iget-object v2, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    sget-object v2, Lcom/appyet/mobile/manager/cl;->b:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    invoke-virtual {v1, p2}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    new-instance v2, Lcom/appyet/mobile/manager/ch;

    iget-object v3, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    sget-object v3, Lcom/appyet/mobile/manager/cl;->a:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    invoke-virtual {v2, p2}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/ch;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/appyet/mobile/manager/ch;->f(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/appyet/mobile/manager/ch;->a(Ljava/io/InputStream;Ljava/lang/String;)Z

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v1, Lcom/appyet/mobile/manager/ch;

    iget-object v2, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    sget-object v2, Lcom/appyet/mobile/manager/cl;->a:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    invoke-virtual {v1, p2}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    new-instance v2, Lcom/appyet/mobile/manager/ch;

    iget-object v3, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    sget-object v3, Lcom/appyet/mobile/manager/cl;->b:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    invoke-virtual {v2, p2}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/ch;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/appyet/mobile/manager/ch;->f(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/appyet/mobile/manager/ch;->a(Ljava/io/InputStream;Ljava/lang/String;)Z

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_3
    return-void

    :catch_1
    move-exception v5

    goto :goto_3

    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->l:Lcom/appyet/mobile/manager/ch;

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->l:Lcom/appyet/mobile/manager/ch;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->b:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->l:Lcom/appyet/mobile/manager/ch;

    const-string v1, ".View/"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ar()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->b:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    const-string v1, "Image/"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    new-instance v0, Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->b:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    const-string v1, "ImageFit/"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    new-instance v0, Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->b:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    const-string v1, "FavIcon/"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    new-instance v0, Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->b:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    const-string v1, "Podcast/"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    new-instance v0, Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->b:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    const-string v1, "Thumbnail/"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->a:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    const-string v1, "Image/"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    new-instance v0, Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->a:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    const-string v1, "ImageFit/"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    new-instance v0, Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->a:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    const-string v1, "FavIcon/"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    new-instance v0, Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->a:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    const-string v1, "Podcast/"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    new-instance v0, Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/mobile/manager/ch;-><init>(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->a:Lcom/appyet/mobile/manager/cl;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/cl;)V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    const-string v1, "Thumbnail/"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->h(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final c()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/context/ApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appyet/mobile/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/context/ApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appyet/mobile/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public final declared-synchronized e()I
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/appyet/mobile/context/ApplicationContext;->H:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->af()J

    move-result-wide v3

    iget-object v5, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v5}, Lcom/appyet/mobile/manager/f;->ao()I

    move-result v5

    if-gez v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v6, 0x5265c00

    mul-int/2addr v5, v6

    int-to-long v5, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gtz v7, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v2, v7, v3

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final h()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->aw()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->ag()J

    move-result-wide v3

    iget-object v5, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v5}, Lcom/appyet/mobile/manager/f;->ay()I

    move-result v5

    const v6, 0xea60

    mul-int/2addr v5, v6

    int-to-long v5, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gtz v7, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v2, v7, v3

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final i()V
    .locals 10

    const-wide/16 v1, 0x3e8

    const v9, 0xea60

    :try_start_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->aw()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/appyet/mobile/receiver/AlarmReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iget-object v3, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->ag()J

    move-result-wide v3

    iget-object v7, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v7}, Lcom/appyet/mobile/manager/f;->ay()I

    move-result v7

    mul-int/2addr v7, v9

    int-to-long v7, v7

    add-long/2addr v3, v7

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v3, v7

    cmp-long v7, v3, v1

    if-gez v7, :cond_1

    :goto_0
    const/16 v3, 0xe

    long-to-int v1, v1

    invoke-virtual {v5, v3, v1}, Ljava/util/Calendar;->add(II)V

    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/f;->ay()I

    move-result v4

    mul-int/2addr v4, v9

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/appyet/mobile/receiver/AlarmReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    move-wide v1, v3

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->t:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->C:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->D:I

    invoke-virtual {p0}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->B:I

    new-instance v0, Lcom/appyet/mobile/manager/bu;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    new-instance v0, Lcom/appyet/mobile/manager/f;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/f;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    new-instance v0, Lcom/appyet/mobile/manager/bo;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bo;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    new-instance v0, Lcom/appyet/mobile/f/e;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/f/e;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->x:Lcom/appyet/mobile/f/e;

    new-instance v0, Lcom/appyet/mobile/manager/bv;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bv;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    new-instance v0, Lcom/appyet/mobile/manager/bl;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bl;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    new-instance v0, Lcom/appyet/mobile/manager/bn;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bn;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    new-instance v0, Lcom/appyet/mobile/manager/bb;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bb;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->m:Lcom/appyet/mobile/manager/bb;

    new-instance v0, Lcom/appyet/mobile/manager/bm;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bm;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->s:Lcom/appyet/mobile/manager/bm;

    new-instance v0, Lcom/appyet/mobile/manager/e;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/e;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    new-instance v0, Lcom/appyet/mobile/manager/cg;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/cg;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->y:Lcom/appyet/mobile/manager/cg;

    new-instance v0, Lcom/appyet/mobile/manager/cf;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/cf;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->z:Lcom/appyet/mobile/manager/cf;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appyet/mobile/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".intent.action.Ui2Service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->G:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appyet/mobile/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".intent.action.Service2Ui"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/appyet/mobile/context/ApplicationContext;->b()V

    invoke-virtual {p0}, Lcom/appyet/mobile/context/ApplicationContext;->j()V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->r()V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bn;->a()V

    invoke-virtual {p0}, Lcom/appyet/mobile/context/ApplicationContext;->i()V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->A:Z

    invoke-direct {p0}, Lcom/appyet/mobile/context/ApplicationContext;->k()V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->a()V

    invoke-static {}, Lcom/google/android/apps/analytics/v;->a()Lcom/google/android/apps/analytics/v;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->x:Lcom/appyet/mobile/f/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->x:Lcom/appyet/mobile/f/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/f/e;->b()V

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    :cond_2
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-super {p0, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
