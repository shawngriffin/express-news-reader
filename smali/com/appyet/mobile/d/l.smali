.class public final Lcom/appyet/mobile/d/l;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/appyet/mobile/d/l;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/d/l;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/d/l;->a:Lcom/appyet/mobile/context/ApplicationContext;

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
    .locals 14

    if-nez p2, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/d/l;->a:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f030015

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/appyet/mobile/d/l;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    move-object v11, v0

    const v1, 0x7f0d004b

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    move-object v12, v0

    const v1, 0x7f0d004c

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/appyet/mobile/d/l;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    invoke-virtual {v11}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/appyet/mobile/manager/bn;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v11}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appyet/mobile/d/l;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->k:Lcom/appyet/mobile/manager/ch;

    invoke-virtual {v11}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/manager/ch;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/d/l;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->g:Lcom/appyet/mobile/manager/ch;

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v11}, Lcom/appyet/mobile/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/manager/ch;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v1, v13

    :goto_1
    return-object v1

    :cond_1
    const v1, 0x7f020094

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v1, v13

    goto :goto_1

    :cond_2
    const v1, 0x7f020094

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v13

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object/from16 v1, p2

    :goto_2
    invoke-static {v2}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object/from16 v1, p2

    :goto_3
    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->f()V

    invoke-static {v2}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Error;)V

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v1, v13

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v2, v1

    move-object v1, v13

    goto :goto_2

    :cond_3
    move-object/from16 v13, p2

    goto/16 :goto_0
.end method
