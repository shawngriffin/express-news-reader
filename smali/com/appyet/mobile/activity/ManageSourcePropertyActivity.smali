.class public Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:Lcom/appyet/mobile/data/Feed;

.field private c:Ljava/util/List;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/ArrayAdapter;

.field private g:Landroid/widget/ArrayAdapter;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/appyet/mobile/activity/ce;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ce;-><init>(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->h:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/cd;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/cd;-><init>(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->i:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)Lcom/appyet/mobile/data/Feed;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b:Lcom/appyet/mobile/data/Feed;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->d:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->d:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic e(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)Landroid/widget/ArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->g:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const v11, 0x1090009

    const/16 v3, 0x8

    const/4 v2, 0x3

    const v10, 0x1090008

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    const v1, 0x7f030031

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->setContentView(I)V

    const v1, 0x108009b

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v0, 0x7f0d0099

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d009a

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "source_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "source_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/manager/bo;->b(Ljava/lang/String;)Lcom/appyet/mobile/data/Feed;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b:Lcom/appyet/mobile/data/Feed;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b:Lcom/appyet/mobile/data/Feed;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->finish()V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->finish()V

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->B()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_3
    const v0, 0x7f0d0095

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->o()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_4
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0d0092

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0d0095

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const v3, 0x7f0d0096

    invoke-virtual {p0, v3}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v4, 0x7f0d0094

    invoke-virtual {p0, v4}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v6}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getIsDownloadNewArticle()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getIsDownloadNewEnclosure()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getIsSkipAutoUpdate()Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const v1, 0x7f0d0091

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->e:Ljava/lang/String;

    const v2, 0x7f07000a

    invoke-static {p0, v2, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->f:Landroid/widget/ArrayAdapter;

    const v2, 0x7f07000b

    invoke-static {p0, v2, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->g:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    move v3, v5

    :goto_2
    if-ge v3, v4, :cond_5

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v6}, Lcom/appyet/mobile/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_5
    new-instance v2, Lcom/appyet/mobile/activity/cf;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/activity/cf;-><init>(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v0, v3, v6

    if-nez v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getCategoryId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->d:Ljava/lang/Long;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v5

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getCategoryId()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_9

    move v5, v2

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_a
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v10, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b016a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v0, Lcom/appyet/mobile/activity/cg;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/cg;-><init>(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0d0098

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/Feed;->getHttpAuthPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->b:Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getHttpAuthUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ManageSourcePropertyActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
