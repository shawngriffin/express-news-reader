.class public Lcom/appyet/mobile/activity/MainActivity;
.super Lcom/appyet/mobile/base/activity/BaseScrollableTabActivity;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/appyet/mobile/context/ApplicationContext;

.field private c:I

.field private d:I

.field private e:Lcom/appyet/mobile/b/g;

.field private f:Landroid/view/GestureDetector;

.field private g:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Up2a2ta"

    sput-object v0, Lcom/appyet/mobile/activity/MainActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/appyet/mobile/base/activity/BaseScrollableTabActivity;-><init>()V

    iput v0, p0, Lcom/appyet/mobile/activity/MainActivity;->c:I

    iput v0, p0, Lcom/appyet/mobile/activity/MainActivity;->d:I

    new-instance v0, Lcom/appyet/mobile/b/g;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/b/g;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->e:Lcom/appyet/mobile/b/g;

    new-instance v0, Lcom/appyet/mobile/activity/z;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/z;-><init>(Lcom/appyet/mobile/activity/MainActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->g:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/MainActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/MainActivity;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->f:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/MainActivity;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->mContentViewLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->mContentViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->mContentViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->g:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/appyet/mobile/activity/MainActivity;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/appyet/mobile/activity/MainActivity;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appyet/mobile/activity/MainActivity;->c:I

    iget v0, p0, Lcom/appyet/mobile/activity/MainActivity;->c:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->mContentViewLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->mContentViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->mContentViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iput v2, p0, Lcom/appyet/mobile/activity/MainActivity;->c:I

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/appyet/mobile/activity/MainActivity;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/appyet/mobile/activity/MainActivity;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appyet/mobile/activity/MainActivity;->c:I

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->mContentViewLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->mContentViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->mContentViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/appyet/mobile/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/MainActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/appyet/mobile/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/MainActivity;->a()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/appyet/mobile/base/activity/BaseScrollableTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bn;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->j()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ar()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ch;->a()Lcom/appyet/mobile/manager/cl;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/manager/cl;->a:Lcom/appyet/mobile/manager/cl;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->b:Lcom/appyet/mobile/manager/cl;

    const-string v2, "Image/"

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->a(Lcom/appyet/mobile/manager/cl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->b:Lcom/appyet/mobile/manager/cl;

    const-string v2, "FavIcon/"

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->a(Lcom/appyet/mobile/manager/cl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->b:Lcom/appyet/mobile/manager/cl;

    const-string v2, "Podcast/"

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->a(Lcom/appyet/mobile/manager/cl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->b:Lcom/appyet/mobile/manager/cl;

    const-string v2, "Thumbnail/"

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->a(Lcom/appyet/mobile/manager/cl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->b()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->i()V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/activity/ec;

    invoke-interface {v0}, Lcom/appyet/mobile/activity/ec;->a()V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/activity/ec;

    invoke-interface {v0}, Lcom/appyet/mobile/activity/ec;->b()V

    sget-object v0, Lcom/appyet/mobile/manager/i;->a:Ljava/util/Locale;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appyet/mobile/manager/i;->a:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->t()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/appyet/mobile/manager/i;->a:Ljava/util/Locale;

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/ch;->a()Lcom/appyet/mobile/manager/cl;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/manager/cl;->b:Lcom/appyet/mobile/manager/cl;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->a:Lcom/appyet/mobile/manager/cl;

    const-string v2, "Image/"

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->a(Lcom/appyet/mobile/manager/cl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->a:Lcom/appyet/mobile/manager/cl;

    const-string v2, "FavIcon/"

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->a(Lcom/appyet/mobile/manager/cl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->a:Lcom/appyet/mobile/manager/cl;

    const-string v2, "Podcast/"

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->a(Lcom/appyet/mobile/manager/cl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    sget-object v1, Lcom/appyet/mobile/manager/cl;->a:Lcom/appyet/mobile/manager/cl;

    const-string v2, "Thumbnail/"

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->a(Lcom/appyet/mobile/manager/cl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/appyet/mobile/base/activity/BaseScrollableTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/appyet/mobile/activity/MainActivity;->d:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->commit()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    iput v3, p0, Lcom/appyet/mobile/activity/MainActivity;->d:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    iput v2, p0, Lcom/appyet/mobile/activity/MainActivity;->d:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    invoke-virtual {v0, p0}, Lcom/appyet/mobile/manager/bn;->a(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lcom/appyet/mobile/base/activity/BaseScrollableTabActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/activity/MainActivity;->d:I

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->e:Lcom/appyet/mobile/b/g;

    invoke-virtual {v0}, Lcom/appyet/mobile/b/g;->a()V

    new-instance v0, Lcom/appyet/mobile/activity/ag;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ag;-><init>(Lcom/appyet/mobile/activity/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->setDelegate(Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$SliderBarActivityDelegate;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->b()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->f(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->h(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->d()Lcom/appyet/mobile/manager/ax;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->a(Lcom/appyet/mobile/manager/ax;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->b(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->c(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->a(Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    const v1, 0x7f0b0179

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0095

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/appyet/mobile/activity/y;

    invoke-direct {v2, p0}, Lcom/appyet/mobile/activity/y;-><init>(Lcom/appyet/mobile/activity/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->b()I

    move-result v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->c()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/f;->a(J)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/manager/f;->b(J)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->b(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->f()Ljava/util/List;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v2, "feedreader15.db"

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->aE()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    if-nez v2, :cond_9

    :try_start_2
    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->aF()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->D()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_2
    if-ge v6, v9, :cond_c

    aget-object v10, v8, v6

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b6

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->J()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->K()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/appyet/mobile/activity/AllActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/appyet/mobile/activity/MainActivity;->addTab(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LATEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b7

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->J()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->K()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/appyet/mobile/activity/LatestActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/appyet/mobile/activity/MainActivity;->addTab(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNREAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200bb

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->J()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->K()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/appyet/mobile/activity/UnreadActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/appyet/mobile/activity/MainActivity;->addTab(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->y()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200ba

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->J()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->K()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/appyet/mobile/activity/StarActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/appyet/mobile/activity/MainActivity;->addTab(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_5
    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->B()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PODCAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b8

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->J()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->K()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/appyet/mobile/activity/PodcastActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/appyet/mobile/activity/MainActivity;->addTab(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_6
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOURCE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->x()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b9

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->J()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->K()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/appyet/mobile/activity/SourceActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/appyet/mobile/activity/MainActivity;->addTab(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_7
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WEB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->A()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f0b00df

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200bc

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->J()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->K()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/appyet/mobile/activity/WebActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/appyet/mobile/activity/MainActivity;->addTab(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_8
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V

    goto/16 :goto_1

    :cond_9
    :try_start_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->r()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    new-instance v0, Lcom/appyet/mobile/activity/di;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/di;-><init>(Lcom/appyet/mobile/activity/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/di;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/mobile/manager/bl;->a(ZZZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->commit()V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/appyet/mobile/activity/dw;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/dw;-><init>(Lcom/appyet/mobile/activity/MainActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->f:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->az()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1, v7}, Lcom/appyet/mobile/manager/bl;->a(ZZZ)V

    :cond_d
    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MainActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_6
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "feed_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "feed_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/appyet/mobile/activity/SourceItemActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "feed_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_e
    :goto_3
    return-void

    :cond_f
    const-string v1, "category_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "category_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/appyet/mobile/activity/SourceItemActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "category_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0125

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->t()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->v:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0121

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/ManageSourceOrganizeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x13

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
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

    const v1, 0x7f0d011b

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/HelpUsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0115

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v1, 0x7f0b000a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/mobile/manager/bl;->a(ZZZ)V

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0116

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->n:Lcom/appyet/mobile/manager/bl;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bl;->b()V

    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0118

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->d(Z)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getCurrentTab()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->setCurrentTab(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/activity/ec;

    invoke-interface {v0}, Lcom/appyet/mobile/activity/ec;->b()V

    goto/16 :goto_0

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0119

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->d(Z)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/activity/ec;

    invoke-interface {v0}, Lcom/appyet/mobile/activity/ec;->b()V

    goto/16 :goto_0

    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    const v1, 0x7f0d0117

    if-ne v0, v1, :cond_9

    :try_start_2
    new-instance v0, Lcom/appyet/mobile/activity/ae;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ae;-><init>(Lcom/appyet/mobile/activity/MainActivity;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->o()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0095

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_8
    :try_start_4
    new-instance v0, Lcom/appyet/mobile/activity/ch;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ch;-><init>(Lcom/appyet/mobile/activity/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/ch;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_9
    :try_start_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v0

    const v1, 0x7f0d011a

    if-ne v0, v1, :cond_b

    :try_start_6
    new-instance v0, Lcom/appyet/mobile/activity/ac;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ac;-><init>(Lcom/appyet/mobile/activity/MainActivity;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->o()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0095

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :cond_a
    :try_start_8
    new-instance v0, Lcom/appyet/mobile/activity/du;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/du;-><init>(Lcom/appyet/mobile/activity/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/du;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :cond_b
    :try_start_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result v0

    const v1, 0x7f0d011c

    if-ne v0, v1, :cond_d

    :try_start_a
    new-instance v0, Lcom/appyet/mobile/activity/ab;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ab;-><init>(Lcom/appyet/mobile/activity/MainActivity;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->o()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0095

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    :cond_c
    :try_start_c
    new-instance v0, Lcom/appyet/mobile/activity/ad;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/ad;-><init>(Lcom/appyet/mobile/activity/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/ad;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_0

    :cond_d
    :try_start_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    move-result v0

    const v1, 0x7f0d011d

    if-ne v0, v1, :cond_f

    :try_start_e
    new-instance v0, Lcom/appyet/mobile/activity/aa;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/aa;-><init>(Lcom/appyet/mobile/activity/MainActivity;)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->o()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0095

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {p0, v2}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_f
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_0

    :cond_e
    :try_start_10
    new-instance v0, Lcom/appyet/mobile/activity/cr;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/cr;-><init>(Lcom/appyet/mobile/activity/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/cr;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_0

    :cond_f
    :try_start_11
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d011e

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->onSearchRequested()Z

    goto/16 :goto_0

    :cond_10
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0128

    if-ne v0, v1, :cond_11

    invoke-direct {p0}, Lcom/appyet/mobile/activity/MainActivity;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->e(Z)V

    const v0, 0x7f0b00c3

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_11
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0129

    if-ne v0, v1, :cond_12

    invoke-direct {p0}, Lcom/appyet/mobile/activity/MainActivity;->b()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->e(Z)V

    const v0, 0x7f0b00c3

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_12
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0120

    if-ne v0, v1, :cond_13

    new-instance v0, Lcom/appyet/mobile/activity/dk;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/dk;-><init>(Lcom/appyet/mobile/activity/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/dk;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    goto/16 :goto_0

    :cond_13
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d011f

    if-ne v0, v1, :cond_14

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/CleanUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_14
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0122

    if-ne v0, v1, :cond_15

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/ManageSourceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_15
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0123

    if-ne v0, v1, :cond_16

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/ManageCategoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_16
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0126

    if-ne v0, v1, :cond_17

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    move-result-object v0

    :try_start_12
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    :try_start_13
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy.MM.dd_HH.mm.ss_zzz"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v3, "\n\n\n-------- Environment --------\n"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Time\t= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Device\t= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    move-result-object v0

    :try_start_14
    const-class v2, Landroid/os/Build;

    const-string v3, "MANUFACTURER"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Make\t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    move-result-object v0

    :goto_2
    :try_start_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Model\t= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Product\t= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "App\t\t= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (build "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Locale\t= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Res\t\t= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Source Version Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----------------------------\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "plain/text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v5}, Lcom/appyet/mobile/manager/bu;->O()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.SUBJECT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b01bb

    invoke-virtual {p0, v4}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/mobile/context/ApplicationContext;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b0183

    invoke-virtual {p0, v4}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f0b0183

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    const-string v1, "unknown"

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/16 v1, 0x45

    iput v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object v1, v0

    goto/16 :goto_1

    :cond_17
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0127

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    goto/16 :goto_0

    :catch_6
    move-exception v2

    goto/16 :goto_2

    :catch_7
    move-exception v2

    goto/16 :goto_2

    :catch_8
    move-exception v2

    goto/16 :goto_2

    :catch_9
    move-exception v2

    goto/16 :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f0d0123

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x7f0d0118

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d0119

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/appyet/mobile/activity/UnreadActivity;

    if-eq v2, v3, :cond_8

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->l()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    const v0, 0x7f0d0115

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d0116

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->e()I

    move-result v2

    if-lez v2, :cond_9

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-boolean v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->A:Z

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f0d011b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->t()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0d0122

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->O()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const v0, 0x7f0d0126

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->P()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const v0, 0x7f0d0127

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    const v0, 0x7f0d0128

    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d0129

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->B:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->B:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    :cond_5
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->B()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_3
    const v0, 0x7f0d0121

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->aa()Lcom/appyet/mobile/context/i;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/context/i;->f:Lcom/appyet/mobile/context/i;

    if-ne v1, v2, :cond_d

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_4
    invoke-super {p0, p1}, Lcom/appyet/mobile/base/activity/BaseScrollableTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_7
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_8
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_9
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_a
    :try_start_1
    iget-object v2, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->ae()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_b
    const/4 v2, 0x1

    :try_start_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_c
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_d
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/appyet/mobile/activity/MainActivity;->a()V

    :goto_0
    invoke-super {p0}, Lcom/appyet/mobile/base/activity/BaseScrollableTabActivity;->onResume()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/MainActivity;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appyet/mobile/context/ApplicationContext;->a:Z

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/appyet/mobile/activity/MainActivity;->b()V

    goto :goto_0
.end method
