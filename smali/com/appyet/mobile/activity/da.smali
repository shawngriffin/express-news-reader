.class final Lcom/appyet/mobile/activity/da;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageCategoryActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageCategoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/da;->a:Lcom/appyet/mobile/activity/ManageCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/appyet/mobile/data/Category;

    check-cast p2, Lcom/appyet/mobile/data/Category;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Category;->getOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/appyet/mobile/data/Category;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
