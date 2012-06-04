.class public final Lcom/appyet/mobile/d/r;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    const v0, 0x7f030024

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/appyet/mobile/d/r;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/d/r;->b:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/d/r;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/d/r;->b:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/r;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/d/r;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/e;

    if-eqz v0, :cond_1

    const v1, 0x7f0d0086

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d007a

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const v3, 0x7f0d0085

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, v0, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-boolean v1, v0, Lcom/appyet/mobile/c/e;->f:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-boolean v1, v0, Lcom/appyet/mobile/c/e;->f:Z

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/appyet/mobile/d/g;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/appyet/mobile/d/g;-><init>(Lcom/appyet/mobile/d/r;Lcom/appyet/mobile/c/e;Landroid/widget/CheckBox;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    move-object v0, v4

    :goto_3
    return-object v0

    :cond_2
    iget-object v5, v0, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v4

    :goto_4
    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_3
    const/16 v1, 0x8

    :try_start_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    goto :goto_4

    :cond_4
    move-object v4, p2

    goto :goto_0
.end method
