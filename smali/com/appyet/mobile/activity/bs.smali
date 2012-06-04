.class final Lcom/appyet/mobile/activity/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/WebActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/WebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/bs;->a:Lcom/appyet/mobile/activity/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
