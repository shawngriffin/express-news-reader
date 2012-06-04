.class final Lcom/appyet/mobile/base/activity/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/v;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/v;->a:Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->onSearchRequested()Z

    return-void
.end method
