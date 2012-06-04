.class final Lcom/appyet/mobile/d/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/appyet/mobile/d/s;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/d/s;I)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/d/h;->b:Lcom/appyet/mobile/d/s;

    iput p2, p0, Lcom/appyet/mobile/d/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/d/h;->b:Lcom/appyet/mobile/d/s;

    invoke-static {v0}, Lcom/appyet/mobile/d/s;->a(Lcom/appyet/mobile/d/s;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/appyet/mobile/d/h;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/d/h;->b:Lcom/appyet/mobile/d/s;

    invoke-static {v0}, Lcom/appyet/mobile/d/s;->a(Lcom/appyet/mobile/d/s;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/appyet/mobile/d/h;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/d/h;->b:Lcom/appyet/mobile/d/s;

    invoke-static {v0}, Lcom/appyet/mobile/d/s;->a(Lcom/appyet/mobile/d/s;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/appyet/mobile/d/h;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method
