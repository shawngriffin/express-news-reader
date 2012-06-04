.class final Lcom/appyet/mobile/activity/cg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/cg;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/activity/cg;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->f(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cg;->a:Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;->a(Lcom/appyet/mobile/activity/ManageSourcePropertyActivity;Ljava/lang/Long;)Ljava/lang/Long;

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
