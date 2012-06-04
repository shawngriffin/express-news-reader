.class public final Lcom/appyet/mobile/d/n;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    const v0, 0x7f030039

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/appyet/mobile/d/n;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/d/n;->b:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    if-nez p2, :cond_e

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appyet/mobile/d/n;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f030039

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    :goto_0
    const v2, 0x7f0d00b0

    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d00b1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d00b6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d00ba

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d00b7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    const v7, 0x7f0d00b8

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0d00b9

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0d00b3

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f0d00b4

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const v11, 0x7f0d00b5

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v12, 0x7f0d0073

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v13, 0x7f0d00af

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/appyet/mobile/d/n;->a:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/appyet/mobile/data/FeedItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appyet/mobile/d/n;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v15, v15, Lcom/appyet/mobile/context/ApplicationContext;->q:Ljava/util/Hashtable;

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getFeed()Lcom/appyet/mobile/data/Feed;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/appyet/mobile/data/Feed;

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v15}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.#"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string v3, "%sMB"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLength()Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4130

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v17

    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v15, "audio"

    invoke-virtual {v2, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appyet/mobile/d/n;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v15, 0x7f0b000c

    invoke-virtual {v2, v15}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Lcom/appyet/mobile/e/d;->a(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, " "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getIsStar()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v2

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v2, v3, :cond_3

    const v2, 0x7f02009e

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v2

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v2, v3, :cond_6

    const v2, 0x7f020007

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getIsQueued()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_5
    sget-object v2, Lcom/appyet/mobile/activity/PlayListActivity;->c:Lcom/appyet/mobile/activity/bo;

    sget-object v3, Lcom/appyet/mobile/activity/bo;->a:Lcom/appyet/mobile/activity/bo;

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appyet/mobile/d/n;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->Z()Lcom/appyet/mobile/context/l;

    move-result-object v2

    sget-object v3, Lcom/appyet/mobile/context/l;->a:Lcom/appyet/mobile/context/l;

    if-ne v2, v3, :cond_9

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appyet/mobile/d/n;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->ah()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v2, v2, v7

    if-nez v2, :cond_c

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appyet/mobile/d/n;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->b:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/e;->f()Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0x7f02009b

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_7
    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_d

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v2

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v2, v3, :cond_d

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appyet/mobile/d/n;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/appyet/mobile/e/d;->a(Lcom/appyet/mobile/context/ApplicationContext;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appyet/mobile/d/n;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/appyet/mobile/e/d;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v2, v16

    :goto_9
    return-object v2

    :cond_0
    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v15, "video"

    invoke-virtual {v2, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appyet/mobile/d/n;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v15, 0x7f0b000d

    invoke-virtual {v2, v15}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appyet/mobile/d/n;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const v15, 0x7f0b000e

    invoke-virtual {v2, v15}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_a
    invoke-static {v3}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_9

    :cond_3
    :try_start_2
    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v2

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v2, v3, :cond_4

    const v2, 0x7f02009f

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v14}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v2

    sget-object v3, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v2, v3, :cond_7

    const v2, 0x7f020009

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_7
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_8
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    :cond_9
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_6

    :cond_a
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_6

    :cond_b
    const v2, 0x7f02009a

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_c
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_d
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object/from16 v2, p2

    goto :goto_a

    :cond_e
    move-object/from16 v16, p2

    goto/16 :goto_0
.end method
