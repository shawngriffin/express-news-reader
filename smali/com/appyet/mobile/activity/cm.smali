.class final Lcom/appyet/mobile/activity/cm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/ImageView;

.field private synthetic b:Lcom/appyet/mobile/activity/PlayListActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/PlayListActivity;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/cm;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    iput-object p2, p0, Lcom/appyet/mobile/activity/cm;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/appyet/mobile/activity/PlayListActivity;->c:Lcom/appyet/mobile/activity/bo;

    sget-object v1, Lcom/appyet/mobile/activity/bo;->a:Lcom/appyet/mobile/activity/bo;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/appyet/mobile/activity/bo;->b:Lcom/appyet/mobile/activity/bo;

    sput-object v0, Lcom/appyet/mobile/activity/PlayListActivity;->c:Lcom/appyet/mobile/activity/bo;

    iget-object v0, p0, Lcom/appyet/mobile/activity/cm;->a:Landroid/widget/ImageView;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cm;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/appyet/mobile/activity/bo;->a:Lcom/appyet/mobile/activity/bo;

    sput-object v0, Lcom/appyet/mobile/activity/PlayListActivity;->c:Lcom/appyet/mobile/activity/bo;

    iget-object v0, p0, Lcom/appyet/mobile/activity/cm;->a:Landroid/widget/ImageView;

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cm;->b:Lcom/appyet/mobile/activity/PlayListActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/PlayListActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
