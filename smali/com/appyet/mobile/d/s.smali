.class public final Lcom/appyet/mobile/d/s;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;

.field private c:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ExpandableListView;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p2, p0, Lcom/appyet/mobile/d/s;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/d/s;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iput-object p3, p0, Lcom/appyet/mobile/d/s;->c:Landroid/widget/ExpandableListView;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/d/s;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/d/s;->c:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method private a(Lcom/appyet/mobile/data/Category;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/d/s;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/d/s;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Category;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/s;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getChildId(II)J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/s;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p4, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/s;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/appyet/mobile/d/s;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->L()Lcom/appyet/mobile/context/m;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/context/m;->b:Lcom/appyet/mobile/context/m;

    if-ne v1, v2, :cond_0

    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/d/s;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-object v2, p0, Lcom/appyet/mobile/d/s;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v2, v0, v1}, Lcom/appyet/mobile/d/w;->a(Lcom/appyet/mobile/context/ApplicationContext;Lcom/appyet/mobile/data/Feed;Landroid/view/View;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    const v1, 0x7f03000f

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p4

    :goto_2
    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_2

    :cond_1
    move-object v1, p4

    goto :goto_0
.end method

.method public final getChildrenCount(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/s;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/s;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getGroupCount()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getGroupId(I)J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/s;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x2

    const/high16 v3, 0x3f80

    if-nez p3, :cond_7

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/s;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appyet/mobile/d/s;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Category;

    const v1, 0x7f0d0027

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0d0026

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0d0028

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getColor()I

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getCategoryId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    invoke-direct {p0, v0}, Lcom/appyet/mobile/d/s;->a(Lcom/appyet/mobile/data/Category;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    new-instance v5, Lcom/appyet/mobile/d/h;

    invoke-direct {v5, p0, p1}, Lcom/appyet/mobile/d/h;-><init>(Lcom/appyet/mobile/d/s;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/appyet/mobile/d/s;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/f;->x()I

    move-result v4

    if-nez v4, :cond_6

    const v4, 0x3f4ccccd

    :goto_3
    iget-object v5, p0, Lcom/appyet/mobile/d/s;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v5}, Lcom/appyet/mobile/manager/f;->x()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const v3, 0x3f666666

    :cond_0
    :goto_4
    const/4 v4, 0x2

    const/high16 v5, 0x4190

    mul-float/2addr v3, v5

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/appyet/mobile/d/s;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    invoke-virtual {v3, v0, v1}, Lcom/appyet/mobile/manager/bn;->a(Lcom/appyet/mobile/data/Category;Landroid/widget/TextView;)V

    move-object v0, v2

    :goto_5
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_6
    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_5

    :cond_2
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/appyet/mobile/d/s;->a(Lcom/appyet/mobile/data/Category;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getUnreadCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Category;->getTotalCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/appyet/mobile/d/s;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v5}, Lcom/appyet/mobile/manager/f;->x()I

    move-result v5

    if-eq v5, v9, :cond_0

    iget-object v3, p0, Lcom/appyet/mobile/d/s;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->x()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    const v3, 0x3f8ccccd

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/appyet/mobile/d/s;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->x()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    const v3, 0x3f99999a

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p3

    goto :goto_6

    :cond_5
    move v3, v4

    goto/16 :goto_4

    :cond_6
    move v4, v3

    goto/16 :goto_3

    :cond_7
    move-object v2, p3

    goto/16 :goto_0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
