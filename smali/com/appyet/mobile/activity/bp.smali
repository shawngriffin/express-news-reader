.class final Lcom/appyet/mobile/activity/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/WebActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/WebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/bp;->a:Lcom/appyet/mobile/activity/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/bp;->a:Lcom/appyet/mobile/activity/WebActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/WebActivity;->b(Lcom/appyet/mobile/activity/WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method
