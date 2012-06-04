.class final Lcom/appyet/mobile/base/activity/av;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Landroid/view/GestureDetector;

.field private b:Landroid/content/Context;

.field private synthetic c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;


# direct methods
.method private constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/appyet/mobile/base/activity/av;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/av;->a:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;Landroid/content/Context;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/base/activity/av;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v0, 0x0

    const/high16 v5, 0x4348

    const/high16 v4, 0x42f0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x437a

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    sget-object v2, Lcom/appyet/mobile/base/activity/ar;->b:[I

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v3, v3, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->X()Lcom/appyet/mobile/context/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appyet/mobile/context/h;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v2

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v3, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V

    move v0, v1

    goto :goto_0

    :cond_2
    :pswitch_1
    iget-object v2, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v2

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v3, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V

    move v0, v1

    goto :goto_0

    :cond_3
    :pswitch_2
    iget-object v2, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v2

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-virtual {v3, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->a(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    sget-object v2, Lcom/appyet/mobile/base/activity/ar;->b:[I

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v3, v3, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->W()Lcom/appyet/mobile/context/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appyet/mobile/context/h;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v2

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v3, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    :pswitch_4
    iget-object v2, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v2

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v3, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->c(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;I)V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    :pswitch_5
    iget-object v2, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v2

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/av;->c:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-virtual {v3, v2}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/av;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
