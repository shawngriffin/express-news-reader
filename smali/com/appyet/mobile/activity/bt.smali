.class final Lcom/appyet/mobile/activity/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/WebActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/WebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/bt;->a:Lcom/appyet/mobile/activity/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/activity/bt;->a:Lcom/appyet/mobile/activity/WebActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/WebActivity;->b(Lcom/appyet/mobile/activity/WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/bt;->a:Lcom/appyet/mobile/activity/WebActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/WebActivity;->a(Lcom/appyet/mobile/activity/WebActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
