.class public final Lcom/appyet/mobile/d/w;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    const v0, 0x7f03000d

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/appyet/mobile/d/w;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/d/w;->b:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method

.method public static a(Lcom/appyet/mobile/context/ApplicationContext;Lcom/appyet/mobile/data/Feed;Landroid/view/View;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x1

    const/high16 v10, 0x4180

    const/high16 v3, 0x3f80

    const v9, 0x7f0200a6

    const/4 v8, 0x2

    if-nez p1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    const v0, 0x7f0d002a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d002b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0029

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    :try_start_0
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    const v4, 0x7f0200b7

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->L()Lcom/appyet/mobile/context/m;

    move-result-object v2

    sget-object v4, Lcom/appyet/mobile/context/m;->a:Lcom/appyet/mobile/context/m;

    if-ne v2, v4, :cond_b

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v0, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getUnreadCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_c

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f080012

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f080013

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getTotalCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_4
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getPubDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getPubDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getPubDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/appyet/mobile/e/d;->a(Lcom/appyet/mobile/context/ApplicationContext;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getPubDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/appyet/mobile/e/d;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_5
    iget-object v2, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/f;->x()I

    move-result v2

    if-nez v2, :cond_12

    const v2, 0x3f4ccccd

    :goto_6
    iget-object v4, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/f;->x()I

    move-result v4

    if-ne v4, v11, :cond_f

    const v3, 0x3f666666

    :cond_4
    :goto_7
    mul-float v2, v3, v10

    invoke-virtual {v0, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v2, 0x4160

    mul-float/2addr v2, v3

    invoke-virtual {v1, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    invoke-virtual {v2, p1, v0, v1}, Lcom/appyet/mobile/manager/bn;->a(Lcom/appyet/mobile/data/Feed;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    const v4, 0x7f0200bb

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_6
    :try_start_2
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x3

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    const v4, 0x7f0200ba

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x4

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    const v4, 0x7f0200b8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v4, p0, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/appyet/mobile/context/ApplicationContext;->i:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appyet/mobile/manager/ch;->e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_9
    const v4, 0x7f0200a6

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_a
    const v4, 0x7f0200a6

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f080011

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f080013

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getTotalCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_e
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_f
    iget-object v4, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v4}, Lcom/appyet/mobile/manager/f;->x()I

    move-result v4

    if-eq v4, v8, :cond_4

    iget-object v3, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->x()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    const v3, 0x3f8ccccd

    goto/16 :goto_7

    :cond_10
    iget-object v3, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/f;->x()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    const v3, 0x3f99999a

    goto/16 :goto_7

    :cond_11
    move v3, v2

    goto/16 :goto_7

    :cond_12
    move v2, v3

    goto/16 :goto_6
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/w;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/appyet/mobile/d/w;->b:Lcom/appyet/mobile/context/ApplicationContext;

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
    iget-object v0, p0, Lcom/appyet/mobile/d/w;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-object v2, p0, Lcom/appyet/mobile/d/w;->b:Lcom/appyet/mobile/context/ApplicationContext;

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

    move-object v0, p2

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
    move-object v1, p2

    goto :goto_0
.end method
