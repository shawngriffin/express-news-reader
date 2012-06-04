.class public Lcom/appyet/mobile/data/Tag;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "Tag"
.end annotation


# static fields
.field public static final COLUMN_COLOR:Ljava/lang/String; = "Color"

.field public static final COLUMN_NAME:Ljava/lang/String; = "Name"

.field public static final COLUMN_TAG_ID:Ljava/lang/String; = "TagId"

.field public static final COLUMN_TOTAL_COUNT:Ljava/lang/String; = "TotalCount"

.field public static final COLUMN_UNREAD_COUNT:Ljava/lang/String; = "UnreadCount"


# instance fields
.field private mColor:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Color"
        defaultValue = "0"
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

.field private mTagId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "TagId"
        generatedId = true
        useGetSet = false
    .end annotation
.end field

.field private mTotalCount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "TotalCount"
        defaultValue = "0"
        useGetSet = false
    .end annotation
.end field

.field private mUnreadCount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "UnreadCount"
        defaultValue = "0"
        useGetSet = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/data/Tag;->mColor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Tag;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/data/Tag;->mTagId:Ljava/lang/Long;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/data/Tag;->mTotalCount:I

    return v0
.end method

.method public getUnreadCount()I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/data/Tag;->mUnreadCount:I

    return v0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/appyet/mobile/data/Tag;->mColor:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Tag;->mName:Ljava/lang/String;

    return-void
.end method

.method public setTagId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/data/Tag;->mTagId:Ljava/lang/Long;

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/appyet/mobile/data/Tag;->mTotalCount:I

    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0

    iput p1, p0, Lcom/appyet/mobile/data/Tag;->mUnreadCount:I

    return-void
.end method
