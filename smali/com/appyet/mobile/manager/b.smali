.class final Lcom/appyet/mobile/manager/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/appyet/mobile/data/FeedItem;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;

.field private synthetic c:Lcom/appyet/mobile/manager/bl;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/bl;Lcom/appyet/mobile/context/ApplicationContext;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iput-object p3, p0, Lcom/appyet/mobile/manager/b;->a:Lcom/appyet/mobile/data/FeedItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v1, 0x0

    const v8, 0x7f0b00cf

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->a(Lcom/appyet/mobile/manager/bl;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bv;->a()Lcom/appyet/mobile/manager/ck;

    move-result-object v0

    sget-object v2, Lcom/appyet/mobile/manager/ck;->a:Lcom/appyet/mobile/manager/ck;

    if-eq v0, v2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v2, p0, Lcom/appyet/mobile/manager/b;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v0, v2, v3}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6

    invoke-static {v1}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v3, v8}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

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

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/appyet/mobile/c/c;

    invoke-direct {v0}, Lcom/appyet/mobile/c/c;-><init>()V

    iget-object v2, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->i()Lcom/appyet/mobile/context/k;

    move-result-object v2

    sget-object v3, Lcom/appyet/mobile/context/k;->b:Lcom/appyet/mobile/context/k;

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.com/gwt/x?u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/c/c;->e(Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/c;)Lcom/appyet/mobile/c/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_2
    iget v0, v2, Lcom/appyet/mobile/c/d;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v3, 0x1f8

    if-ne v0, v3, :cond_4

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v3, v8}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

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

    goto/16 :goto_1

    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.instapaper.com/m?u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/c/c;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v2, v3, v4}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v1}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v3, v8}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

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

    goto/16 :goto_1

    :cond_4
    :try_start_5
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/d;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v2, Lcom/appyet/mobile/c/d;->c:Ljava/lang/String;

    const-string v3, "text/html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v2, Lcom/appyet/mobile/c/d;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/appyet/mobile/e/g;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    iget-object v0, v2, Lcom/appyet/mobile/c/d;->d:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/appyet/mobile/c/d;->d:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v2, Lcom/appyet/mobile/c/d;->d:Ljava/lang/String;

    :cond_5
    :goto_4
    invoke-static {v3, v0}, Lcom/appyet/mobile/e/g;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v3, "<div id=\"story\">"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "<div id=\"footer\">"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v3, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_9

    if-ltz v4, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    if-ge v3, v4, :cond_9

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0, v3, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/data/FeedItem;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/appyet/mobile/e/b;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3

    if-nez v0, :cond_a

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v3, v8}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

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

    goto/16 :goto_1

    :cond_7
    :try_start_6
    invoke-static {v3}, Lcom/appyet/mobile/e/g;->a([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_8
    const-string v0, "utf-8"

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v0, v3, v4}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :cond_a
    :try_start_7
    sget-object v1, Lcom/appyet/mobile/b/j;->a:Lcom/appyet/mobile/b/j;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "http://"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "https://"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "//"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->a(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_5

    move-result v5

    if-eqz v5, :cond_6

    :try_start_8
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_5

    :try_start_9
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

    iget-object v6, p0, Lcom/appyet/mobile/manager/b;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v6}, Lcom/appyet/mobile/data/FeedItem;->getCacheGuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/appyet/mobile/data/FileCache;->setCacheGuid(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/appyet/mobile/manager/b;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v6}, Lcom/appyet/mobile/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/appyet/mobile/manager/b;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v6, v1}, Lcom/appyet/mobile/data/FeedItem;->setThumbnail(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v6, p0, Lcom/appyet/mobile/manager/b;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v6}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Ljava/lang/String;)V

    sget-object v0, Lcom/appyet/mobile/data/FileCache$FileTypeEnum;->Thumbnail:Lcom/appyet/mobile/data/FileCache$FileTypeEnum;

    invoke-virtual {v5, v0}, Lcom/appyet/mobile/data/FileCache;->setFileType(Lcom/appyet/mobile/data/FileCache$FileTypeEnum;)V

    :cond_c
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->b(Lcom/appyet/mobile/manager/bl;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_6

    :catch_2
    move-exception v0

    :try_start_a
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_6

    :catch_3
    move-exception v0

    :goto_7
    :try_start_b
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v3, v8}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

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

    goto/16 :goto_1

    :catch_4
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_6

    :catch_5
    move-exception v0

    :try_start_d
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    :goto_8
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v2}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v4, v8}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v4}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v4}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v4}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

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

    :cond_d
    throw v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/manager/bo;->b(Ljava/util/List;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_3

    :cond_f
    :goto_9
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v0}, Lcom/appyet/mobile/manager/bl;->d(Lcom/appyet/mobile/manager/bl;)Lcom/appyet/mobile/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v1}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v3, v8}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->e(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

    invoke-static {v3}, Lcom/appyet/mobile/manager/bl;->c(Lcom/appyet/mobile/manager/bl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/b;->c:Lcom/appyet/mobile/manager/bl;

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

    goto/16 :goto_1

    :cond_10
    :try_start_f
    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/manager/b;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v0, v1, v3}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V

    goto/16 :goto_9

    :cond_11
    iget-object v0, p0, Lcom/appyet/mobile/manager/b;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/manager/b;->a:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v0, v1, v3}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_8

    :catch_6
    move-exception v0

    move-object v2, v1

    goto/16 :goto_7
.end method
