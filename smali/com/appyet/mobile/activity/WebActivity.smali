.class public Lcom/appyet/mobile/activity/WebActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/WebActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/WebActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->b:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/WebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/WebActivity;->setContentView(I)V

    const v0, 0x7f0d00c8

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0d00c9

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b00df

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->b:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/appyet/mobile/activity/bq;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/bq;-><init>(Lcom/appyet/mobile/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/appyet/mobile/activity/br;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/br;-><init>(Lcom/appyet/mobile/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->b:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/appyet/mobile/activity/bs;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/bs;-><init>(Lcom/appyet/mobile/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/appyet/mobile/activity/WebActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const v0, 0x7f0d00d7

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/appyet/mobile/activity/bt;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/bt;-><init>(Lcom/appyet/mobile/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/appyet/mobile/activity/bp;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/bp;-><init>(Lcom/appyet/mobile/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/WebActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/WebActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/WebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
