.class final Lcom/appyet/mobile/activity/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageSourceActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageSourceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/bb;->a:Lcom/appyet/mobile/activity/ManageSourceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/mobile/activity/bb;->a:Lcom/appyet/mobile/activity/ManageSourceActivity;

    const-class v2, Lcom/appyet/mobile/activity/ManageSourceChoiceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/bb;->a:Lcom/appyet/mobile/activity/ManageSourceActivity;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Lcom/appyet/mobile/activity/ManageSourceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
