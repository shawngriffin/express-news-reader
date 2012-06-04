.class final Lcom/appyet/mobile/activity/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/HelpUsActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/HelpUsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/r;->a:Lcom/appyet/mobile/activity/HelpUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/appyet/mobile/activity/r;->a:Lcom/appyet/mobile/activity/HelpUsActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/HelpUsActivity;->a(Lcom/appyet/mobile/activity/HelpUsActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->N()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/r;->a:Lcom/appyet/mobile/activity/HelpUsActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/activity/HelpUsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
