.class final Lcom/appyet/mobile/base/activity/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/x;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/x;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ad()Lcom/appyet/mobile/manager/ax;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/x;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    sget-object v1, Lcom/appyet/mobile/manager/ax;->b:Lcom/appyet/mobile/manager/ax;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->a(Lcom/appyet/mobile/manager/ax;)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/x;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-static {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->a(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/x;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/x;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    iget-object v0, v0, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    sget-object v1, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->a(Lcom/appyet/mobile/manager/ax;)V

    goto :goto_0
.end method
