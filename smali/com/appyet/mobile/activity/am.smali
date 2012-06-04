.class final Lcom/appyet/mobile/activity/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/am;->a:Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    const-wide/16 v2, 0x0

    check-cast p1, Lcom/appyet/mobile/data/Feed;

    check-cast p2, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method
