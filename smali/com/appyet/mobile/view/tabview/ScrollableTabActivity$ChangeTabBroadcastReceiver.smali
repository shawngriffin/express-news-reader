.class public Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$ChangeTabBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$ChangeTabBroadcastReceiver;->this$0:Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->CURRENT_TAB_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$ChangeTabBroadcastReceiver;->this$0:Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->setCurrentTab(I)V

    return-void
.end method
