.class final Lcom/appyet/mobile/base/activity/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/ao;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    check-cast p1, Lcom/appyet/mobile/data/Feed;

    check-cast p2, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    :cond_0
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    move v0, v4

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getPubDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getPubDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_1
    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getPubDate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getPubDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    :goto_2
    sub-long v8, v6, v0

    cmp-long v8, v8, v2

    if-nez v8, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    sub-long v0, v6, v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    move-wide v6, v2

    goto :goto_2

    :cond_6
    move-wide v0, v2

    goto :goto_1
.end method
