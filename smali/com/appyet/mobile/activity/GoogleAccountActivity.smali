.class public Lcom/appyet/mobile/activity/GoogleAccountActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/appyet/mobile/d/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/GoogleAccountActivity;)Lcom/appyet/mobile/d/d;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->g:Lcom/appyet/mobile/d/d;

    return-object v0
.end method

.method private a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->z:Lcom/appyet/mobile/manager/cf;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/cf;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->b:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v1, 0x7f0b

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0b00e9

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->b:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->b:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Lcom/appyet/mobile/d/d;

    invoke-direct {v1, p0, v0}, Lcom/appyet/mobile/d/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->g:Lcom/appyet/mobile/d/d;

    iget-object v1, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->g:Lcom/appyet/mobile/d/d;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b00e9

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
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

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->setContentView(I)V

    const v0, 0x7f0d0067

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->b:Landroid/widget/ListView;

    const v0, 0x7f0d0068

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0d0069

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->d:Landroid/view/View;

    const v0, 0x7f0d006b

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->e:Landroid/widget/Button;

    const v0, 0x7f0d0066

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/appyet/mobile/activity/c;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/c;-><init>(Lcom/appyet/mobile/activity/GoogleAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/appyet/mobile/activity/b;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/b;-><init>(Lcom/appyet/mobile/activity/GoogleAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/GoogleAccountActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GoogleAccountActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/appyet/mobile/activity/GoogleAccountActivity;->a()V

    return-void
.end method
