.class final Lcom/appyet/mobile/activity/ea;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/TranslateActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/TranslateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ea;->a:Lcom/appyet/mobile/activity/TranslateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ea;->a:Lcom/appyet/mobile/activity/TranslateActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/TranslateActivity;->a(Lcom/appyet/mobile/activity/TranslateActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->i()Lcom/appyet/mobile/context/k;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/context/k;->b:Lcom/appyet/mobile/context/k;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.google.com/gwt/x?u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ea;->a:Lcom/appyet/mobile/activity/TranslateActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/TranslateActivity;->b(Lcom/appyet/mobile/activity/TranslateActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://translate.google.com/translate?sl=auto&tl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/ea;->a:Lcom/appyet/mobile/activity/TranslateActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/TranslateActivity;->c(Lcom/appyet/mobile/activity/TranslateActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ea;->a:Lcom/appyet/mobile/activity/TranslateActivity;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/TranslateActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ea;->a:Lcom/appyet/mobile/activity/TranslateActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/TranslateActivity;->setResult(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ea;->a:Lcom/appyet/mobile/activity/TranslateActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/TranslateActivity;->finish()V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.instapaper.com/m?u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ea;->a:Lcom/appyet/mobile/activity/TranslateActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/TranslateActivity;->b(Lcom/appyet/mobile/activity/TranslateActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ea;->a:Lcom/appyet/mobile/activity/TranslateActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/TranslateActivity;->a(Lcom/appyet/mobile/activity/TranslateActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
