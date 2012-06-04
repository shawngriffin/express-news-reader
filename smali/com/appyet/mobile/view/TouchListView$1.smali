.class Lcom/appyet/mobile/view/TouchListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic this$0:Lcom/appyet/mobile/view/TouchListView;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/view/TouchListView;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/view/TouchListView$1;->this$0:Lcom/appyet/mobile/view/TouchListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/appyet/mobile/view/TouchListView$1;->this$0:Lcom/appyet/mobile/view/TouchListView;

    #getter for: Lcom/appyet/mobile/view/TouchListView;->mDragView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/appyet/mobile/view/TouchListView;->access$000(Lcom/appyet/mobile/view/TouchListView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x447a

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/view/TouchListView$1;->this$0:Lcom/appyet/mobile/view/TouchListView;

    #getter for: Lcom/appyet/mobile/view/TouchListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/appyet/mobile/view/TouchListView;->access$100(Lcom/appyet/mobile/view/TouchListView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/view/TouchListView$1;->this$0:Lcom/appyet/mobile/view/TouchListView;

    #getter for: Lcom/appyet/mobile/view/TouchListView;->mDragView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/appyet/mobile/view/TouchListView;->access$000(Lcom/appyet/mobile/view/TouchListView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/view/TouchListView$1;->this$0:Lcom/appyet/mobile/view/TouchListView;

    #calls: Lcom/appyet/mobile/view/TouchListView;->stopDragging()V
    invoke-static {v1}, Lcom/appyet/mobile/view/TouchListView;->access$200(Lcom/appyet/mobile/view/TouchListView;)V

    iget-object v1, p0, Lcom/appyet/mobile/view/TouchListView$1;->this$0:Lcom/appyet/mobile/view/TouchListView;

    #getter for: Lcom/appyet/mobile/view/TouchListView;->mRemoveListener:Lcom/appyet/mobile/view/TouchListView$RemoveListener;
    invoke-static {v1}, Lcom/appyet/mobile/view/TouchListView;->access$400(Lcom/appyet/mobile/view/TouchListView;)Lcom/appyet/mobile/view/TouchListView$RemoveListener;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/view/TouchListView$1;->this$0:Lcom/appyet/mobile/view/TouchListView;

    #getter for: Lcom/appyet/mobile/view/TouchListView;->mFirstDragPos:I
    invoke-static {v2}, Lcom/appyet/mobile/view/TouchListView;->access$300(Lcom/appyet/mobile/view/TouchListView;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/appyet/mobile/view/TouchListView$RemoveListener;->remove(I)V

    iget-object v1, p0, Lcom/appyet/mobile/view/TouchListView$1;->this$0:Lcom/appyet/mobile/view/TouchListView;

    #calls: Lcom/appyet/mobile/view/TouchListView;->unExpandViews(Z)V
    invoke-static {v1, v0}, Lcom/appyet/mobile/view/TouchListView;->access$500(Lcom/appyet/mobile/view/TouchListView;Z)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
