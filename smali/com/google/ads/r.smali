.class public final Lcom/google/ads/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/af;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 1

    instance-of v0, p3, Lcom/google/ads/w;

    if-eqz v0, :cond_1

    check-cast p3, Lcom/google/ads/w;

    invoke-virtual {p3}, Lcom/google/ads/w;->a()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/AdActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Trying to close WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
