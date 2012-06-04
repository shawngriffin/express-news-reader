.class public final Lcom/appyet/mobile/d/e;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:I

.field private c:Landroid/view/LayoutInflater;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZ)V
    .locals 2

    const v0, 0x7f030011

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/d/e;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iput p3, p0, Lcom/appyet/mobile/d/e;->b:I

    iget-object v0, p0, Lcom/appyet/mobile/d/e;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/appyet/mobile/d/e;->c:Landroid/view/LayoutInflater;

    iput-boolean p4, p0, Lcom/appyet/mobile/d/e;->d:Z

    return-void
.end method

.method public static a(Lcom/appyet/mobile/context/ApplicationContext;ILcom/appyet/mobile/d/u;Lcom/appyet/mobile/data/FeedItem;ZLcom/appyet/mobile/data/Feed;)V
    .locals 10

    const v0, 0x7f030017

    if-eq p1, v0, :cond_0

    const v0, 0x7f030018

    if-ne p1, v0, :cond_16

    :cond_0
    iget-object v0, p2, Lcom/appyet/mobile/d/u;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->t()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->G()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    :cond_1
    iget-object v0, p2, Lcom/appyet/mobile/d/u;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p2, Lcom/appyet/mobile/d/u;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getIsStar()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v0, v1, :cond_7

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->g:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_2
    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_9

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->j:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_3
    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadCompleted:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v0, v1, :cond_b

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->i:Landroid/widget/ImageView;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    iget-object v0, p2, Lcom/appyet/mobile/d/u;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/appyet/mobile/e/d;->a(Lcom/appyet/mobile/context/ApplicationContext;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/appyet/mobile/e/d;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLength()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_d

    const-string v1, "%sMB"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const v1, 0x7f0b000c

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    iget-object v2, p2, Lcom/appyet/mobile/d/u;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/appyet/mobile/e/d;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getIsQueued()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->k()I

    move-result v1

    if-nez v1, :cond_3

    const v0, 0x3f4ccccd

    :cond_3
    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->k()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    const v0, 0x3f666666

    :cond_4
    :goto_9
    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->K()Lcom/appyet/mobile/context/o;

    move-result-object v1

    sget-object v2, Lcom/appyet/mobile/context/o;->b:Lcom/appyet/mobile/context/o;

    if-ne v1, v2, :cond_15

    iget-object v1, p2, Lcom/appyet/mobile/d/u;->a:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a
    iget-object v1, p2, Lcom/appyet/mobile/d/u;->b:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x4180

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p2, Lcom/appyet/mobile/d/u;->c:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x4160

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p2, Lcom/appyet/mobile/d/u;->a:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x4160

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p2, Lcom/appyet/mobile/d/u;->d:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x4160

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p2, Lcom/appyet/mobile/d/u;->e:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x4160

    mul-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z

    move-result v1

    iget-object v2, p2, Lcom/appyet/mobile/d/u;->b:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/appyet/mobile/d/u;->d:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/appyet/mobile/d/u;->a:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/appyet/mobile/d/u;->e:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/appyet/mobile/d/u;->c:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/appyet/mobile/manager/bn;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :goto_b
    return-void

    :cond_5
    iget-object v0, p2, Lcom/appyet/mobile/d/u;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->c:Landroid/widget/TextView;

    invoke-virtual {p5}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p2, Lcom/appyet/mobile/d/u;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureStatus()Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$EnclosureStatusEnum;

    if-ne v0, v1, :cond_8

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->g:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p2, Lcom/appyet/mobile/d/u;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p2, Lcom/appyet/mobile/d/u;->j:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p2, Lcom/appyet/mobile/d/u;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->j:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getArticleStatus()Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/mobile/data/FeedItem$ArticleStatusEnum;

    if-ne v0, v1, :cond_c

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->i:Landroid/widget/ImageView;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p2, Lcom/appyet/mobile/d/u;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    iget-object v0, p2, Lcom/appyet/mobile/d/u;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_d
    const-string v1, "%sMB"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureLength()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4130

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_e
    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const v1, 0x7f0b000d

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    :cond_f
    const v1, 0x7f0b000e

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    :cond_10
    iget-object v0, p2, Lcom/appyet/mobile/d/u;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    :cond_11
    iget-object v0, p2, Lcom/appyet/mobile/d/u;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_12
    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->k()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    const/high16 v0, 0x3f80

    goto/16 :goto_9

    :cond_13
    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->k()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    const v0, 0x3f8ccccd

    goto/16 :goto_9

    :cond_14
    iget-object v1, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/f;->k()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    const v0, 0x3f99999a

    goto/16 :goto_9

    :cond_15
    iget-object v1, p2, Lcom/appyet/mobile/d/u;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_16
    iget-object v0, p2, Lcom/appyet/mobile/d/u;->o:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    invoke-virtual {p3}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p2, Lcom/appyet/mobile/d/u;->o:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/appyet/mobile/manager/bn;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_b
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const v7, 0x7f030018

    const v4, 0x7f030017

    if-nez p2, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/e;->c:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/appyet/mobile/d/e;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    :try_start_1
    new-instance v2, Lcom/appyet/mobile/d/u;

    invoke-direct {v2}, Lcom/appyet/mobile/d/u;-><init>()V

    iget v0, p0, Lcom/appyet/mobile/d/e;->b:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/appyet/mobile/d/e;->b:I

    if-ne v0, v7, :cond_2

    :cond_0
    const v0, 0x7f0d0052

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->a:Landroid/widget/TextView;

    const v0, 0x7f0d004f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->b:Landroid/widget/TextView;

    const v0, 0x7f0d0051

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->c:Landroid/widget/TextView;

    const v0, 0x7f0d005a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->d:Landroid/widget/TextView;

    const v0, 0x7f0d0056

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->e:Landroid/widget/TextView;

    const v0, 0x7f0d0058

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->f:Landroid/widget/ImageView;

    const v0, 0x7f0d0054

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->g:Landroid/widget/ImageView;

    const v0, 0x7f0d0055

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->h:Landroid/widget/ImageView;

    const v0, 0x7f0d0059

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->i:Landroid/widget/ImageView;

    const v0, 0x7f0d0057

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->j:Landroid/widget/ProgressBar;

    const v0, 0x7f0d004e

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->k:Landroid/widget/ImageView;

    const v0, 0x7f0d0050

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0053

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->m:Landroid/widget/LinearLayout;

    :goto_0
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/appyet/mobile/d/e;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appyet/mobile/data/FeedItem;

    iget-object v0, p0, Lcom/appyet/mobile/d/e;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->q:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem;->getFeed()Lcom/appyet/mobile/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appyet/mobile/data/Feed;

    iget v0, p0, Lcom/appyet/mobile/d/e;->b:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/appyet/mobile/d/e;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v0, v7, :cond_5

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, v2, Lcom/appyet/mobile/d/u;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v4, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, v2, Lcom/appyet/mobile/d/u;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/appyet/mobile/d/e;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget v1, p0, Lcom/appyet/mobile/d/e;->b:I

    iget-boolean v4, p0, Lcom/appyet/mobile/d/e;->d:Z

    invoke-static/range {v0 .. v5}, Lcom/appyet/mobile/d/e;->a(Lcom/appyet/mobile/context/ApplicationContext;ILcom/appyet/mobile/d/u;Lcom/appyet/mobile/data/FeedItem;ZLcom/appyet/mobile/data/Feed;)V

    move-object v0, v6

    :goto_3
    return-object v0

    :cond_2
    const v0, 0x7f0d004e

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->n:Landroid/widget/ImageView;

    const v0, 0x7f0d004f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/mobile/d/u;->o:Landroid/widget/TextView;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    :goto_4
    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_3
    :try_start_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/d/u;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v2, v0

    move-object v6, p2

    goto :goto_1

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/appyet/mobile/d/e;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->y()I

    move-result v0

    iget-object v1, p0, Lcom/appyet/mobile/d/e;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v4, 0x1

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v1, v0

    iget-object v0, v2, Lcom/appyet/mobile/d/u;->l:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    const/4 v7, 0x0

    add-int/lit8 v8, v1, 0x6

    const/4 v9, 0x0

    invoke-virtual {v0, v4, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, v2, Lcom/appyet/mobile/d/u;->k:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/appyet/mobile/d/u;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, v2, Lcom/appyet/mobile/d/u;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appyet/mobile/d/e;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->x:Lcom/appyet/mobile/f/e;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v2, Lcom/appyet/mobile/d/u;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v4}, Lcom/appyet/mobile/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v0, v2, Lcom/appyet/mobile/d/u;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/appyet/mobile/d/u;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v4, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/appyet/mobile/d/e;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->x:Lcom/appyet/mobile/f/e;

    invoke-virtual {v3}, Lcom/appyet/mobile/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v2, Lcom/appyet/mobile/d/u;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v4}, Lcom/appyet/mobile/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    goto :goto_4
.end method
