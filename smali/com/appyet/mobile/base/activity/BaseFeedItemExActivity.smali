.class public Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;
.super Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;


# instance fields
.field private g:Landroid/view/GestureDetector;

.field private h:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;-><init>()V

    new-instance v0, Lcom/appyet/mobile/base/activity/ba;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/base/activity/ba;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->h:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->g:Landroid/view/GestureDetector;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/appyet/mobile/base/activity/au;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/base/activity/au;-><init>(Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->g:Landroid/view/GestureDetector;

    const v0, 0x7f0d00c7

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->h:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d010b

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v1, 0x7f0b000a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/mobile/manager/bl;->a(JZ)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/mobile/manager/bl;->a(ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d010c

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bl;->b()V

    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d010e

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->d(Z)V

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b()V

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d010f

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->d(Z)V

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b()V

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d010d

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->i()V

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0110

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->e()V

    goto :goto_0

    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0111

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->f()V

    goto/16 :goto_0

    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0112

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->g()V

    goto/16 :goto_0

    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0113

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->h()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->e(Z)V

    const v0, 0x7f0b00c3

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0114

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->j()V

    iget-object v0, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->e(Z)V

    const v0, 0x7f0b00c3

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v0, 0x7f0d010e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d010f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    const v0, 0x7f0d0112

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->c:Ljava/lang/Long;

    if-nez v1, :cond_3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    const v0, 0x7f0d010b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d010c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    const v0, 0x7f0d0113

    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d0114

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->B:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->B:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    invoke-super {p0, p1}, Lcom/appyet/mobile/base/activity/BaseFeedItemActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_2
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/appyet/mobile/base/activity/BaseFeedItemExActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->ae()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    :try_start_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method
