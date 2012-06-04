.class final Lcom/appyet/mobile/activity/cq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/PlayListActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/PlayListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/cq;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/activity/cq;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->B:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/activity/cq;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/PlayListActivity;->a(Lcom/appyet/mobile/activity/PlayListActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->B:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/activity/cq;->a:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/PlayListActivity;->b(Lcom/appyet/mobile/activity/PlayListActivity;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
