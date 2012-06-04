.class public final Lcom/appyet/mobile/manager/cg;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;

.field private g:Lcom/appyet/mobile/c/k;

.field private h:Lcom/appyet/mobile/data/Feed;

.field private i:Lcom/appyet/mobile/data/Feed;

.field private j:Lcom/appyet/mobile/data/Feed;

.field private k:Lcom/appyet/mobile/data/Feed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://com.meecal.feedreader.LAST24HOURS"

    sput-object v0, Lcom/appyet/mobile/manager/cg;->c:Ljava/lang/String;

    const-string v0, "http://com.meecal.feedreader.ALLUNREADS"

    sput-object v0, Lcom/appyet/mobile/manager/cg;->d:Ljava/lang/String;

    const-string v0, "http://com.meecal.feedreader.ALLSTARS"

    sput-object v0, Lcom/appyet/mobile/manager/cg;->e:Ljava/lang/String;

    const-string v0, "http://com.meecal.feedreader.PODCASTS"

    sput-object v0, Lcom/appyet/mobile/manager/cg;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/mobile/manager/cg;->b:Lcom/appyet/mobile/context/ApplicationContext;

    new-instance v0, Lcom/appyet/mobile/c/k;

    invoke-direct {v0}, Lcom/appyet/mobile/c/k;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/manager/cg;->g:Lcom/appyet/mobile/c/k;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appyet/mobile/manager/cg;->a:Ljava/util/List;

    new-instance v1, Lcom/appyet/mobile/data/Feed;

    invoke-direct {v1}, Lcom/appyet/mobile/data/Feed;-><init>()V

    iput-object v1, p0, Lcom/appyet/mobile/manager/cg;->h:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->h:Lcom/appyet/mobile/data/Feed;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setFeedId(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->h:Lcom/appyet/mobile/data/Feed;

    sget-object v2, Lcom/appyet/mobile/manager/cg;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->h:Lcom/appyet/mobile/data/Feed;

    iget-object v2, p0, Lcom/appyet/mobile/manager/cg;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v3, 0x7f0b00e0

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->h:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/Feed;->setPubDate(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->h:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1, v4, v5}, Lcom/appyet/mobile/data/Feed;->setTotalCount(J)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->h:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1, v4, v5}, Lcom/appyet/mobile/data/Feed;->setUnreadCount(J)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/appyet/mobile/manager/cg;->h:Lcom/appyet/mobile/data/Feed;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/appyet/mobile/data/Feed;

    invoke-direct {v1}, Lcom/appyet/mobile/data/Feed;-><init>()V

    iput-object v1, p0, Lcom/appyet/mobile/manager/cg;->i:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->i:Lcom/appyet/mobile/data/Feed;

    const-wide/16 v2, -0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setFeedId(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->i:Lcom/appyet/mobile/data/Feed;

    sget-object v2, Lcom/appyet/mobile/manager/cg;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->i:Lcom/appyet/mobile/data/Feed;

    iget-object v2, p0, Lcom/appyet/mobile/manager/cg;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v3, 0x7f0b00e1

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->i:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/Feed;->setPubDate(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->i:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1, v4, v5}, Lcom/appyet/mobile/data/Feed;->setTotalCount(J)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->i:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1, v4, v5}, Lcom/appyet/mobile/data/Feed;->setUnreadCount(J)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/appyet/mobile/manager/cg;->i:Lcom/appyet/mobile/data/Feed;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/appyet/mobile/data/Feed;

    invoke-direct {v1}, Lcom/appyet/mobile/data/Feed;-><init>()V

    iput-object v1, p0, Lcom/appyet/mobile/manager/cg;->j:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->j:Lcom/appyet/mobile/data/Feed;

    const-wide/16 v2, -0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setFeedId(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->j:Lcom/appyet/mobile/data/Feed;

    sget-object v2, Lcom/appyet/mobile/manager/cg;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->j:Lcom/appyet/mobile/data/Feed;

    iget-object v2, p0, Lcom/appyet/mobile/manager/cg;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v3, 0x7f0b00e2

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->j:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/Feed;->setPubDate(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->j:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1, v4, v5}, Lcom/appyet/mobile/data/Feed;->setTotalCount(J)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->j:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1, v4, v5}, Lcom/appyet/mobile/data/Feed;->setUnreadCount(J)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/appyet/mobile/manager/cg;->j:Lcom/appyet/mobile/data/Feed;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/appyet/mobile/data/Feed;

    invoke-direct {v1}, Lcom/appyet/mobile/data/Feed;-><init>()V

    iput-object v1, p0, Lcom/appyet/mobile/manager/cg;->k:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->k:Lcom/appyet/mobile/data/Feed;

    const-wide/16 v2, -0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setFeedId(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->k:Lcom/appyet/mobile/data/Feed;

    sget-object v2, Lcom/appyet/mobile/manager/cg;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->k:Lcom/appyet/mobile/data/Feed;

    iget-object v2, p0, Lcom/appyet/mobile/manager/cg;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v3, 0x7f0b00e3

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->k:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/data/Feed;->setPubDate(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->k:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0, v4, v5}, Lcom/appyet/mobile/data/Feed;->setTotalCount(J)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->k:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0, v4, v5}, Lcom/appyet/mobile/data/Feed;->setUnreadCount(J)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->k:Lcom/appyet/mobile/data/Feed;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b()Lcom/appyet/mobile/c/k;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->g:Lcom/appyet/mobile/c/k;

    return-object v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->s()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->h:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->g:Lcom/appyet/mobile/c/k;

    iget v1, v1, Lcom/appyet/mobile/c/k;->h:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/data/Feed;->setTotalCount(J)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->h:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->g:Lcom/appyet/mobile/c/k;

    iget v1, v1, Lcom/appyet/mobile/c/k;->g:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/data/Feed;->setUnreadCount(J)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->h:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v2, 0x7f0b00e0

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->j:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->g:Lcom/appyet/mobile/c/k;

    iget v1, v1, Lcom/appyet/mobile/c/k;->d:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/data/Feed;->setTotalCount(J)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->j:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->g:Lcom/appyet/mobile/c/k;

    iget v1, v1, Lcom/appyet/mobile/c/k;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/data/Feed;->setUnreadCount(J)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->j:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v2, 0x7f0b00e2

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->k:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->g:Lcom/appyet/mobile/c/k;

    iget v1, v1, Lcom/appyet/mobile/c/k;->f:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/data/Feed;->setTotalCount(J)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->k:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->g:Lcom/appyet/mobile/c/k;

    iget v1, v1, Lcom/appyet/mobile/c/k;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/data/Feed;->setUnreadCount(J)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->k:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v2, 0x7f0b00e3

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->i:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->g:Lcom/appyet/mobile/c/k;

    iget v1, v1, Lcom/appyet/mobile/c/k;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/data/Feed;->setTotalCount(J)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->i:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->g:Lcom/appyet/mobile/c/k;

    iget v1, v1, Lcom/appyet/mobile/c/k;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/data/Feed;->setUnreadCount(J)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/cg;->i:Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/manager/cg;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v2, 0x7f0b00e1

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setTitle(Ljava/lang/String;)V

    return-void
.end method
