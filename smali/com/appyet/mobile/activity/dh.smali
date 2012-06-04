.class final Lcom/appyet/mobile/activity/dh;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/PlayListActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/PlayListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/dh;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/appyet/mobile/activity/dh;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->ae()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/appyet/mobile/activity/dh;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/PlayListActivity;->h(Lcom/appyet/mobile/activity/PlayListActivity;)V

    iget-object v2, p0, Lcom/appyet/mobile/activity/dh;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/manager/f;->e(Z)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/appyet/mobile/activity/dh;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/PlayListActivity;->i(Lcom/appyet/mobile/activity/PlayListActivity;)V

    iget-object v2, p0, Lcom/appyet/mobile/activity/dh;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/manager/f;->e(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
