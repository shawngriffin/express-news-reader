.class final Lcom/appyet/mobile/manager/cj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/appyet/mobile/data/Feed;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;

.field private synthetic c:Lcom/appyet/mobile/manager/bl;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bl;Lcom/appyet/mobile/context/ApplicationContext;Lcom/appyet/mobile/data/Feed;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appyet/mobile/manager/cj;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iput-object p3, p0, Lcom/appyet/mobile/manager/cj;->a:Lcom/appyet/mobile/data/Feed;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const v5, 0x7f0b00cc

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->a(Lcom/appyet/mobile/manager/bl;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedType()Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/Feed$FeedTypeEnum;->RSS:Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/appyet/mobile/a/x;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/mobile/a/x;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/a/x;->a(Lcom/appyet/mobile/data/Feed;)Lcom/appyet/mobile/a/af;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->b()Lcom/appyet/mobile/a/av;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/a/av;->b:Lcom/appyet/mobile/a/av;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->a()Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->a()Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedItems()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_3
    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->f(Lcom/appyet/mobile/manager/bl;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v3, v5}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v4}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

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

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedType()Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/Feed$FeedTypeEnum;->ATOM:Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    if-ne v0, v1, :cond_5

    new-instance v0, Lcom/appyet/mobile/a/w;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/mobile/a/w;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/a/w;->a(Lcom/appyet/mobile/data/Feed;)Lcom/appyet/mobile/a/af;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedType()Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/Feed$FeedTypeEnum;->RDF:Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    if-ne v0, v1, :cond_6

    new-instance v0, Lcom/appyet/mobile/a/bj;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/mobile/a/bj;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/a/bj;->a(Lcom/appyet/mobile/data/Feed;)Lcom/appyet/mobile/a/af;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    new-instance v0, Lcom/appyet/mobile/a/x;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/mobile/a/x;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/a/x;->a(Lcom/appyet/mobile/data/Feed;)Lcom/appyet/mobile/a/af;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->b()Lcom/appyet/mobile/a/av;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/a/av;->a:Lcom/appyet/mobile/a/av;

    if-ne v1, v2, :cond_7

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->a()Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/Feed$FeedTypeEnum;->RSS:Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setFeedType(Lcom/appyet/mobile/data/Feed$FeedTypeEnum;)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->b()Lcom/appyet/mobile/a/av;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/a/av;->b:Lcom/appyet/mobile/a/av;

    if-ne v1, v2, :cond_9

    :cond_8
    new-instance v0, Lcom/appyet/mobile/a/w;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/mobile/a/w;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/a/w;->a(Lcom/appyet/mobile/data/Feed;)Lcom/appyet/mobile/a/af;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->b()Lcom/appyet/mobile/a/av;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/a/av;->a:Lcom/appyet/mobile/a/av;

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->a()Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/Feed$FeedTypeEnum;->ATOM:Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setFeedType(Lcom/appyet/mobile/data/Feed$FeedTypeEnum;)V

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->b()Lcom/appyet/mobile/a/av;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/a/av;->b:Lcom/appyet/mobile/a/av;

    if-ne v1, v2, :cond_2

    :cond_a
    new-instance v0, Lcom/appyet/mobile/a/bj;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/mobile/a/bj;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/a/bj;->a(Lcom/appyet/mobile/data/Feed;)Lcom/appyet/mobile/a/af;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->b()Lcom/appyet/mobile/a/av;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/a/av;->a:Lcom/appyet/mobile/a/av;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->a()Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/Feed$FeedTypeEnum;->RDF:Lcom/appyet/mobile/data/Feed$FeedTypeEnum;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setFeedType(Lcom/appyet/mobile/data/Feed$FeedTypeEnum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->f(Lcom/appyet/mobile/manager/bl;)I

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v3, v5}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v4}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

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

    goto/16 :goto_2

    :cond_b
    :try_start_3
    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->b()Lcom/appyet/mobile/a/av;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/a/av;->c:Lcom/appyet/mobile/a/av;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    if-ne v1, v2, :cond_c

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v3, v5}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v4}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

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

    goto/16 :goto_2

    :cond_c
    :try_start_4
    invoke-virtual {v0}, Lcom/appyet/mobile/a/af;->a()Lcom/appyet/mobile/data/Feed;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setFeedId(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1, v0}, Lcom/appyet/mobile/manager/bl;->a(Lcom/appyet/mobile/manager/bl;Lcom/appyet/mobile/data/Feed;)Z

    move-result v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v2, v0}, Lcom/appyet/mobile/manager/bl;->b(Lcom/appyet/mobile/manager/bl;Lcom/appyet/mobile/data/Feed;)V

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->a:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appyet/mobile/manager/bl;->a(Lcom/appyet/mobile/manager/bl;Ljava/lang/Long;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    :cond_d
    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v3, v5}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v4}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

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

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v3, v5}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v4}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

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

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v2}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appyet/mobile/manager/cj;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v4}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v4}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v4}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/appyet/mobile/manager/cj;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v5}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Lcom/appyet/mobile/e/e;->a(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    :cond_e
    throw v0
.end method
