.class Lcom/appyet/mobile/view/viewflow/ViewFlow$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/appyet/mobile/view/viewflow/ViewFlow;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/view/viewflow/ViewFlow;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/view/viewflow/ViewFlow$1;->this$0:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/ViewFlow$1;->this$0:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    invoke-virtual {v0}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/view/viewflow/ViewFlow$1;->this$0:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    #getter for: Lcom/appyet/mobile/view/viewflow/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-static {v1}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->access$000(Lcom/appyet/mobile/view/viewflow/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/view/viewflow/ViewFlow$1;->this$0:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    iget-object v1, p0, Lcom/appyet/mobile/view/viewflow/ViewFlow$1;->this$0:Lcom/appyet/mobile/view/viewflow/ViewFlow;

    #getter for: Lcom/appyet/mobile/view/viewflow/ViewFlow;->mCurrentBufferIndex:I
    invoke-static {v1}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->access$100(Lcom/appyet/mobile/view/viewflow/ViewFlow;)I

    move-result v1

    const/4 v2, 0x1

    #calls: Lcom/appyet/mobile/view/viewflow/ViewFlow;->setVisibleView(IZ)V
    invoke-static {v0, v1, v2}, Lcom/appyet/mobile/view/viewflow/ViewFlow;->access$200(Lcom/appyet/mobile/view/viewflow/ViewFlow;IZ)V

    return-void
.end method
