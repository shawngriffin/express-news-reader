.class final Lcom/appyet/mobile/base/activity/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/base/activity/BaseFeedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/base/activity/k;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/k;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    const-class v2, Lcom/appyet/mobile/activity/ManageSourceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/k;->a:Lcom/appyet/mobile/base/activity/BaseFeedActivity;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/appyet/mobile/base/activity/BaseFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
