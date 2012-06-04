.class final Lcom/appyet/mobile/base/activity/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/ap;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    const-wide/16 v5, 0x0

    check-cast p1, Lcom/appyet/mobile/data/Feed;

    check-cast p2, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
