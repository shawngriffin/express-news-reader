.class public Lcom/appyet/mobile/view/TouchListView;
.super Landroid/widget/ListView;


# static fields
.field public static final FLING:I = 0x0

.field public static final SLIDE_LEFT:I = 0x2

.field public static final SLIDE_RIGHT:I = 0x1


# instance fields
.field private dragndropBackgroundColor:I

.field private grabberId:I

.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/appyet/mobile/view/TouchListView$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/appyet/mobile/view/TouchListView$DropListener;

.field private mFirstDragPos:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/appyet/mobile/view/TouchListView$RemoveListener;

.field private mRemoveMode:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/appyet/mobile/view/TouchListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v4, p0, Lcom/appyet/mobile/view/TouchListView;->mRemoveMode:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mTempRect:Landroid/graphics/Rect;

    iput v4, p0, Lcom/appyet/mobile/view/TouchListView;->mItemHeightNormal:I

    iput v4, p0, Lcom/appyet/mobile/view/TouchListView;->mItemHeightExpanded:I

    iput v4, p0, Lcom/appyet/mobile/view/TouchListView;->grabberId:I

    iput v3, p0, Lcom/appyet/mobile/view/TouchListView;->dragndropBackgroundColor:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/view/TouchListView;->mTouchSlop:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/a;->a:[I

    invoke-virtual {v0, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/appyet/mobile/view/TouchListView;->mItemHeightNormal:I

    const/4 v1, 0x1

    iget v2, p0, Lcom/appyet/mobile/view/TouchListView;->mItemHeightNormal:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/appyet/mobile/view/TouchListView;->mItemHeightExpanded:I

    const/4 v1, 0x2

    const v2, 0x7f0d0073

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/appyet/mobile/view/TouchListView;->grabberId:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/appyet/mobile/view/TouchListView;->dragndropBackgroundColor:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/appyet/mobile/view/TouchListView;->mRemoveMode:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/appyet/mobile/view/TouchListView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/appyet/mobile/view/TouchListView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/appyet/mobile/view/TouchListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/view/TouchListView;->stopDragging()V

    return-void
.end method

.method static synthetic access$300(Lcom/appyet/mobile/view/TouchListView;)I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mFirstDragPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/appyet/mobile/view/TouchListView;)Lcom/appyet/mobile/view/TouchListView$RemoveListener;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mRemoveListener:Lcom/appyet/mobile/view/TouchListView$RemoveListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/appyet/mobile/view/TouchListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appyet/mobile/view/TouchListView;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/appyet/mobile/view/TouchListView;->mUpperBound:I

    :cond_0
    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/appyet/mobile/view/TouchListView;->mLowerBound:I

    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 8

    const/4 v2, 0x0

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPos:I

    iget v3, p0, Lcom/appyet/mobile/view/TouchListView;->mFirstDragPos:I

    if-le v1, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget v1, p0, Lcom/appyet/mobile/view/TouchListView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/view/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/appyet/mobile/view/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_4

    iget v4, p0, Lcom/appyet/mobile/view/TouchListView;->mItemHeightNormal:I

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPos:I

    iget v7, p0, Lcom/appyet/mobile/view/TouchListView;->mFirstDragPos:I

    if-ne v3, v7, :cond_2

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {p0, v6}, Lcom/appyet/mobile/view/TouchListView;->isDraggableRow(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v4, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    move v4, v3

    move v3, v2

    goto :goto_1

    :cond_3
    if-ne v1, v0, :cond_5

    iget v3, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_5

    iget v3, p0, Lcom/appyet/mobile/view/TouchListView;->mItemHeightExpanded:I

    move v4, v3

    move v3, v2

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    move v3, v2

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 4

    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/appyet/mobile/view/TouchListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/appyet/mobile/view/TouchListView;->mRemoveMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_0

    sub-int v0, v1, p1

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPoint:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/appyet/mobile/view/TouchListView;->mCoordOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/appyet/mobile/view/TouchListView;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    iget v2, p0, Lcom/appyet/mobile/view/TouchListView;->mRemoveMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    div-int/lit8 v2, v1, 0x2

    if-ge p1, v2, :cond_3

    int-to-float v0, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    goto :goto_0
.end method

.method private getItemForPosition(I)I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPoint:I

    sub-int v0, p1, v0

    add-int/lit8 v2, v0, -0x20

    invoke-direct {p0, v1, v2}, Lcom/appyet/mobile/view/TouchListView;->myPointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/appyet/mobile/view/TouchListView;->mFirstDragPos:I

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 3

    iget-object v1, p0, Lcom/appyet/mobile/view/TouchListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .locals 4

    const/4 v3, -0x2

    invoke-direct {p0}, Lcom/appyet/mobile/view/TouchListView;->stopDragging()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPoint:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/appyet/mobile/view/TouchListView;->mCoordOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x198

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->dragndropBackgroundColor:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/appyet/mobile/view/TouchListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/appyet/mobile/view/TouchListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/appyet/mobile/view/TouchListView;->mDragView:Landroid/widget/ImageView;

    return-void
.end method

.method private stopDragging()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/appyet/mobile/view/TouchListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/appyet/mobile/view/TouchListView;->mDragView:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/appyet/mobile/view/TouchListView;->mDragBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/view/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appyet/mobile/view/TouchListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v2, v3}, Lcom/appyet/mobile/view/TouchListView;->setSelectionFromTop(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->layoutChildren()V

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {p0, v2}, Lcom/appyet/mobile/view/TouchListView;->isDraggableRow(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/appyet/mobile/view/TouchListView;->mItemHeightNormal:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final addHeaderView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Headers are not supported with TouchListView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Headers are not supported with TouchListView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isDraggableRow(Landroid/view/View;)Z
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->grabberId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mRemoveListener:Lcom/appyet/mobile/view/TouchListView$RemoveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mRemoveMode:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/view/TouchListView$1;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/view/TouchListView$1;-><init>(Lcom/appyet/mobile/view/TouchListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragListener:Lcom/appyet/mobile/view/TouchListView$DragListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDropListener:Lcom/appyet/mobile/view/TouchListView$DropListener;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/view/TouchListView;->pointToPosition(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/view/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/view/TouchListView;->isDraggableRow(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v1, v4

    iput v4, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPoint:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/appyet/mobile/view/TouchListView;->mCoordOffset:I

    iget v4, p0, Lcom/appyet/mobile/view/TouchListView;->grabberId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/appyet/mobile/view/TouchListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    iget v4, v5, Landroid/graphics/Rect;->left:I

    if-ge v4, v0, :cond_3

    iget v4, v5, Landroid/graphics/Rect;->right:I

    if-ge v0, v4, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3, v7}, Lcom/appyet/mobile/view/TouchListView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0, v3, v1}, Lcom/appyet/mobile/view/TouchListView;->startDragging(Landroid/graphics/Bitmap;II)V

    iput v2, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPos:I

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPos:I

    iput v0, p0, Lcom/appyet/mobile/view/TouchListView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/view/TouchListView;->mHeight:I

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mTouchSlop:I

    sub-int v2, v1, v0

    iget v3, p0, Lcom/appyet/mobile/view/TouchListView;->mHeight:I

    div-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/appyet/mobile/view/TouchListView;->mUpperBound:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/appyet/mobile/view/TouchListView;->mHeight:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/view/TouchListView;->mLowerBound:I

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_3
    iput-object v7, p0, Lcom/appyet/mobile/view/TouchListView;->mDragView:Landroid/widget/ImageView;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragListener:Lcom/appyet/mobile/view/TouchListView$DragListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDropListener:Lcom/appyet/mobile/view/TouchListView$DropListener;

    if-eqz v0, :cond_f

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/appyet/mobile/view/TouchListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/appyet/mobile/view/TouchListView;->stopDragging()V

    iget v2, p0, Lcom/appyet/mobile/view/TouchListView;->mRemoveMode:I

    if-ne v2, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mRemoveListener:Lcom/appyet/mobile/view/TouchListView$RemoveListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mRemoveListener:Lcom/appyet/mobile/view/TouchListView$RemoveListener;

    iget v2, p0, Lcom/appyet/mobile/view/TouchListView;->mFirstDragPos:I

    invoke-interface {v0, v2}, Lcom/appyet/mobile/view/TouchListView$RemoveListener;->remove(I)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/appyet/mobile/view/TouchListView;->unExpandViews(Z)V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/appyet/mobile/view/TouchListView;->mRemoveMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v4

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mRemoveListener:Lcom/appyet/mobile/view/TouchListView$RemoveListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mRemoveListener:Lcom/appyet/mobile/view/TouchListView$RemoveListener;

    iget v2, p0, Lcom/appyet/mobile/view/TouchListView;->mFirstDragPos:I

    invoke-interface {v0, v2}, Lcom/appyet/mobile/view/TouchListView$RemoveListener;->remove(I)V

    :cond_5
    invoke-direct {p0, v1}, Lcom/appyet/mobile/view/TouchListView;->unExpandViews(Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDropListener:Lcom/appyet/mobile/view/TouchListView$DropListener;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPos:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_7

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDropListener:Lcom/appyet/mobile/view/TouchListView$DropListener;

    iget v2, p0, Lcom/appyet/mobile/view/TouchListView;->mFirstDragPos:I

    iget v4, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPos:I

    invoke-interface {v0, v2, v4}, Lcom/appyet/mobile/view/TouchListView$DropListener;->drop(II)V

    :cond_7
    invoke-direct {p0, v3}, Lcom/appyet/mobile/view/TouchListView;->unExpandViews(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4}, Lcom/appyet/mobile/view/TouchListView;->dragView(II)V

    invoke-direct {p0, v4}, Lcom/appyet/mobile/view/TouchListView;->getItemForPosition(I)I

    move-result v2

    if-ltz v2, :cond_2

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPos:I

    if-eq v2, v0, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragListener:Lcom/appyet/mobile/view/TouchListView$DragListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/appyet/mobile/view/TouchListView;->mDragListener:Lcom/appyet/mobile/view/TouchListView$DragListener;

    iget v5, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPos:I

    invoke-interface {v0, v5, v2}, Lcom/appyet/mobile/view/TouchListView$DragListener;->drag(II)V

    :cond_9
    iput v2, p0, Lcom/appyet/mobile/view/TouchListView;->mDragPos:I

    invoke-direct {p0}, Lcom/appyet/mobile/view/TouchListView;->doExpansion()V

    :cond_a
    invoke-direct {p0, v4}, Lcom/appyet/mobile/view/TouchListView;->adjustScrollBounds(I)V

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mLowerBound:I

    if-le v4, v0, :cond_d

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mHeight:I

    iget v2, p0, Lcom/appyet/mobile/view/TouchListView;->mLowerBound:I

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    if-le v4, v0, :cond_c

    const/16 v0, 0x10

    :goto_2
    move v2, v0

    :goto_3
    if-eqz v2, :cond_2

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/appyet/mobile/view/TouchListView;->pointToPosition(II)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_b

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getDividerHeight()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {p0, v3, v0}, Lcom/appyet/mobile/view/TouchListView;->pointToPosition(II)I

    move-result v0

    :cond_b
    invoke-virtual {p0}, Lcom/appyet/mobile/view/TouchListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/view/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v2, v3, v2

    invoke-virtual {p0, v0, v2}, Lcom/appyet/mobile/view/TouchListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x4

    goto :goto_2

    :cond_d
    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mUpperBound:I

    if-ge v4, v0, :cond_10

    iget v0, p0, Lcom/appyet/mobile/view/TouchListView;->mUpperBound:I

    div-int/lit8 v0, v0, 0x2

    if-ge v4, v0, :cond_e

    const/16 v0, -0x10

    :goto_4
    move v2, v0

    goto :goto_3

    :cond_e
    const/4 v0, -0x4

    goto :goto_4

    :cond_f
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    :cond_10
    move v2, v3

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDragListener(Lcom/appyet/mobile/view/TouchListView$DragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/view/TouchListView;->mDragListener:Lcom/appyet/mobile/view/TouchListView$DragListener;

    return-void
.end method

.method public setDropListener(Lcom/appyet/mobile/view/TouchListView$DropListener;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/view/TouchListView;->mDropListener:Lcom/appyet/mobile/view/TouchListView$DropListener;

    return-void
.end method

.method public setRemoveListener(Lcom/appyet/mobile/view/TouchListView$RemoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/view/TouchListView;->mRemoveListener:Lcom/appyet/mobile/view/TouchListView$RemoveListener;

    return-void
.end method
