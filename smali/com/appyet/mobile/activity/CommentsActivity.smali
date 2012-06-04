.class public Lcom/appyet/mobile/activity/CommentsActivity;
.super Landroid/app/ListActivity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:Ljava/net/URL;

.field private c:Lcom/appyet/mobile/data/Feed;

.field private d:I

.field private e:Lcom/appyet/mobile/d/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/activity/CommentsActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/CommentsActivity;Lcom/appyet/mobile/d/k;)Lcom/appyet/mobile/d/k;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/CommentsActivity;->e:Lcom/appyet/mobile/d/k;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/CommentsActivity;Lcom/appyet/mobile/data/Feed;)Lcom/appyet/mobile/data/Feed;
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/CommentsActivity;->c:Lcom/appyet/mobile/data/Feed;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/CommentsActivity;)Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/CommentsActivity;->b:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/data/Feed;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/CommentsActivity;->c:Lcom/appyet/mobile/data/Feed;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/CommentsActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic d(Lcom/appyet/mobile/activity/CommentsActivity;)Lcom/appyet/mobile/d/k;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/CommentsActivity;->e:Lcom/appyet/mobile/d/k;

    return-object v0
.end method

.method static synthetic e(Lcom/appyet/mobile/activity/CommentsActivity;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/appyet/mobile/activity/CommentsActivity;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appyet/mobile/activity/CommentsActivity;->d:I

    iget v0, p0, Lcom/appyet/mobile/activity/CommentsActivity;->d:I

    if-gtz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/CommentsActivity;->setProgressBarIndeterminateVisibility(Z)V

    iput v1, p0, Lcom/appyet/mobile/activity/CommentsActivity;->d:I

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/appyet/mobile/activity/CommentsActivity;)V
    .locals 1

    iget v0, p0, Lcom/appyet/mobile/activity/CommentsActivity;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appyet/mobile/activity/CommentsActivity;->d:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/CommentsActivity;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/CommentsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/CommentsActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/CommentsActivity;->requestWindowFeature(I)Z

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_0
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/CommentsActivity;->setContentView(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "feedurl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/net/URL;

    const-string v2, "feedurl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/appyet/mobile/activity/CommentsActivity;->b:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    new-instance v0, Lcom/appyet/mobile/activity/cx;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/cx;-><init>(Lcom/appyet/mobile/activity/CommentsActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/cx;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    :goto_1
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/CommentsActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/high16 v0, 0x7f0b

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/CommentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/CommentsActivity;->finish()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/CommentsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0100

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/ManageSourceUrlActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "feedurl"

    iget-object v2, p0, Lcom/appyet/mobile/activity/CommentsActivity;->b:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/CommentsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method
