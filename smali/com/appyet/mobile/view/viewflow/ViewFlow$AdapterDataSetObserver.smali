.class Lcom/appyet/mobile/view/viewflow/ViewFlow$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic this$0:Lcom/appyet/mobile/view/viewflow/ViewFlow;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/view/viewflow/ViewFlow;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/view/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    iget-object v1, p0, Lcom/appyet/mobile/view/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    #getter for: Lcom/appyet/mobile/view/viewflow/ViewFlow;->mCurrentBufferIndex:I
    invoke-static {v1}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->access$100(Lcom/appyet/mobile/view/viewflow/ViewFlow;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/appyet/mobile/view/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    #getter for: Lcom/appyet/mobile/view/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->access$300(Lcom/appyet/mobile/view/viewflow/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/appyet/mobile/view/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    #getter for: Lcom/appyet/mobile/view/viewflow/ViewFlow;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->access$300(Lcom/appyet/mobile/view/viewflow/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/view/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    #setter for: Lcom/appyet/mobile/view/viewflow/ViewFlow;->mCurrentAdapterIndex:I
    invoke-static {v1, v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->access$402(Lcom/appyet/mobile/view/viewflow/ViewFlow;I)I

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    #calls: Lcom/appyet/mobile/view/viewflow/ViewFlow;->resetFocus()V
    invoke-static {v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->access$500(Lcom/appyet/mobile/view/viewflow/ViewFlow;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method
