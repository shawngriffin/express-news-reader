.class public final Lcom/google/ads/v;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private a:Lcom/google/ads/af;

.field private b:Ljava/util/Map;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/af;Ljava/util/Map;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/google/ads/v;->a:Lcom/google/ads/af;

    iput-object p2, p0, Lcom/google/ads/v;->b:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/google/ads/v;->c:Z

    iput-boolean p4, p0, Lcom/google/ads/v;->d:Z

    iput-boolean v0, p0, Lcom/google/ads/v;->e:Z

    iput-boolean v0, p0, Lcom/google/ads/v;->f:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/v;->d:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/v;->e:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/v;->f:Z

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/ads/v;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/v;->a:Lcom/google/ads/af;

    invoke-virtual {v0}, Lcom/google/ads/af;->f()Lcom/google/ads/ae;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/ae;->a()V

    :goto_0
    iput-boolean v1, p0, Lcom/google/ads/v;->e:Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/v;->f:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/ads/ac;->a(Landroid/webkit/WebView;)V

    iput-boolean v1, p0, Lcom/google/ads/v;->f:Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "adLoader was null while trying to setFinishedLoadingHtml()."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading(\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "An error occurred while parsing the url parameters."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v3, "ai"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/ads/v;->a:Lcom/google/ads/af;

    invoke-virtual {v3}, Lcom/google/ads/af;->k()Lcom/google/ads/ah;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/ads/ah;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {v2}, Lcom/google/ads/ac;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/v;->a:Lcom/google/ads/af;

    iget-object v3, p0, Lcom/google/ads/v;->b:Ljava/util/Map;

    invoke-static {v0, v3, v2, p1}, Lcom/google/ads/ac;->a(Lcom/google/ads/af;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/ads/v;->d:Z

    if-eqz v0, :cond_4

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "u"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/v;->a:Lcom/google/ads/af;

    new-instance v3, Lcom/google/ads/ag;

    const-string v4, "intent"

    invoke-direct {v3, v4, v0}, Lcom/google/ads/ag;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/af;Lcom/google/ads/ag;)V

    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/google/ads/v;->c:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/ads/v;->a:Lcom/google/ads/af;

    invoke-virtual {v0}, Lcom/google/ads/af;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "webapp"

    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "u"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/v;->a:Lcom/google/ads/af;

    new-instance v4, Lcom/google/ads/ag;

    invoke-direct {v4, v0, v3}, Lcom/google/ads/ag;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v4}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/af;Lcom/google/ads/ag;)V

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "intent"

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL is not a GMSG and can\'t handle URL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0
.end method
