.class final Lcom/appyet/mobile/activity/dp;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/GestureDetector;

.field private c:I

.field private d:I

.field private synthetic e:Lcom/appyet/mobile/activity/PlayListActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/activity/PlayListActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/mobile/activity/dp;->e:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/appyet/mobile/activity/dp;->c:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/appyet/mobile/activity/dp;->d:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/dp;->b:Landroid/view/GestureDetector;

    iput-object p2, p0, Lcom/appyet/mobile/activity/dp;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/dp;->b:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/appyet/mobile/activity/dp;->e:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0, v4}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;Z)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v0, p0, Lcom/appyet/mobile/activity/dp;->e:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/dp;->e:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/dp;->e:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->b(Lcom/appyet/mobile/activity/PlayListActivity;I)I

    iget-object v0, p0, Lcom/appyet/mobile/activity/dp;->e:Lcom/appyet/mobile/activity/PlayListActivity;

    const v2, 0x7f0d00a9

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/appyet/mobile/activity/dp;->e:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    const v3, 0x7f040003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/appyet/mobile/e/d;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return v4
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/dp;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
