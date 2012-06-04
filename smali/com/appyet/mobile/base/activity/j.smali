.class final Lcom/appyet/mobile/base/activity/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/j;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/appyet/mobile/data/Feed;

    check-cast p2, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/appyet/mobile/data/Feed;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
