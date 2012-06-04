.class final Lcom/appyet/mobile/activity/dr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/appyet/mobile/activity/SleepTimerActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/SleepTimerActivity;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/dr;->b:Lcom/appyet/mobile/activity/SleepTimerActivity;

    iput-object p2, p0, Lcom/appyet/mobile/activity/dr;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/activity/dr;->b:Lcom/appyet/mobile/activity/SleepTimerActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/SleepTimerActivity;->a(Lcom/appyet/mobile/activity/SleepTimerActivity;I)I

    iget-object v0, p0, Lcom/appyet/mobile/activity/dr;->a:Landroid/widget/TextView;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dr;->b:Lcom/appyet/mobile/activity/SleepTimerActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/SleepTimerActivity;->b(Lcom/appyet/mobile/activity/SleepTimerActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0, p2}, Lcom/appyet/mobile/manager/f;->k(I)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
