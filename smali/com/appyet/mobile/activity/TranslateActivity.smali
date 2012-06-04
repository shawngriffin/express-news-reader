.class public Lcom/appyet/mobile/activity/TranslateActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "en"

    iput-object v0, p0, Lcom/appyet/mobile/activity/TranslateActivity;->b:Ljava/lang/String;

    new-instance v0, Lcom/appyet/mobile/activity/ea;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ea;-><init>(Lcom/appyet/mobile/activity/TranslateActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/TranslateActivity;->d:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/dz;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/dz;-><init>(Lcom/appyet/mobile/activity/TranslateActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/TranslateActivity;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/TranslateActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/TranslateActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/TranslateActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/TranslateActivity;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/TranslateActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/TranslateActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/TranslateActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/TranslateActivity;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/TranslateActivity;->setContentView(I)V

    const v0, 0x7f0b0135

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/TranslateActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/TranslateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/TranslateActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/TranslateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/TranslateActivity;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const v0, 0x7f0d00dc

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/TranslateActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/TranslateActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/appyet/mobile/activity/TranslateActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->aG()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v1, Lcom/appyet/mobile/activity/dy;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/dy;-><init>(Lcom/appyet/mobile/activity/TranslateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/TranslateActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
