.class final Lcom/appyet/mobile/base/activity/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/data/Category;

.field private synthetic b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;Lcom/appyet/mobile/data/Category;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/ai;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iput-object p2, p0, Lcom/appyet/mobile/base/activity/ai;->a:Lcom/appyet/mobile/data/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ai;->a:Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ai;->a:Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ai;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/ai;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-virtual {v1}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ai;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/ai;->a:Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->b(Lcom/appyet/mobile/data/Category;)Z

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ai;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/ai;->a:Lcom/appyet/mobile/data/Category;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/ai;->b:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
