.class public Lcom/appyet/mobile/activity/ManageCategoryAddActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/appyet/mobile/activity/af;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/af;-><init>(Lcom/appyet/mobile/activity/ManageCategoryAddActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/ah;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ah;-><init>(Lcom/appyet/mobile/activity/ManageCategoryAddActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageCategoryAddActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->setContentView(I)V

    const v0, 0x7f0b0165

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageCategoryAddActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
