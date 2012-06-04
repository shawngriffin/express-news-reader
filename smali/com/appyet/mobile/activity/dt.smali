.class final Lcom/appyet/mobile/activity/dt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/dt;->a:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/activity/dt;->a:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;->a(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/dt;->a:Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;

    new-instance v2, Lcom/appyet/mobile/activity/bx;

    invoke-direct {v2, v1, v0}, Lcom/appyet/mobile/activity/bx;-><init>(Lcom/appyet/mobile/activity/ManageSourceOpmlActivity;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/appyet/mobile/activity/bx;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    return-void
.end method
