.class final Lcom/appyet/mobile/activity/ds;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/SleepTimerActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/SleepTimerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ds;->a:Lcom/appyet/mobile/activity/SleepTimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ds;->a:Lcom/appyet/mobile/activity/SleepTimerActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/SleepTimerActivity;->b(Lcom/appyet/mobile/activity/SleepTimerActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/appyet/mobile/activity/ds;->a:Lcom/appyet/mobile/activity/SleepTimerActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/SleepTimerActivity;->a(Lcom/appyet/mobile/activity/SleepTimerActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/e;->a(ZI)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ds;->a:Lcom/appyet/mobile/activity/SleepTimerActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/SleepTimerActivity;->b(Lcom/appyet/mobile/activity/SleepTimerActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ds;->a:Lcom/appyet/mobile/activity/SleepTimerActivity;

    const v2, 0x7f0b019a

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/activity/SleepTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appyet/mobile/activity/ds;->a:Lcom/appyet/mobile/activity/SleepTimerActivity;

    invoke-static {v4}, Lcom/appyet/mobile/activity/SleepTimerActivity;->a(Lcom/appyet/mobile/activity/SleepTimerActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ds;->a:Lcom/appyet/mobile/activity/SleepTimerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/SleepTimerActivity;->setResult(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ds;->a:Lcom/appyet/mobile/activity/SleepTimerActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/SleepTimerActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ds;->a:Lcom/appyet/mobile/activity/SleepTimerActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/SleepTimerActivity;->b(Lcom/appyet/mobile/activity/SleepTimerActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
