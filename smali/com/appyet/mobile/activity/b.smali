.class final Lcom/appyet/mobile/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/GoogleAccountActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/GoogleAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/b;->a:Lcom/appyet/mobile/activity/GoogleAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/b;->a:Lcom/appyet/mobile/activity/GoogleAccountActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
