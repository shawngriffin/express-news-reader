.class final Lcom/appyet/mobile/activity/dz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/TranslateActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/TranslateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/dz;->a:Lcom/appyet/mobile/activity/TranslateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/activity/dz;->a:Lcom/appyet/mobile/activity/TranslateActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/TranslateActivity;->setResult(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dz;->a:Lcom/appyet/mobile/activity/TranslateActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/TranslateActivity;->finish()V

    return-void
.end method
