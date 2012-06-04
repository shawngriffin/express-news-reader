.class public final Lcom/appyet/mobile/manager/bl;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private c:Lcom/appyet/mobile/context/ApplicationContext;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Ljava/util/concurrent/ThreadPoolExecutor;

.field private k:Ljava/util/concurrent/ArrayBlockingQueue;

.field private l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private m:Ljava/util/concurrent/atomic/AtomicInteger;

.field private n:Landroid/content/Intent;

.field private o:Lcom/appyet/mobile/manager/ProgressNotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fe4232*fed"

    sput-object v0, Lcom/appyet/mobile/manager/bl;->a:Ljava/lang/String;

    new-instance v0, Lcom/appyet/mobile/manager/ci;

    invoke-direct {v0}, Lcom/appyet/mobile/manager/ci;-><init>()V

    sput-object v0, Lcom/appyet/mobile/manager/bl;->b:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method

.method private static a(Ljava/util/List;J)Lcom/appyet/mobile/data/Feed;
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/appyet/mobile/manager/bl;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appyet/mobile/manager/bl;->b(Ljava/lang/Long;Z)V

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/manager/bl;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->C:I

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->D:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const/high16 v2, 0x41c0

    invoke-static {v1, v2}, Lcom/appyet/mobile/e/f;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, p1, v0}, Lcom/appyet/mobile/manager/ch;->a(Lcom/appyet/mobile/manager/ch;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/Long;)V
    .locals 11

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bv;->a()Lcom/appyet/mobile/manager/ck;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/manager/ck;->a:Lcom/appyet/mobile/manager/ck;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->at()Z

    move-result v9

    iput-object v2, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    if-nez p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->i()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5

    move-result v10

    if-nez v10, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11

    :try_start_3
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_13

    :try_start_4
    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_15

    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12

    if-eqz v0, :cond_0

    :try_start_7
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_16

    :try_start_8
    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_9
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->e(J)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_4
    if-eqz v9, :cond_5

    new-instance v0, Lcom/appyet/mobile/manager/ProgressNotificationManager;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, Lcom/appyet/mobile/manager/ProgressNotificationManager;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const-class v2, Lcom/appyet/mobile/service/SyncService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_5
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/appyet/mobile/manager/bl;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v7, Lcom/appyet/mobile/manager/bl;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz v9, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const v4, 0x7f0b0062

    invoke-virtual {v3, v4}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/bl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/appyet/mobile/e/e;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    :cond_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FileCache;

    iget-boolean v2, p0, Lcom/appyet/mobile/manager/bl;->i:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_5

    if-nez v2, :cond_9

    :try_start_a
    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/appyet/mobile/manager/d;

    iget-object v4, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v3, p0, v4, v0}, Lcom/appyet/mobile/manager/d;-><init>(Lcom/appyet/mobile/manager/bl;Lcom/appyet/mobile/context/ApplicationContext;Lcom/appyet/mobile/data/FileCache;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    :cond_7
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    :try_start_e
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    :try_start_f
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_17

    if-eqz v0, :cond_8

    :try_start_11
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_18

    :try_start_12
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1a

    :try_start_13
    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1b

    const/4 v0, 0x0

    :try_start_14
    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1c

    :cond_8
    :try_start_15
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_19

    if-eqz v0, :cond_0

    :try_start_16
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1d

    :try_start_17
    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :cond_9
    :try_start_18
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v1, 0x708

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->k:Ljava/util/concurrent/ArrayBlockingQueue;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_5

    :try_start_19
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    if-eqz v0, :cond_a

    :try_start_1a
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a

    :try_start_1b
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    :try_start_1c
    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d

    const/4 v0, 0x0

    :try_start_1d
    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e

    :cond_a
    :try_start_1e
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b

    if-eqz v0, :cond_0

    :try_start_1f
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f

    :try_start_20
    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_b
    :goto_4
    throw v0

    :catchall_0
    move-exception v0

    :try_start_21
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    :cond_c
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8

    goto :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_2

    :catch_c
    move-exception v0

    goto/16 :goto_2

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto/16 :goto_2

    :catch_f
    move-exception v0

    goto/16 :goto_2

    :catch_10
    move-exception v0

    goto/16 :goto_2

    :catch_11
    move-exception v0

    goto/16 :goto_2

    :catch_12
    move-exception v0

    goto/16 :goto_2

    :catch_13
    move-exception v0

    goto/16 :goto_2

    :catch_14
    move-exception v0

    goto/16 :goto_2

    :catch_15
    move-exception v0

    goto/16 :goto_2

    :catch_16
    move-exception v0

    goto/16 :goto_2

    :catch_17
    move-exception v0

    goto/16 :goto_2

    :catch_18
    move-exception v0

    goto/16 :goto_2

    :catch_19
    move-exception v0

    goto/16 :goto_2

    :catch_1a
    move-exception v0

    goto/16 :goto_2

    :catch_1b
    move-exception v0

    goto/16 :goto_2

    :catch_1c
    move-exception v0

    goto/16 :goto_2

    :catch_1d
    move-exception v0

    goto/16 :goto_2
.end method

.method private a(Lcom/appyet/mobile/data/Feed;)Z
    .locals 13

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/appyet/mobile/manager/bo;->b(J)Lcom/appyet/mobile/data/Feed;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Feed;->setStreamHash(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getImageLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getImageLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getImageLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getImageLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Feed;->setImageLink(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getPubDateString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getPubDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Feed;->setPubDateString(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedType()Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedType()Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    move-result-object v0

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getFeedType()Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed$FeedTypeEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedType()Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Feed;->setFeedType(Lcom/appyet/mobile/data/Feed$FeedTypeEnum;)V

    :cond_3
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Feed;->setEncoding(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Feed;->setWebLink(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getImageLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getImageLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Feed;->setImageLink(Ljava/lang/String;)V

    new-instance v0, Lcom/appyet/mobile/data/FileCache;

    invoke-direct {v0}, Lcom/appyet/mobile/data/FileCache;-><init>()V

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getCacheGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FileCache;->setCacheGuid(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FileCache;->setDownloadAttempt(Ljava/lang/Integer;)V

    sget-object v1, Lcom/appyet/mobile/data/FileCache$DownloadStatusEnum;->Pending:Lcom/appyet/mobile/data/FileCache$DownloadStatusEnum;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FileCache;->setDownloadStatus(Lcom/appyet/mobile/data/FileCache$DownloadStatusEnum;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getImageLinkMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FileCache;->setFileCacheName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getImageLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FileCache;->setFileLink(Ljava/lang/String;)V

    sget-object v1, Lcom/appyet/mobile/data/FileCache$FileTypeEnum;->Image:Lcom/appyet/mobile/data/FileCache$FileTypeEnum;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FileCache;->setFileType(Lcom/appyet/mobile/data/FileCache$FileTypeEnum;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/data/FileCache;)Z

    :cond_8
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHTTPETag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Feed;->setHTTPETag(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHTTPLastModified()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Feed;->setHTTPLastModified(Ljava/lang/String;)V

    if-eqz v2, :cond_a

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Feed;->setSyncDate(Ljava/util/Date;)V

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getPubDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Feed;->setPubDate(Ljava/util/Date;)V

    :cond_9
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/manager/bo;->d(Lcom/appyet/mobile/data/Feed;)Z

    :cond_a
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/manager/bo;->c(Lcom/appyet/mobile/data/Feed;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/data/Feed;->setPubDate(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getPubDateString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getPubDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setPubDateString(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    :cond_d
    :try_start_3
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    if-nez v1, :cond_17

    :cond_e
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v9, "video/quicktime"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v9, "video"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v9, "audio"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v9, "image"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<div><img src=\'"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\'/></div>"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setDescription(Ljava/lang/String;)V

    :cond_f
    :goto_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureLink(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V

    :cond_10
    :goto_6
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0xa

    const/16 v10, 0x20

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const-string v9, "(\\<!--.*?-->|\\<style.*?</style>|\\<.*?>)"

    const-string v10, " "

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x12c

    if-le v9, v10, :cond_11

    const/4 v9, 0x0

    const/16 v10, 0x12c

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_11
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setSnippet(Ljava/lang/String;)V

    :goto_7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setCacheGuid(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getIsDownloadNewArticle()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setArticleStatus(Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V

    :cond_12
    invoke-virtual {v3}, Lcom/appyet/mobile/data/Feed;->getIsDownloadNewEnclosure()Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureStatus(Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    :cond_13
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    const-string v10, "(?s)<style.*?</style>"

    const-string v11, " "

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "<img src=\"http://feeds.feedburner.com"

    const-string v10, "<rm src=\""

    invoke-static {v1, v9, v10}, Lcom/appyet/mobile/e/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "<a href=\"http://feedads.g.doubleclick.net"

    const-string v10, "<rm href=\""

    invoke-static {v1, v9, v10}, Lcom/appyet/mobile/e/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "<img src=\"http://feedads.g.doubleclick.net"

    const-string v10, "<rm src=\""

    invoke-static {v1, v9, v10}, Lcom/appyet/mobile/e/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setDescription(Ljava/lang/String;)V

    :cond_14
    sget-object v1, Lcom/appyet/mobile/b/j;->a:Lcom/appyet/mobile/b/j;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/appyet/mobile/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_15

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setPubDate(Ljava/util/Date;)V

    :cond_15
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setCreatedDate(Ljava/util/Date;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "\t"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "\n"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setTitle(Ljava/lang/String;)V

    :cond_16
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    :cond_17
    :try_start_5
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v9, "mp3"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    const-string v9, "ogg"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    const-string v9, "wav"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    const-string v9, "m4a"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    const-string v9, "audio"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1c

    :cond_18
    const-string v1, "audio/mpeg"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V

    :cond_19
    :goto_8
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v9

    const-string v1, "."

    invoke-virtual {v9, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v1, 0x0

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1a

    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :cond_1a
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    const-string v9, "mp3"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1b

    const-string v9, "ogg"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1b

    const-string v9, "wav"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1b

    const-string v9, "m4a"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1b

    const-string v9, "audio"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_20

    :cond_1b
    const-string v1, "audio/mpeg"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    :catch_2
    move-exception v1

    :try_start_6
    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_4

    :cond_1c
    :try_start_7
    const-string v9, "avi"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1d

    const-string v9, "mkv"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1d

    const-string v9, "mp4"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1d

    const-string v9, "3gp"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1d

    const-string v9, "video"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1e

    :cond_1d
    const-string v1, "video/avi"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1e
    const-string v9, "jpg"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1f

    const-string v9, "jpeg"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1f

    const-string v9, "gif"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1f

    const-string v9, "png"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_1f
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_20
    const-string v9, "avi"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_21

    const-string v9, "mkv"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_21

    const-string v9, "mp4"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_21

    const-string v9, "3gp"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_21

    const-string v9, "video"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_22

    :cond_21
    const-string v1, "video/avi"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_22
    const-string v9, "jpg"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_23

    const-string v9, "jpeg"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_23

    const-string v9, "gif"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_23

    const-string v9, "png"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_23
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    :cond_24
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<img src=\'"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\'/>"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_25
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureLink(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_26
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setSnippet(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_27
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getUniqueKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setFeedItemId(Ljava/lang/Long;)V

    goto/16 :goto_3

    :cond_28
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, v6}, Lcom/appyet/mobile/manager/bo;->a(Ljava/util/List;)Z

    invoke-virtual {p0, v6}, Lcom/appyet/mobile/manager/bl;->a(Ljava/util/List;)V

    iget v0, p0, Lcom/appyet/mobile/manager/bl;->d:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/appyet/mobile/manager/bl;->d:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/manager/bl;->e:I

    :cond_29
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2a

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_2b
    const/4 v1, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2c
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsStar()Z

    move-result v9

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsDeleted()Z

    move-result v10

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z

    move-result v11

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v3

    sget-object v12, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v3, v12, :cond_2f

    const/4 v3, 0x1

    :goto_b
    if-nez v10, :cond_2e

    if-nez v9, :cond_2c

    iget-object v9, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v9, v9, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v9}, Lcom/appyet/mobile/manager/f;->ap()Z

    move-result v9

    if-eqz v9, :cond_2d

    if-eqz v11, :cond_2c

    :cond_2d
    if-nez v3, :cond_2c

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsQueued()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_2e
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->aq()I

    move-result v0

    if-lez v0, :cond_30

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->aq()I

    move-result v1

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v3

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_31

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_a

    :cond_2f
    const/4 v3, 0x0

    goto :goto_b

    :cond_30
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :cond_31
    move v1, v0

    goto :goto_a

    :cond_32
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    const/4 v0, 0x1

    :goto_c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/appyet/mobile/manager/bl;->f:I

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v1, v6}, Lcom/appyet/mobile/manager/bo;->c(Ljava/util/List;)Z

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/appyet/mobile/manager/bo;->g(J)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :cond_33
    move v0, v2

    goto :goto_c
.end method

.method private a(Lcom/appyet/mobile/data/Feed;Lcom/appyet/mobile/data/FeedItem;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/appyet/mobile/c/c;

    invoke-direct {v3}, Lcom/appyet/mobile/c/c;-><init>()V

    invoke-virtual {v3, v1}, Lcom/appyet/mobile/c/c;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHttpAuthUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/appyet/mobile/c/c;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getHttpAuthPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/appyet/mobile/c/c;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v1, v3}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/c;)Lcom/appyet/mobile/c/d;

    move-result-object v2

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    iget-object v3, v2, Lcom/appyet/mobile/c/d;->b:Ljava/io/InputStream;

    invoke-virtual {p2}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLinkMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/appyet/mobile/manager/ch;->a(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {p2}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v1, v3, v4}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    throw v0
.end method

.method static synthetic a(Lcom/appyet/mobile/manager/bl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/appyet/mobile/manager/bl;Lcom/appyet/mobile/data/Feed;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/appyet/mobile/manager/bl;->a(Lcom/appyet/mobile/data/Feed;)Z

    move-result v0

    return v0
.end method

.method protected static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "api.tweetmeme.com/imagebutton.gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "share-buttons/fb.jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "share-buttons/diggme.png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "share-buttons/stumbleupon.png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wordpress.com/1.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wordpress.com/b.gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "blogger.googleusercontent.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feeds.feedburner.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "www.assoc-amazon.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "doubleclick.net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "statcounter.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pheedo.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/appyet/mobile/manager/bl;)I
    .locals 2

    iget v0, p0, Lcom/appyet/mobile/manager/bl;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appyet/mobile/manager/bl;->h:I

    return v0
.end method

.method static synthetic b(Lcom/appyet/mobile/manager/bl;Lcom/appyet/mobile/data/Feed;)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFavIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/ch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/appyet/mobile/manager/ch;->a(Ljava/io/InputStream;Ljava/lang/String;)Z

    iget v0, p0, Lcom/appyet/mobile/manager/bl;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appyet/mobile/manager/bl;->h:I

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/appyet/mobile/manager/bl;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v1, p1}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->h:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v1, v2, p1, v0}, Lcom/appyet/mobile/manager/ch;->b(Lcom/appyet/mobile/manager/ch;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v1, v2, p1, v0}, Lcom/appyet/mobile/manager/ch;->b(Lcom/appyet/mobile/manager/ch;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private b(Ljava/lang/Long;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "feedid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "forced"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/context/ApplicationContext;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private c(Ljava/lang/Long;Z)V
    .locals 11

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->at()Z

    move-result v9

    iput-object v1, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    if-nez p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->c()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4

    move-result v10

    if-nez v10, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11

    :try_start_3
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_13

    :try_start_4
    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_15

    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12

    if-eqz v0, :cond_0

    :try_start_7
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_16

    :try_start_8
    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_9
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_4
    if-eqz v9, :cond_5

    new-instance v0, Lcom/appyet/mobile/manager/ProgressNotificationManager;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, Lcom/appyet/mobile/manager/ProgressNotificationManager;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const-class v2, Lcom/appyet/mobile/service/SyncService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_5
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->i()Lcom/appyet/mobile/context/k;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/context/k;->a:Lcom/appyet/mobile/context/k;

    if-ne v0, v1, :cond_8

    const/16 v0, 0x32

    if-le v10, v0, :cond_8

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/appyet/mobile/manager/bl;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v7, Lcom/appyet/mobile/manager/bl;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    :goto_3
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz v9, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const v4, 0x7f0b00cf

    invoke-virtual {v3, v4}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/bl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/appyet/mobile/e/e;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    :cond_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    iget-boolean v2, p0, Lcom/appyet/mobile/manager/bl;->i:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4

    if-nez v2, :cond_c

    :try_start_a
    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/appyet/mobile/manager/b;

    iget-object v4, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v3, p0, v4, v0}, Lcom/appyet/mobile/manager/b;-><init>(Lcom/appyet/mobile/manager/bl;Lcom/appyet/mobile/context/ApplicationContext;Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    :cond_7
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :cond_8
    :try_start_e
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/appyet/mobile/manager/bl;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v7, Lcom/appyet/mobile/manager/bl;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v0

    :try_start_f
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_17

    if-eqz v0, :cond_9

    :try_start_11
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_18

    :try_start_12
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1a

    :try_start_13
    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1b

    const/4 v0, 0x0

    :try_start_14
    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1c

    :cond_9
    :try_start_15
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_19

    if-eqz v0, :cond_0

    :try_start_16
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1d

    :try_start_17
    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_2

    :catch_6
    move-exception v0

    :try_start_18
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_4

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_19
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    :cond_a
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    :cond_b
    :goto_5
    throw v0

    :cond_c
    :try_start_1a
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v1, 0x708

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/manager/bl;->b(Ljava/lang/Long;Z)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_1a} :catch_4

    :try_start_1b
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    if-eqz v0, :cond_d

    :try_start_1c
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a

    :try_start_1d
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    :try_start_1e
    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_d

    const/4 v0, 0x0

    :try_start_1f
    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_e

    :cond_d
    :try_start_20
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_b

    if-eqz v0, :cond_0

    :try_start_21
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_f

    :try_start_22
    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_5

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_2

    :catch_c
    move-exception v0

    goto/16 :goto_2

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto/16 :goto_2

    :catch_f
    move-exception v0

    goto/16 :goto_2

    :catch_10
    move-exception v0

    goto/16 :goto_2

    :catch_11
    move-exception v0

    goto/16 :goto_2

    :catch_12
    move-exception v0

    goto/16 :goto_2

    :catch_13
    move-exception v0

    goto/16 :goto_2

    :catch_14
    move-exception v0

    goto/16 :goto_2

    :catch_15
    move-exception v0

    goto/16 :goto_2

    :catch_16
    move-exception v0

    goto/16 :goto_2

    :catch_17
    move-exception v0

    goto/16 :goto_2

    :catch_18
    move-exception v0

    goto/16 :goto_2

    :catch_19
    move-exception v0

    goto/16 :goto_2

    :catch_1a
    move-exception v0

    goto/16 :goto_2

    :catch_1b
    move-exception v0

    goto/16 :goto_2

    :catch_1c
    move-exception v0

    goto/16 :goto_2

    :catch_1d
    move-exception v0

    goto/16 :goto_2
.end method

.method static synthetic d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    return-object v0
.end method

.method private d(Ljava/lang/Long;Z)V
    .locals 10

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bv;->a()Lcom/appyet/mobile/manager/ck;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/manager/ck;->a:Lcom/appyet/mobile/manager/ck;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->at()Z

    move-result v2

    iput-object v3, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    if-nez p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->e()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4

    move-result v4

    if-nez v4, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :try_start_3
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11

    :try_start_4
    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13

    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10

    if-eqz v0, :cond_0

    :try_start_7
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_14

    :try_start_8
    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_9
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/manager/bo;->b(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    new-instance v0, Lcom/appyet/mobile/manager/ProgressNotificationManager;

    iget-object v5, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v6, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v6}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v4, v6}, Lcom/appyet/mobile/manager/ProgressNotificationManager;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const-class v6, Lcom/appyet/mobile/service/SyncService;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v5, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Lcom/appyet/mobile/context/ApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_5
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    iget-boolean v6, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v6, v6, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v6}, Lcom/appyet/mobile/manager/f;->ar()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->a()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_7
    add-int/lit8 v1, v1, 0x1

    if-eqz v2, :cond_8

    iget-object v6, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const v9, 0x7f0b00d4

    invoke-virtual {v8, v9}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFeed()Lcom/appyet/mobile/data/Feed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/appyet/mobile/manager/bl;->a(Ljava/util/List;J)Lcom/appyet/mobile/data/Feed;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/appyet/mobile/manager/bl;->a(Lcom/appyet/mobile/data/Feed;Lcom/appyet/mobile/data/FeedItem;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getIsQueued()Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/appyet/mobile/data/FeedItem;->setIsQueued(Z)V

    iget-object v6, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v6, v6, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/data/FeedItem;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_3

    :catch_1
    move-exception v0

    :try_start_a
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    :cond_9
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :cond_a
    :try_start_c
    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/manager/bl;->b(Ljava/lang/Long;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_4

    :try_start_d
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    if-eqz v0, :cond_b

    :try_start_e
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    :try_start_f
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    :try_start_10
    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    const/4 v0, 0x0

    :try_start_11
    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    :cond_b
    :try_start_12
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    if-eqz v0, :cond_0

    :try_start_13
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    :try_start_14
    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    :try_start_15
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :try_start_16
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_15

    if-eqz v0, :cond_c

    :try_start_17
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_16

    :try_start_18
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    :try_start_19
    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    const/4 v0, 0x0

    :try_start_1a
    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    :cond_c
    :try_start_1b
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_17

    if-eqz v0, :cond_0

    :try_start_1c
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1b

    :try_start_1d
    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_2

    :catch_6
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_d
    :goto_4
    throw v0

    :catchall_0
    move-exception v0

    :try_start_1e
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    :cond_e
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6

    goto :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v0

    goto/16 :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_2

    :catch_c
    move-exception v0

    goto/16 :goto_2

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto/16 :goto_2

    :catch_f
    move-exception v0

    goto/16 :goto_2

    :catch_10
    move-exception v0

    goto/16 :goto_2

    :catch_11
    move-exception v0

    goto/16 :goto_2

    :catch_12
    move-exception v0

    goto/16 :goto_2

    :catch_13
    move-exception v0

    goto/16 :goto_2

    :catch_14
    move-exception v0

    goto/16 :goto_2

    :catch_15
    move-exception v0

    goto/16 :goto_2

    :catch_16
    move-exception v0

    goto/16 :goto_2

    :catch_17
    move-exception v0

    goto/16 :goto_2

    :catch_18
    move-exception v0

    goto/16 :goto_2

    :catch_19
    move-exception v0

    goto/16 :goto_2

    :catch_1a
    move-exception v0

    goto/16 :goto_2

    :catch_1b
    move-exception v0

    goto/16 :goto_2
.end method

.method static synthetic e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private e(Ljava/lang/Long;Z)V
    .locals 11

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->at()Z

    move-result v9

    iput-object v1, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    if-nez p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->f()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5

    move-result v10

    if-nez v10, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11

    :try_start_3
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_13

    :try_start_4
    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_15

    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12

    if-eqz v0, :cond_0

    :try_start_7
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_16

    :try_start_8
    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/appyet/mobile/manager/bo;->b(J)Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v0

    goto :goto_1

    :cond_4
    if-eqz v9, :cond_5

    new-instance v0, Lcom/appyet/mobile/manager/ProgressNotificationManager;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, Lcom/appyet/mobile/manager/ProgressNotificationManager;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const-class v2, Lcom/appyet/mobile/service/SyncService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_5
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/appyet/mobile/manager/bl;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v7, Lcom/appyet/mobile/manager/bl;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz v9, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const v4, 0x7f0b00cc

    invoke-virtual {v3, v4}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/bl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/appyet/mobile/e/e;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    :cond_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-boolean v2, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    if-nez v2, :cond_b

    if-nez p2, :cond_8

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getIsSkipAutoUpdate()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_8
    const/4 v2, 0x0

    iput v2, p0, Lcom/appyet/mobile/manager/bl;->e:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_5

    :try_start_a
    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/appyet/mobile/manager/cj;

    iget-object v4, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v3, p0, v4, v0}, Lcom/appyet/mobile/manager/cj;-><init>(Lcom/appyet/mobile/manager/bl;Lcom/appyet/mobile/context/ApplicationContext;Lcom/appyet/mobile/data/Feed;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    :cond_9
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    :try_start_e
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    :try_start_f
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_17

    if-eqz v0, :cond_a

    :try_start_11
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_18

    :try_start_12
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1a

    :try_start_13
    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1b

    const/4 v0, 0x0

    :try_start_14
    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1c

    :cond_a
    :try_start_15
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_19

    if-eqz v0, :cond_0

    :try_start_16
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1d

    :try_start_17
    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :cond_b
    :try_start_18
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v1, 0x708

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->k:Ljava/util/concurrent/ArrayBlockingQueue;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_5

    :try_start_19
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    if-eqz v0, :cond_c

    :try_start_1a
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a

    :try_start_1b
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    :try_start_1c
    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d

    const/4 v0, 0x0

    :try_start_1d
    iput-object v0, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e

    :cond_c
    :try_start_1e
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b

    if-eqz v0, :cond_0

    :try_start_1f
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f

    :try_start_20
    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_d
    :goto_4
    throw v0

    :catchall_0
    move-exception v0

    :try_start_21
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appyet/mobile/manager/bl;->n:Landroid/content/Intent;

    :cond_e
    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8

    goto :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_2

    :catch_c
    move-exception v0

    goto/16 :goto_2

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto/16 :goto_2

    :catch_f
    move-exception v0

    goto/16 :goto_2

    :catch_10
    move-exception v0

    goto/16 :goto_2

    :catch_11
    move-exception v0

    goto/16 :goto_2

    :catch_12
    move-exception v0

    goto/16 :goto_2

    :catch_13
    move-exception v0

    goto/16 :goto_2

    :catch_14
    move-exception v0

    goto/16 :goto_2

    :catch_15
    move-exception v0

    goto/16 :goto_2

    :catch_16
    move-exception v0

    goto/16 :goto_2

    :catch_17
    move-exception v0

    goto/16 :goto_2

    :catch_18
    move-exception v0

    goto/16 :goto_2

    :catch_19
    move-exception v0

    goto/16 :goto_2

    :catch_1a
    move-exception v0

    goto/16 :goto_2

    :catch_1b
    move-exception v0

    goto/16 :goto_2

    :catch_1c
    move-exception v0

    goto/16 :goto_2

    :catch_1d
    move-exception v0

    goto/16 :goto_2
.end method

.method static synthetic f(Lcom/appyet/mobile/manager/bl;)I
    .locals 2

    iget v0, p0, Lcom/appyet/mobile/manager/bl;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appyet/mobile/manager/bl;->g:I

    return v0
.end method

.method static synthetic g(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/manager/bl;->d:I

    return v0
.end method

.method public final a(JZ)V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/manager/cn;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/appyet/mobile/manager/cn;-><init>(Lcom/appyet/mobile/manager/bl;Ljava/lang/Long;ZZZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/cn;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;Z)V
    .locals 11

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/context/ApplicationContext;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/manager/bl;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/manager/bl;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/manager/bl;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/manager/bl;->h:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appyet/mobile/manager/f;->b(J)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->e()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-le v0, v5, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/context/ApplicationContext;->a(I)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v0

    if-gtz v0, :cond_0

    iput-boolean v10, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appyet/mobile/manager/f;->b(J)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Lcom/appyet/mobile/manager/i;->a(Lcom/appyet/mobile/context/ApplicationContext;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/bu;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bv;->a()Lcom/appyet/mobile/manager/ck;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->aA()Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/appyet/mobile/manager/ck;->b:Lcom/appyet/mobile/manager/ck;

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/manager/bl;->e(Ljava/lang/Long;Z)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bv;->a()Lcom/appyet/mobile/manager/ck;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->aA()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/appyet/mobile/manager/ck;->b:Lcom/appyet/mobile/manager/ck;

    if-ne v0, v2, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/manager/bl;->c(Ljava/lang/Long;Z)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bv;->a()Lcom/appyet/mobile/manager/ck;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->aB()Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/appyet/mobile/manager/ck;->b:Lcom/appyet/mobile/manager/ck;

    if-ne v0, v2, :cond_5

    invoke-direct {p0, p1}, Lcom/appyet/mobile/manager/bl;->a(Ljava/lang/Long;)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bv;->a()Lcom/appyet/mobile/manager/ck;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->aC()Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/appyet/mobile/manager/ck;->b:Lcom/appyet/mobile/manager/ck;

    if-ne v0, v2, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/manager/bl;->d(Ljava/lang/Long;Z)V

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-boolean v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->a:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->at()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/appyet/mobile/manager/bl;->d:I

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    const v3, 0x1080027

    iget-object v4, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const v5, 0x7f0b01bb

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const-class v5, Lcom/appyet/mobile/activity/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f020005

    iput v4, v2, Landroid/app/Notification;->icon:I

    iget v4, p0, Lcom/appyet/mobile/manager/bl;->d:I

    iput v4, v2, Landroid/app/Notification;->number:I

    iget-object v4, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v5, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const v6, 0x7f0b01bb

    invoke-virtual {v5, v6}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    const v7, 0x7f0b0061

    invoke-virtual {v6, v7}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/appyet/mobile/manager/bl;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->au()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->av()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->defaults:I

    :cond_7
    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->as()Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/app/Notification;->defaults:I

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/appyet/mobile/manager/bl;->b(Ljava/lang/Long;Z)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->s:Lcom/appyet/mobile/manager/bm;

    new-instance v2, Lcom/appyet/mobile/manager/c;

    invoke-direct {v2, v0}, Lcom/appyet/mobile/manager/c;-><init>(Lcom/appyet/mobile/manager/bm;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/manager/c;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->m:Lcom/appyet/mobile/manager/bb;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bb;->a()V

    :cond_a
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->am()I

    move-result v0

    if-gtz v0, :cond_b

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->an()I

    move-result v0

    if-lez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->an()I

    move-result v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->am()I

    move-result v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/f;->al()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/appyet/mobile/manager/bo;->a(IIZ)I

    :cond_c
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/v;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/context/ApplicationContext;->a(I)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v0

    if-gtz v0, :cond_d

    iput-boolean v10, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    :cond_d
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appyet/mobile/manager/f;->b(J)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :cond_e
    :try_start_2
    sget-object v2, Lcom/appyet/mobile/manager/ck;->a:Lcom/appyet/mobile/manager/ck;

    if-eq v0, v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/manager/bl;->e(Ljava/lang/Long;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/context/ApplicationContext;->a(I)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v0

    if-gtz v0, :cond_f

    iput-boolean v10, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    :cond_f
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appyet/mobile/manager/f;->b(J)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :cond_10
    :try_start_4
    sget-object v2, Lcom/appyet/mobile/manager/ck;->a:Lcom/appyet/mobile/manager/ck;

    if-eq v0, v2, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/manager/bl;->c(Ljava/lang/Long;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/context/ApplicationContext;->a(I)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v0

    if-gtz v0, :cond_11

    iput-boolean v10, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    :cond_11
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appyet/mobile/manager/f;->b(J)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :cond_12
    :try_start_6
    sget-object v2, Lcom/appyet/mobile/manager/ck;->a:Lcom/appyet/mobile/manager/ck;

    if-eq v0, v2, :cond_5

    invoke-direct {p0, p1}, Lcom/appyet/mobile/manager/bl;->a(Ljava/lang/Long;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v3}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/context/ApplicationContext;->a(I)V

    iget-object v2, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v2

    if-gtz v2, :cond_13

    iput-boolean v10, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    :cond_13
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/appyet/mobile/manager/f;->b(J)V

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_14
    invoke-static {}, Ljava/lang/System;->gc()V

    throw v0

    :cond_15
    :try_start_7
    sget-object v2, Lcom/appyet/mobile/manager/ck;->a:Lcom/appyet/mobile/manager/ck;

    if-eq v0, v2, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/manager/bl;->d(Ljava/lang/Long;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4
.end method

.method public final a(Ljava/util/List;)V
    .locals 9

    const/4 v8, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/appyet/mobile/data/FileCache;

    invoke-direct {v1}, Lcom/appyet/mobile/data/FileCache;-><init>()V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appyet/mobile/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/appyet/mobile/data/FileCache;->setDownloadAttempt(Ljava/lang/Integer;)V

    sget-object v5, Lcom/appyet/mobile/data/FileCache$DownloadStatusEnum;->Pending:Lcom/appyet/mobile/data/FileCache$DownloadStatusEnum;

    invoke-virtual {v1, v5}, Lcom/appyet/mobile/data/FileCache;->setDownloadStatus(Lcom/appyet/mobile/data/FileCache$DownloadStatusEnum;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/appyet/mobile/data/FileCache;->setFileLink(Ljava/lang/String;)V

    sget-object v5, Lcom/appyet/mobile/data/FileCache$FileTypeEnum;->Image:Lcom/appyet/mobile/data/FileCache$FileTypeEnum;

    invoke-virtual {v1, v5}, Lcom/appyet/mobile/data/FileCache;->setFileType(Lcom/appyet/mobile/data/FileCache$FileTypeEnum;)V

    invoke-virtual {v1, v4}, Lcom/appyet/mobile/data/FileCache;->setFileCacheName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getCacheGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/appyet/mobile/data/FileCache;->setCacheGuid(Ljava/lang/String;)V

    sget-object v4, Lcom/appyet/mobile/data/FileCache$FileTypeEnum;->Thumbnail:Lcom/appyet/mobile/data/FileCache$FileTypeEnum;

    invoke-virtual {v1, v4}, Lcom/appyet/mobile/data/FileCache;->setFileType(Lcom/appyet/mobile/data/FileCache$FileTypeEnum;)V

    iget-object v4, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v4, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/data/FileCache;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appyet/mobile/e/b;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    :goto_1
    return-void

    :cond_3
    :try_start_0
    sget-object v5, Lcom/appyet/mobile/b/j;->a:Lcom/appyet/mobile/b/j;

    invoke-virtual {v5, v1}, Lcom/appyet/mobile/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "http://"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "https://"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "//"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    if-eqz v5, :cond_2

    :try_start_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v5, Lcom/appyet/mobile/data/FileCache;

    invoke-direct {v5}, Lcom/appyet/mobile/data/FileCache;-><init>()V

    invoke-static {v1}, Lcom/appyet/mobile/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/appyet/mobile/data/FileCache;->setDownloadAttempt(Ljava/lang/Integer;)V

    sget-object v7, Lcom/appyet/mobile/data/FileCache$DownloadStatusEnum;->Pending:Lcom/appyet/mobile/data/FileCache$DownloadStatusEnum;

    invoke-virtual {v5, v7}, Lcom/appyet/mobile/data/FileCache;->setDownloadStatus(Lcom/appyet/mobile/data/FileCache$DownloadStatusEnum;)V

    invoke-virtual {v5, v1}, Lcom/appyet/mobile/data/FileCache;->setFileLink(Ljava/lang/String;)V

    sget-object v7, Lcom/appyet/mobile/data/FileCache$FileTypeEnum;->Image:Lcom/appyet/mobile/data/FileCache$FileTypeEnum;

    invoke-virtual {v5, v7}, Lcom/appyet/mobile/data/FileCache;->setFileType(Lcom/appyet/mobile/data/FileCache$FileTypeEnum;)V

    invoke-virtual {v5, v6}, Lcom/appyet/mobile/data/FileCache;->setFileCacheName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getCacheGuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/appyet/mobile/data/FileCache;->setCacheGuid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setThumbnail(Ljava/lang/String;)V

    sget-object v1, Lcom/appyet/mobile/data/FileCache$FileTypeEnum;->Thumbnail:Lcom/appyet/mobile/data/FileCache$FileTypeEnum;

    invoke-virtual {v5, v1}, Lcom/appyet/mobile/data/FileCache;->setFileType(Lcom/appyet/mobile/data/FileCache$FileTypeEnum;)V

    :cond_5
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/appyet/mobile/manager/bl;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/appyet/mobile/manager/bl;->h:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/manager/bo;->b(Ljava/util/List;)Z

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/manager/bo;->l(Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method public final a(ZZZ)V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/appyet/mobile/manager/cn;

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/appyet/mobile/manager/cn;-><init>(Lcom/appyet/mobile/manager/bl;Ljava/lang/Long;ZZZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/cn;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->c:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/mobile/manager/bl;->i:Z

    return-void
.end method

.method public final d()Lcom/appyet/mobile/manager/ProgressNotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bl;->o:Lcom/appyet/mobile/manager/ProgressNotificationManager;

    return-object v0
.end method
