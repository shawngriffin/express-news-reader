.class public Lcom/appyet/mobile/data/Category;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "Category"
.end annotation


# static fields
.field public static final COLUMN_CATEGORY_ID:Ljava/lang/String; = "CategoryId"

.field public static final COLUMN_COLOR:Ljava/lang/String; = "Color"

.field public static final COLUMN_IS_EXPAND:Ljava/lang/String; = "IsExpand"

.field public static final COLUMN_NAME:Ljava/lang/String; = "Name"

.field public static final COLUMN_ORDER:Ljava/lang/String; = "Order"


# instance fields
.field private mCategoryId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "CategoryId"
        generatedId = true
        useGetSet = false
    .end annotation
.end field

.field private mColor:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Color"
        useGetSet = false
    .end annotation
.end field

.field private mFeeds:Ljava/util/List;

.field private mIsExpand:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "IsExpand"
        useGetSet = false
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        columnName = "Name"
        uniqueIndex = true
        uniqueIndexName = "IDX_Tag_Name"
        useGetSet = false
    .end annotation
.end field

.field private mOrder:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Order"
        useGetSet = false
    .end annotation
.end field

.field private mTotalCount:J

.field private mUnreadCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyChanges(Lcom/appyet/mobile/data/Category;)V
    .locals 1

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Category;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Category;->getOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Category;->setOrder(I)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Category;->getIsExpand()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Category;->setIsExpand(Z)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Category;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/data/Category;->setColor(I)V

    return-void
.end method

.method public applyFeedChanges(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/appyet/mobile/data/Category;->mFeeds:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/data/Category;->mFeeds:Ljava/util/List;

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/appyet/mobile/data/Category;->getFeedByFeedId(J)Lcom/appyet/mobile/data/Feed;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/appyet/mobile/data/Category;->mFeeds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Lcom/appyet/mobile/data/Feed;->applyChange(Lcom/appyet/mobile/data/Feed;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/data/Category;->mFeeds:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/mobile/data/Category;->mFeeds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/appyet/mobile/data/Category;->getFeedByFeedId(Ljava/util/List;J)Lcom/appyet/mobile/data/Feed;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/appyet/mobile/data/Category;->refreshTotal()V

    return-void
.end method

.method public getCategoryId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Category;->mCategoryId:Ljava/lang/Long;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/data/Category;->mColor:I

    return v0
.end method

.method public getFeedByFeedId(J)Lcom/appyet/mobile/data/Feed;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Category;->mFeeds:Ljava/util/List;

    invoke-virtual {p0, v0, p1, p2}, Lcom/appyet/mobile/data/Category;->getFeedByFeedId(Ljava/util/List;J)Lcom/appyet/mobile/data/Feed;

    move-result-object v0

    return-object v0
.end method

.method public getFeedByFeedId(Ljava/util/List;J)Lcom/appyet/mobile/data/Feed;
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    cmp-long v3, v3, p2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getFeeds()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Category;->mFeeds:Ljava/util/List;

    return-object v0
.end method

.method public getIsExpand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/data/Category;->mIsExpand:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Category;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/data/Category;->mOrder:I

    return v0
.end method

.method public getTotalCount()J
    .locals 2

    iget-wide v0, p0, Lcom/appyet/mobile/data/Category;->mTotalCount:J

    return-wide v0
.end method

.method public getUnreadCount()J
    .locals 2

    iget-wide v0, p0, Lcom/appyet/mobile/data/Category;->mUnreadCount:J

    return-wide v0
.end method

.method public refreshTotal()V
    .locals 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appyet/mobile/data/Category;->mUnreadCount:J

    iput-wide v0, p0, Lcom/appyet/mobile/data/Category;->mTotalCount:J

    iget-object v0, p0, Lcom/appyet/mobile/data/Category;->mFeeds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/data/Category;->mFeeds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-wide v2, p0, Lcom/appyet/mobile/data/Category;->mTotalCount:J

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTotalCount()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/appyet/mobile/data/Category;->mTotalCount:J

    iget-wide v2, p0, Lcom/appyet/mobile/data/Category;->mUnreadCount:J

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getUnreadCount()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/appyet/mobile/data/Category;->mUnreadCount:J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCategoryId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Category;->mCategoryId:Ljava/lang/Long;

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/appyet/mobile/data/Category;->mColor:I

    return-void
.end method

.method public setFeeds(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Category;->mFeeds:Ljava/util/List;

    invoke-virtual {p0}, Lcom/appyet/mobile/data/Category;->refreshTotal()V

    return-void
.end method

.method public setIsExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/data/Category;->mIsExpand:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Category;->mName:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    iput p1, p0, Lcom/appyet/mobile/data/Category;->mOrder:I

    return-void
.end method

.method public setTotalCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/appyet/mobile/data/Category;->mTotalCount:J

    return-void
.end method

.method public setUnreadCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/appyet/mobile/data/Category;->mUnreadCount:J

    return-void
.end method
