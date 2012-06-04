.class final Lcom/appyet/mobile/base/activity/au;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/au;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/au;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/au;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->j()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/au;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->e(Z)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/au;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->h()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/au;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/manager/f;->e(Z)V

    goto :goto_0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
