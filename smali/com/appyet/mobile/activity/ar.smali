.class final Lcom/appyet/mobile/activity/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ar;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ar;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    iget-object v0, v0, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0, p2}, Lcom/appyet/mobile/manager/f;->c(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ar;->a:Lcom/appyet/mobile/activity/FeedItemDetailActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/FeedItemDetailActivity;->x(Lcom/appyet/mobile/activity/FeedItemDetailActivity;)Lcom/appyet/mobile/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/mobile/d/a;->notifyDataSetChanged()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
