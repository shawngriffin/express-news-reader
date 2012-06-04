.class final Lcom/appyet/mobile/activity/dj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/dj;->a:Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/dj;->a:Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;

    invoke-virtual {v0, p3}, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->setResult(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dj;->a:Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;->finish()V

    return-void
.end method
