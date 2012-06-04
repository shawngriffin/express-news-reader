.class public Lcom/appyet/mobile/activity/CleanUpActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:I

.field private c:I

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/appyet/mobile/activity/CleanUpActivity;->b:I

    iput v0, p0, Lcom/appyet/mobile/activity/CleanUpActivity;->c:I

    new-instance v0, Lcom/appyet/mobile/activity/x;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/x;-><init>(Lcom/appyet/mobile/activity/CleanUpActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/CleanUpActivity;->d:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/v;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/v;-><init>(Lcom/appyet/mobile/activity/CleanUpActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/CleanUpActivity;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/CleanUpActivity;)I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/activity/CleanUpActivity;->b:I

    return v0
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/CleanUpActivity;I)I
    .locals 0

    iput p1, p0, Lcom/appyet/mobile/activity/CleanUpActivity;->b:I

    return p1
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/CleanUpActivity;)I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/activity/CleanUpActivity;->c:I

    return v0
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/CleanUpActivity;I)I
    .locals 0

    iput p1, p0, Lcom/appyet/mobile/activity/CleanUpActivity;->c:I

    return p1
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/CleanUpActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/CleanUpActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/CleanUpActivity;->setContentView(I)V

    const v0, 0x7f0b0157

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/CleanUpActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/CleanUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/CleanUpActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/CleanUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/CleanUpActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/CleanUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/CleanUpActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0017

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/CleanUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const v1, 0x7f0d0015

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/CleanUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/appyet/mobile/activity/CleanUpActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->aI()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v2, p0, Lcom/appyet/mobile/activity/CleanUpActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->aJ()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v2, Lcom/appyet/mobile/activity/w;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/activity/w;-><init>(Lcom/appyet/mobile/activity/CleanUpActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v0, Lcom/appyet/mobile/activity/u;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/u;-><init>(Lcom/appyet/mobile/activity/CleanUpActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method
