.class public final Lcom/appyet/mobile/d/a;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/d/a;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    if-nez p2, :cond_1e

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f030013

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v19

    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    move-object v13, v0

    const v3, 0x7f0d0036

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v3, 0x7f0d0037

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v3, 0x7f0d0041

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v3, 0x7f0d0047

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v4, 0x7f0d0046

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    const v7, 0x7f0d0045

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    const v8, 0x7f0d003a

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    move-object v9, v0

    const v8, 0x7f0d0039

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    move-object v10, v0

    const v8, 0x7f0d003c

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ProgressBar;

    move-object v14, v0

    const v8, 0x7f0d003f

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    move-object v15, v0

    const v8, 0x7f0d0040

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v8, 0x7f0d003b

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v11, 0x7f0d0049

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/appyet/mobile/view/TextViewEx;

    const v17, 0x7f0d0038

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    const v18, 0x7f0d0034

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->scrollTo(II)V

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/appyet/mobile/view/TextViewEx;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_8

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v20

    sget-object v21, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    const v20, 0x7f02009e

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v14, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v20, 0x3e8

    move/from16 v0, v20

    if-le v10, v0, :cond_7

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v14, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v10, 0x0

    invoke-virtual {v14, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_2
    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_3
    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getIsQueued()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getIsStar()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v3

    sget-object v4, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v3, v4, :cond_c

    const v3, 0x7f020007

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getAuthor()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/appyet/mobile/e/d;->b(Lcom/appyet/mobile/context/ApplicationContext;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/appyet/mobile/e/d;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v18 .. v18}, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->setVisibility(I)V

    :cond_1
    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.#"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLength()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_f

    const-string v4, "%sMB"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual {v3, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :goto_8
    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v7, "audio"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v7, 0x7f0b000c

    invoke-virtual {v3, v7}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_9
    const/4 v7, 0x0

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v9, v10}, Lcom/appyet/mobile/e/d;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/f;->d()I

    move-result v4

    if-nez v4, :cond_13

    const v3, 0x3f4ccccd

    move v4, v3

    :goto_b
    const/high16 v3, 0x4120

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v7, v7, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v7}, Lcom/appyet/mobile/manager/f;->j()I

    move-result v7

    if-nez v7, :cond_17

    const/4 v3, 0x0

    :cond_2
    :goto_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v7, v7, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v7}, Lcom/appyet/mobile/manager/f;->c()I

    move-result v7

    if-nez v7, :cond_1b

    sget-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v11, v7}, Lcom/appyet/mobile/view/TextViewEx;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    :goto_d
    const/4 v7, 0x2

    const/high16 v9, 0x4188

    mul-float/2addr v9, v4

    invoke-virtual {v11, v7, v9}, Lcom/appyet/mobile/view/TextViewEx;->setTextSize(IF)V

    const/high16 v7, 0x3f80

    invoke-virtual {v11, v3, v7}, Lcom/appyet/mobile/view/TextViewEx;->setLineSpacing(FF)V

    const/4 v3, 0x1

    const/high16 v7, 0x4180

    mul-float/2addr v7, v4

    invoke-virtual {v8, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x1

    const/high16 v7, 0x4198

    mul-float/2addr v7, v4

    invoke-virtual {v5, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x1

    const/high16 v7, 0x4180

    mul-float/2addr v7, v4

    invoke-virtual {v6, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x1

    const/high16 v7, 0x4180

    mul-float/2addr v7, v4

    invoke-virtual {v8, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x1

    const/high16 v7, 0x4180

    mul-float/2addr v4, v7

    invoke-virtual {v12, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z

    move-result v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/appyet/mobile/manager/bn;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/appyet/mobile/view/TextViewEx;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0d003e

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    new-instance v4, Lcom/appyet/mobile/d/p;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11, v3, v13}, Lcom/appyet/mobile/d/p;-><init>(Lcom/appyet/mobile/d/a;Lcom/appyet/mobile/view/TextViewEx;Landroid/widget/ProgressBar;Lcom/appyet/mobile/data/FeedItem;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Lcom/appyet/mobile/d/p;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/appyet/mobile/view/TextViewEx;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/appyet/mobile/view/TextViewEx;->setFocusable(Z)V

    move-object/from16 v3, v19

    :cond_4
    :goto_e
    return-object v3

    :cond_5
    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v20

    sget-object v21, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    const v20, 0x7f02009f

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v3

    move-object v4, v3

    move-object/from16 v3, v19

    :goto_f
    invoke-static {v4}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_e

    :cond_6
    const/16 v20, 0x8

    :try_start_2
    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v3

    move-object v4, v3

    move-object/from16 v3, v19

    :goto_10
    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->f()V

    invoke-static {v4}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V

    if-nez v3, :cond_4

    new-instance v3, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_e

    :cond_7
    const/16 v10, 0x8

    :try_start_3
    invoke-virtual {v14, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v10, 0x8

    invoke-virtual {v14, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_b
    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v3

    sget-object v4, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v3, v4, :cond_d

    const v3, 0x7f020009

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_d
    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_e
    const/16 v3, 0x8

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_f
    const-string v4, "%sMB"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLength()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v14, v10

    const-wide/high16 v16, 0x4130

    div-double v14, v14, v16

    invoke-virtual {v3, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_8

    :cond_10
    invoke-virtual {v13}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v7, "video"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v7, 0x7f0b000d

    invoke-virtual {v3, v7}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const v7, 0x7f0b000e

    invoke-virtual {v3, v7}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_9

    :cond_12
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/f;->d()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_14

    const v3, 0x3f666666

    move v4, v3

    goto/16 :goto_b

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/f;->d()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_15

    const/high16 v3, 0x3f80

    move v4, v3

    goto/16 :goto_b

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/f;->d()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_16

    const v3, 0x3f8ccccd

    move v4, v3

    goto/16 :goto_b

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/f;->d()I

    move-result v4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_1d

    const v3, 0x3f99999a

    move v4, v3

    goto/16 :goto_b

    :cond_17
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v7, v7, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v7}, Lcom/appyet/mobile/manager/f;->j()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_18

    const/high16 v3, 0x40a0

    goto/16 :goto_c

    :cond_18
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v7, v7, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v7}, Lcom/appyet/mobile/manager/f;->j()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_19

    const/high16 v3, 0x4120

    goto/16 :goto_c

    :cond_19
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v7, v7, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v7}, Lcom/appyet/mobile/manager/f;->j()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_1a

    const/high16 v3, 0x4170

    goto/16 :goto_c

    :cond_1a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v7, v7, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v7}, Lcom/appyet/mobile/manager/f;->j()I

    move-result v7

    const/4 v9, 0x4

    if-ne v7, v9, :cond_2

    const/high16 v3, 0x41a0

    goto/16 :goto_c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v7, v7, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v7}, Lcom/appyet/mobile/manager/f;->c()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_1c

    sget-object v7, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget-object v7, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v11, v7}, Lcom/appyet/mobile/view/TextViewEx;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appyet/mobile/d/a;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v7, v7, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v7}, Lcom/appyet/mobile/manager/f;->c()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_3

    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v11, v7}, Lcom/appyet/mobile/view/TextViewEx;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_d

    :catch_2
    move-exception v3

    move-object v4, v3

    move-object/from16 v3, p2

    goto/16 :goto_10

    :catch_3
    move-exception v3

    move-object v4, v3

    move-object/from16 v3, p2

    goto/16 :goto_f

    :cond_1d
    move v4, v3

    goto/16 :goto_b

    :cond_1e
    move-object/from16 v19, p2

    goto/16 :goto_0
.end method
