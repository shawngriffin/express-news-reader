.class public Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;
.super Landroid/app/ActivityGroup;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field public static CURRENT_TAB_INDEX:Ljava/lang/String;


# instance fields
.field public ACTION_CHANGE_TAB:Ljava/lang/String;

.field private mActivityManager:Landroid/app/LocalActivityManager;

.field private mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

.field private mBottomBar:Landroid/widget/HorizontalScrollView;

.field private mBottomRadioGroup:Landroid/widget/RadioGroup;

.field private mButtonLayoutParams:Landroid/widget/RadioGroup$LayoutParams;

.field private mChangeTabBroadcastReceiver:Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$ChangeTabBroadcastReceiver;

.field private mChangeTabIntentFilter:Landroid/content/IntentFilter;

.field protected mContentViewLayout:Landroid/widget/LinearLayout;

.field private mContentViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mCurrentActivityId:Ljava/lang/String;

.field private mDelegate:Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$SliderBarActivityDelegate;

.field private mIntentList:Ljava/util/List;

.field private mStates:Ljava/util/List;

.field private mTitleList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mCurrentActivityId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected addTab(Ljava/lang/String;IIILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mStates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mIntentList:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addTab(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->addTab(Ljava/lang/String;IIILandroid/content/Intent;)V

    return-void
.end method

.method public commit()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mBottomRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mBottomRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/view/tabview/TabBarButton;

    invoke-virtual {v1}, Lcom/appyet/mobile/view/tabview/TabBarButton;->recycle()V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mBottomRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :try_start_1
    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

    const/high16 v4, 0x4280

    invoke-static {v1, v4}, Lcom/appyet/mobile/e/f;->a(Landroid/content/Context;F)I

    move-result v1

    div-int v1, v3, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mIntentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v1, :cond_1

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mIntentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int v1, v3, v1

    :goto_2
    sput v1, Lcom/appyet/mobile/view/tabview/RadioStateDrawable;->mWidth:I

    new-instance v3, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v1, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mButtonLayoutParams:Landroid/widget/RadioGroup$LayoutParams;

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mIntentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v8, :cond_2

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mBottomBar:Landroid/widget/HorizontalScrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mContentViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->setCurrentTab(I)V

    :goto_4
    return-void

    :catch_0
    move-exception v1

    const/4 v1, 0x5

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

    const/high16 v3, 0x4280

    invoke-static {v1, v3}, Lcom/appyet/mobile/e/f;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_2

    :cond_2
    move v7, v2

    :goto_5
    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mIntentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_6

    new-instance v1, Lcom/appyet/mobile/view/tabview/TabBarButton;

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v1, v2}, Lcom/appyet/mobile/view/tabview/TabBarButton;-><init>(Lcom/appyet/mobile/context/ApplicationContext;)V

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mStates:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [I

    move-object v5, v0

    array-length v2, v5

    if-ne v2, v8, :cond_4

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mTitleList:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v5, v3

    iget-object v4, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/bu;->I()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/appyet/mobile/view/tabview/TabBarButton;->setState(Ljava/lang/String;IZ)V

    :cond_3
    :goto_6
    invoke-virtual {v1, v7}, Lcom/appyet/mobile/view/tabview/TabBarButton;->setId(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/view/tabview/TabBarButton;->setGravity(I)V

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mBottomRadioGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mButtonLayoutParams:Landroid/widget/RadioGroup$LayoutParams;

    invoke-virtual {v2, v1, v7, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_5

    :cond_4
    array-length v2, v5

    if-ne v2, v9, :cond_5

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mTitleList:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v5, v3

    const/4 v4, 0x1

    aget v4, v5, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/appyet/mobile/view/tabview/TabBarButton;->setState(Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_4

    :cond_5
    :try_start_3
    array-length v2, v5

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mTitleList:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v5, v3

    const/4 v4, 0x1

    aget v4, v5, v4

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v6, v6, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v6}, Lcom/appyet/mobile/manager/bu;->I()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/appyet/mobile/view/tabview/TabBarButton;->setState(Ljava/lang/String;IIIZ)V

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mBottomBar:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mContentViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3
.end method

.method public destroy(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, v0}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    :try_start_0
    const-class v0, Landroid/app/LocalActivityManager;

    const-string v3, "mActivities"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v0, Landroid/app/LocalActivityManager;

    const-string v3, "mActivityArray"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v5, "id"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    move v0, v2

    :cond_3
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentTab()I
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mBottomRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mTitleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mIntentList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->startGroupActivity(Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mDelegate:Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$SliderBarActivityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mDelegate:Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$SliderBarActivityDelegate;

    invoke-virtual {v0, p2}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$SliderBarActivityDelegate;->onTabChanged(I)V

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mBottomRadioGroup:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mApplicationContext:Lcom/appyet/mobile/context/ApplicationContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".changetab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->ACTION_CHANGE_TAB:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->setContentView(I)V

    const v0, 0x7f0d00c4

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mContentViewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0d00c5

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mBottomBar:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0d00c6

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mBottomRadioGroup:Landroid/widget/RadioGroup;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mContentViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mBottomRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mIntentList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mTitleList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mStates:Ljava/util/List;

    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    const/16 v1, 0x40

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mButtonLayoutParams:Landroid/widget/RadioGroup$LayoutParams;

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mChangeTabBroadcastReceiver:Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$ChangeTabBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->ACTION_CHANGE_TAB:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mChangeTabIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$ChangeTabBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$ChangeTabBroadcastReceiver;-><init>(Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;)V

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mChangeTabBroadcastReceiver:Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$ChangeTabBroadcastReceiver;

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mChangeTabBroadcastReceiver:Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$ChangeTabBroadcastReceiver;

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mChangeTabIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    return-void
.end method

.method public setCurrentTab(I)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mBottomRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mIntentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->startGroupActivity(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public setDelegate(Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$SliderBarActivityDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mDelegate:Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$SliderBarActivityDelegate;

    return-void
.end method

.method public startGroupActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mCurrentActivityId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mCurrentActivityId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mContentViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mCurrentActivityId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mCurrentActivityId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->destroy(Ljava/lang/String;)Z

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mCurrentActivityId:Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mContentViewLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mContentViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity;->mCurrentActivityId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
