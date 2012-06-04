.class final Lcom/appyet/mobile/activity/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/z;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/appyet/mobile/activity/z;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/MainActivity;->a(Lcom/appyet/mobile/activity/MainActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->B:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/activity/z;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/MainActivity;->a(Lcom/appyet/mobile/activity/MainActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->B:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/activity/z;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/MainActivity;->b(Lcom/appyet/mobile/activity/MainActivity;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
