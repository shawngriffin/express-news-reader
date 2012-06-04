.class final Lcom/appyet/mobile/base/activity/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/Feed;

.field private synthetic b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/Feed;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/ak;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iput-object p2, p0, Lcom/appyet/mobile/base/activity/ak;->a:Lcom/appyet/mobile/data/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/appyet/mobile/base/activity/bd;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/ak;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-direct {v0, v1}, Lcom/appyet/mobile/base/activity/bd;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appyet/mobile/data/Feed;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/appyet/mobile/base/activity/ak;->a:Lcom/appyet/mobile/data/Feed;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/base/activity/bd;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
