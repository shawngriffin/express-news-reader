.class final Lcom/appyet/mobile/activity/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/PlayListActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/PlayListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/by;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/appyet/mobile/activity/by;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    iget-object v2, v2, Lcom/appyet/mobile/activity/PlayListActivity;->a:Lcom/appyet/mobile/activity/dp;

    invoke-virtual {v2}, Lcom/appyet/mobile/activity/dp;->a()Landroid/view/GestureDetector;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/by;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->c(Lcom/appyet/mobile/activity/PlayListActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/by;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;Z)Z

    iget-object v0, p0, Lcom/appyet/mobile/activity/by;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/by;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    iget-object v2, p0, Lcom/appyet/mobile/activity/by;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/PlayListActivity;->d(Lcom/appyet/mobile/activity/PlayListActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/manager/e;->a(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/by;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/PlayListActivity;->b(Lcom/appyet/mobile/activity/PlayListActivity;I)I

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/by;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    const v2, 0x7f0d00a9

    invoke-virtual {v0, v2}, Lcom/appyet/mobile/activity/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/appyet/mobile/activity/by;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    const v3, 0x7f040005

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method
