.class final Lcom/appyet/mobile/activity/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appyet/mobile/view/TouchListView$DropListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/al;->a:Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final drop(II)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/al;->a:Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->a(Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;)Lcom/appyet/mobile/d/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/d/t;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/activity/al;->a:Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->a(Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;)Lcom/appyet/mobile/d/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/d/t;->remove(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/al;->a:Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->a(Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;)Lcom/appyet/mobile/d/t;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/appyet/mobile/d/t;->insert(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/al;->a:Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->b(Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/al;->a:Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->b(Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/Feed;->setOrder(I)V

    iget-object v3, p0, Lcom/appyet/mobile/activity/al;->a:Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;

    invoke-static {v3}, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;->c(Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v3

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v3, v0}, Lcom/appyet/mobile/manager/bo;->d(Lcom/appyet/mobile/data/Feed;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
