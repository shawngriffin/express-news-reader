.class public Lcom/appyet/mobile/activity/SleepTimerActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:I

.field private c:Landroid/view/View$OnClickListener;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/appyet/mobile/activity/SleepTimerActivity;->b:I

    new-instance v0, Lcom/appyet/mobile/activity/ds;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ds;-><init>(Lcom/appyet/mobile/activity/SleepTimerActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/SleepTimerActivity;->c:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/mobile/activity/dq;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/dq;-><init>(Lcom/appyet/mobile/activity/SleepTimerActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/SleepTimerActivity;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/SleepTimerActivity;)I
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/activity/SleepTimerActivity;->b:I

    return v0
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/SleepTimerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/appyet/mobile/activity/SleepTimerActivity;->b:I

    return p1
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/SleepTimerActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/SleepTimerActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SleepTimerActivity;->setContentView(I)V

    const v0, 0x7f0b0198

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SleepTimerActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/SleepTimerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/SleepTimerActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SleepTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/SleepTimerActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SleepTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/mobile/activity/SleepTimerActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00c2

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SleepTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d00c3

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/SleepTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/appyet/mobile/activity/SleepTimerActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->aH()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v2, Lcom/appyet/mobile/activity/dr;

    invoke-direct {v2, p0, v0}, Lcom/appyet/mobile/activity/dr;-><init>(Lcom/appyet/mobile/activity/SleepTimerActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
