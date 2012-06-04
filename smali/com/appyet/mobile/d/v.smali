.class public final Lcom/appyet/mobile/d/v;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    const v0, 0x7f030007

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/appyet/mobile/d/v;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/v;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/appyet/mobile/d/v;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    const v1, 0x7f0d0013

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0012

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getIsSelected()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_3
    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    goto :goto_3

    :cond_1
    move-object v3, p2

    goto :goto_0
.end method
