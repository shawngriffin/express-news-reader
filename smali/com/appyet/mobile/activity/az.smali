.class final Lcom/appyet/mobile/activity/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/ManageSourceActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/ManageSourceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/az;->a:Lcom/appyet/mobile/activity/ManageSourceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/appyet/mobile/c/e;

    check-cast p2, Lcom/appyet/mobile/c/e;

    iget-object v0, p2, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p2, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
