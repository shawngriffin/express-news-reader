.class final Lcom/appyet/mobile/activity/bq;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/WebActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/WebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/bq;->a:Lcom/appyet/mobile/activity/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const v1, 0x7f0d00d0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/bq;->a:Lcom/appyet/mobile/activity/WebActivity;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/bq;->a:Lcom/appyet/mobile/activity/WebActivity;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
