.class final Lcom/google/ads/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/af;

.field private final b:Landroid/webkit/WebView;

.field private final c:Lcom/google/ads/ad;

.field private final d:Lcom/google/ads/as;

.field private final e:Z

.field private synthetic f:Lcom/google/ads/ae;


# direct methods
.method public constructor <init>(Lcom/google/ads/ae;Lcom/google/ads/af;Landroid/webkit/WebView;Lcom/google/ads/ad;Lcom/google/ads/as;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/c;->f:Lcom/google/ads/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/c;->a:Lcom/google/ads/af;

    iput-object p3, p0, Lcom/google/ads/c;->b:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/google/ads/c;->c:Lcom/google/ads/ad;

    iput-object p5, p0, Lcom/google/ads/c;->d:Lcom/google/ads/as;

    iput-boolean p6, p0, Lcom/google/ads/c;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/c;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/c;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/c;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/c;->c:Lcom/google/ads/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/c;->c:Lcom/google/ads/ad;

    invoke-virtual {v0}, Lcom/google/ads/ad;->a()V

    :cond_1
    iget-boolean v0, p0, Lcom/google/ads/c;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/c;->a:Lcom/google/ads/af;

    invoke-virtual {v0}, Lcom/google/ads/af;->h()Lcom/google/ads/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/w;->stopLoading()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/w;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/ads/c;->a:Lcom/google/ads/af;

    iget-object v1, p0, Lcom/google/ads/c;->d:Lcom/google/ads/as;

    invoke-virtual {v0, v1}, Lcom/google/ads/af;->a(Lcom/google/ads/as;)V

    return-void
.end method
