.class public Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/appyet/mobile/view/colorpicker/ColorPicker$OnColorChangedListener;


# instance fields
.field private a:Lcom/appyet/mobile/data/Category;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;

.field private c:I

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/appyet/mobile/activity/d;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/d;-><init>(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->d:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/f;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/f;-><init>(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)Lcom/appyet/mobile/data/Category;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->a:Lcom/appyet/mobile/data/Category;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->c:I

    return v0
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1

    const v0, 0x7f0d0076

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/view/colorpicker/ColorPickerPanelView;

    iput p1, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->c:I

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/view/colorpicker/ColorPickerPanelView;->setColor(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->setContentView(I)V

    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->setTitle(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "categoryid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/appyet/mobile/manager/bo;->a(J)Lcom/appyet/mobile/data/Category;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->a:Lcom/appyet/mobile/data/Category;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->a:Lcom/appyet/mobile/data/Category;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0d0072

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->a:Lcom/appyet/mobile/data/Category;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0076

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/view/colorpicker/ColorPickerPanelView;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->a:Lcom/appyet/mobile/data/Category;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Category;->getColor()I

    move-result v1

    iput v1, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->c:I

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->a:Lcom/appyet/mobile/data/Category;

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Category;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/colorpicker/ColorPickerPanelView;->setColor(I)V

    new-instance v1, Lcom/appyet/mobile/activity/e;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/e;-><init>(Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;)V

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ManageCategoryPropertyActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
