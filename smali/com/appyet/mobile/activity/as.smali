.class final Lcom/appyet/mobile/activity/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/as;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/activity/as;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    const-class v2, Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/as;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
