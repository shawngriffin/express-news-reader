.class public final Lcom/appyet/mobile/d/k;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    const v0, 0x7f03000b

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/appyet/mobile/d/k;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/appyet/mobile/d/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/d/k;->b:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    if-nez p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/appyet/mobile/d/k;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f03000b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/appyet/mobile/d/k;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/appyet/mobile/data/FeedItem;

    move-object v2, v0

    const v1, 0x7f0d001c

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v1, 0x7f0d001d

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/appyet/mobile/view/TextViewEx;

    const v1, 0x7f0d001e

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appyet/mobile/d/k;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Lcom/appyet/mobile/data/FeedItem;->getDescriptionSpanned(Lcom/appyet/mobile/context/ApplicationContext;Landroid/text/Html$ImageGetter;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/appyet/mobile/view/TextViewEx;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/appyet/mobile/view/TextViewEx;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/appyet/mobile/view/TextViewEx;->setFocusable(Z)V

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/appyet/mobile/d/k;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/appyet/mobile/e/d;->a(Lcom/appyet/mobile/context/ApplicationContext;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/appyet/mobile/d/k;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/appyet/mobile/e/d;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/appyet/mobile/d/k;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->r:Lcom/appyet/mobile/manager/bn;

    invoke-virtual {v2}, Lcom/appyet/mobile/data/FeedItem;->getIsRead()Z

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/appyet/mobile/manager/bn;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v11

    :goto_1
    return-object v1

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, p2

    :goto_2
    invoke-static {v2}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v11

    goto :goto_2

    :cond_0
    move-object v11, p2

    goto/16 :goto_0
.end method
