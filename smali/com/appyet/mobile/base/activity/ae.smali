.class final Lcom/appyet/mobile/base/activity/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/ae;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/appyet/mobile/base/activity/bb;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/ae;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-direct {v0, v1}, Lcom/appyet/mobile/base/activity/bb;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/bb;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
