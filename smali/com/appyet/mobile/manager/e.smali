.class public Lcom/appyet/mobile/manager/e;
.super Ljava/lang/Object;


# static fields
.field private static j:Z

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private C:Z

.field private a:Landroid/media/MediaPlayer;

.field private b:Landroid/media/AudioManager;

.field private c:Landroid/content/Intent;

.field private d:Lcom/appyet/mobile/context/ApplicationContext;

.field private e:Lcom/appyet/mobile/data/FeedItem;

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/Handler;

.field private h:Lcom/appyet/mobile/activity/PlayListActivity;

.field private i:Lcom/appyet/mobile/manager/MediaProgressNotification;

.field private m:Landroid/content/ComponentName;

.field private n:Lcom/appyet/mobile/receiver/CommonReceiver;

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/Runnable;

.field private r:Ljava/lang/Runnable;

.field private s:Landroid/media/MediaPlayer$OnPreparedListener;

.field private t:Landroid/media/MediaPlayer$OnCompletionListener;

.field private u:Landroid/media/MediaPlayer$OnErrorListener;

.field private v:Landroid/media/MediaPlayer$OnInfoListener;

.field private w:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private x:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private y:Landroid/view/View$OnClickListener;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    sget-object v0, Lcom/appyet/mobile/manager/e;->k:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Landroid/media/AudioManager;

    const-string v1, "registerMediaButtonEventReceiver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/appyet/mobile/manager/e;->k:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/appyet/mobile/manager/e;->l:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    const-class v0, Landroid/media/AudioManager;

    const-string v1, "unregisterMediaButtonEventReceiver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/appyet/mobile/manager/e;->l:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/appyet/mobile/wrapper/AudioFocusChangeListenerWrapper;->checkAvailable()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appyet/mobile/manager/e;->j:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sput-boolean v5, Lcom/appyet/mobile/manager/e;->j:Z

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->f:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->g:Landroid/os/Handler;

    new-instance v0, Lcom/appyet/mobile/manager/bk;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bk;-><init>(Lcom/appyet/mobile/manager/e;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->q:Ljava/lang/Runnable;

    new-instance v0, Lcom/appyet/mobile/manager/bi;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bi;-><init>(Lcom/appyet/mobile/manager/e;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->r:Ljava/lang/Runnable;

    new-instance v0, Lcom/appyet/mobile/manager/bj;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bj;-><init>(Lcom/appyet/mobile/manager/e;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->s:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/appyet/mobile/manager/bg;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bg;-><init>(Lcom/appyet/mobile/manager/e;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->t:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/appyet/mobile/manager/bh;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bh;-><init>(Lcom/appyet/mobile/manager/e;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->u:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/appyet/mobile/manager/bf;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bf;-><init>(Lcom/appyet/mobile/manager/e;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->v:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance v0, Lcom/appyet/mobile/manager/be;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/be;-><init>(Lcom/appyet/mobile/manager/e;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->w:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/appyet/mobile/manager/bd;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bd;-><init>(Lcom/appyet/mobile/manager/e;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->x:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/appyet/mobile/manager/bc;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bc;-><init>(Lcom/appyet/mobile/manager/e;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->y:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/manager/bt;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bt;-><init>(Lcom/appyet/mobile/manager/e;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->z:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/manager/bs;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bs;-><init>(Lcom/appyet/mobile/manager/e;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->A:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/manager/br;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/br;-><init>(Lcom/appyet/mobile/manager/e;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->B:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object p1, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method

.method static synthetic a(Ljava/util/List;Lcom/appyet/mobile/data/FeedItem;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/appyet/mobile/manager/e;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/e;->c:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/mobile/manager/e;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/mobile/manager/e;Lcom/appyet/mobile/manager/MediaProgressNotification;)Lcom/appyet/mobile/manager/MediaProgressNotification;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/e;->i:Lcom/appyet/mobile/manager/MediaProgressNotification;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/mobile/manager/e;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/manager/e;->b(Ljava/util/List;I)V

    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->g()Lcom/appyet/mobile/context/g;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/context/g;->b:Lcom/appyet/mobile/context/g;

    if-ne v0, v1, :cond_1

    invoke-static {p1, p2}, Lcom/appyet/mobile/manager/e;->c(Ljava/util/List;I)I

    move-result v0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v2

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/manager/e;->a(Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/manager/e;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/appyet/mobile/manager/e;->a(Ljava/util/List;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/appyet/mobile/manager/e;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->r:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/mobile/manager/e;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/manager/e;->d(Ljava/util/List;I)V

    return-void
.end method

.method private b(Ljava/util/List;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->h()Lcom/appyet/mobile/context/n;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/context/n;->b:Lcom/appyet/mobile/context/n;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->g()Lcom/appyet/mobile/context/g;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/context/g;->b:Lcom/appyet/mobile/context/g;

    if-ne v0, v1, :cond_2

    invoke-static {p1, p2}, Lcom/appyet/mobile/manager/e;->c(Ljava/util/List;I)I

    move-result p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->h()Lcom/appyet/mobile/context/n;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/context/n;->c:Lcom/appyet/mobile/context/n;

    if-ne v0, v1, :cond_1

    const/4 p2, 0x0

    :cond_0
    if-ltz p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/manager/e;->a(Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/manager/e;->i()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/manager/e;->b(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static c(Ljava/util/List;I)I
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v3, v1, v2}, Ljava/util/Random;-><init>(J)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    sget-object v4, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v0, v4, :cond_1

    if-eq v1, p1, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/appyet/mobile/manager/e;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/mobile/manager/e;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/manager/e;->a(Ljava/util/List;I)V

    return-void
.end method

.method private d(Ljava/util/List;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    add-int/lit8 v1, p2, -0x1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v2

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/manager/e;->a(Lcom/appyet/mobile/data/FeedItem;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/manager/e;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/appyet/mobile/manager/e;->d(Ljava/util/List;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic d(Lcom/appyet/mobile/manager/e;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/mobile/manager/e;->o:Z

    return v0
.end method

.method static synthetic e(Lcom/appyet/mobile/manager/e;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/mobile/manager/e;->p:Z

    return v0
.end method

.method static synthetic f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic g(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    return-object v0
.end method

.method static synthetic i(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/activity/PlayListActivity;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    return-object v0
.end method

.method static synthetic j(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/manager/MediaProgressNotification;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->i:Lcom/appyet/mobile/manager/MediaProgressNotification;

    return-object v0
.end method

.method static synthetic k(Lcom/appyet/mobile/manager/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/manager/e;->o()V

    return-void
.end method

.method static synthetic l(Lcom/appyet/mobile/manager/e;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->c:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic m(Lcom/appyet/mobile/manager/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/manager/e;->n()V

    return-void
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    const v1, 0x7f0b00d9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private o()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/appyet/mobile/manager/e;->p()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->q:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private p()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/mobile/manager/e;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private q()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/appyet/mobile/manager/e;->j:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/appyet/mobile/wrapper/AudioFocusChangeListenerWrapper;

    iget-object v2, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v1, v2}, Lcom/appyet/mobile/wrapper/AudioFocusChangeListenerWrapper;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iget-object v2, p0, Lcom/appyet/mobile/manager/e;->b:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/wrapper/AudioFocusChangeListenerWrapper;->requestFocus(Landroid/media/AudioManager;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private r()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/appyet/mobile/manager/e;->j:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/appyet/mobile/wrapper/AudioFocusChangeListenerWrapper;

    iget-object v2, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v1, v2}, Lcom/appyet/mobile/wrapper/AudioFocusChangeListenerWrapper;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iget-object v2, p0, Lcom/appyet/mobile/manager/e;->b:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/wrapper/AudioFocusChangeListenerWrapper;->abandonFocus(Landroid/media/AudioManager;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/appyet/mobile/manager/e;->k:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->m:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->b:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appyet/mobile/manager/e;->k:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->b:Landroid/media/AudioManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appyet/mobile/manager/e;->m:Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    mul-int/lit16 v2, p1, 0x3e8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/appyet/mobile/activity/PlayListActivity;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    const v1, 0x7f0d00bd

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->B:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    const v1, 0x7f0d00ab

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    const v1, 0x7f0d00ac

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/appyet/mobile/manager/e;->k()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/appyet/mobile/manager/e;->o()V

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/appyet/mobile/manager/e;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    const v1, 0x7f02007e

    :try_start_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public final a(Lcom/appyet/mobile/data/FeedItem;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/manager/e;->d()V

    iput-object p1, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/appyet/mobile/manager/e;->n()V

    goto :goto_0
.end method

.method public final a(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    mul-int/lit8 v0, p2, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/appyet/mobile/manager/e;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/appyet/mobile/manager/e;->r:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/appyet/mobile/manager/e;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/appyet/mobile/manager/e;->r:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iput-boolean p1, p0, Lcom/appyet/mobile/manager/e;->o:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/appyet/mobile/manager/e;->l:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->m:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->b:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appyet/mobile/manager/e;->l:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->b:Landroid/media/AudioManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appyet/mobile/manager/e;->m:Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final c()Lcom/appyet/mobile/manager/MediaProgressNotification;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->i:Lcom/appyet/mobile/manager/MediaProgressNotification;

    return-object v0
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/appyet/mobile/manager/e;->p:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/mobile/manager/e;->C:Z

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    new-instance v1, Lcom/appyet/mobile/manager/a;

    invoke-direct {v1, p0, v0}, Lcom/appyet/mobile/manager/a;-><init>(Lcom/appyet/mobile/manager/e;I)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/manager/a;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureCurrentPosition(Ljava/lang/Integer;)V

    :cond_0
    invoke-direct {p0}, Lcom/appyet/mobile/manager/e;->p()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appyet/mobile/manager/e;->k()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->b:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/appyet/mobile/manager/e;->r()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->b:Landroid/media/AudioManager;

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->n:Lcom/appyet/mobile/receiver/CommonReceiver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->n:Lcom/appyet/mobile/receiver/CommonReceiver;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->n:Lcom/appyet/mobile/receiver/CommonReceiver;

    :cond_3
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->i:Lcom/appyet/mobile/manager/MediaProgressNotification;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->i:Lcom/appyet/mobile/manager/MediaProgressNotification;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/MediaProgressNotification;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->i:Lcom/appyet/mobile/manager/MediaProgressNotification;

    :cond_4
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/appyet/mobile/manager/e;->k()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/PlayListActivity;->b:Lcom/appyet/mobile/d/n;

    invoke-virtual {v0}, Lcom/appyet/mobile/d/n;->notifyDataSetChanged()V

    :cond_6
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->c:Landroid/content/Intent;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->c:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final e()Lcom/appyet/mobile/data/FeedItem;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    new-instance v0, Lcom/appyet/mobile/manager/bq;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/manager/bq;-><init>(Lcom/appyet/mobile/manager/e;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bq;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    return-void
.end method

.method public final h()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/manager/e;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/mobile/manager/e;->C:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/appyet/mobile/manager/e;->n()V

    goto :goto_0
.end method

.method public final i()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLinkMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    iget-object v3, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLinkMD5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/manager/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/appyet/mobile/manager/e;->n()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/mobile/manager/e;->d()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->b:Landroid/media/AudioManager;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/appyet/mobile/manager/e;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->m:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/appyet/mobile/manager/e;->q()Z

    invoke-virtual {p0}, Lcom/appyet/mobile/manager/e;->a()V

    new-instance v0, Lcom/appyet/mobile/receiver/CommonReceiver;

    invoke-direct {v0}, Lcom/appyet/mobile/receiver/CommonReceiver;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->n:Lcom/appyet/mobile/receiver/CommonReceiver;

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->n:Lcom/appyet/mobile/receiver/CommonReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLinkMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->j:Lcom/appyet/mobile/manager/ch;

    iget-object v2, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLinkMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/manager/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->s:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->t:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->u:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->v:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->w:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/bo;->a(Ljava/lang/Long;Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;)V

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->d:Lcom/appyet/mobile/context/ApplicationContext;

    const v1, 0x7f0b00da

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/manager/e;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final k()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/appyet/mobile/manager/g;

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v2, p0, Lcom/appyet/mobile/manager/e;->a:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/appyet/mobile/manager/e;->e:Lcom/appyet/mobile/data/FeedItem;

    invoke-direct {v0, v1, v2, v3}, Lcom/appyet/mobile/manager/g;-><init>(Landroid/app/Activity;Landroid/media/MediaPlayer;Lcom/appyet/mobile/data/FeedItem;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/e;->h:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/activity/PlayListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/manager/e;->C:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/manager/e;->o:Z

    return v0
.end method
