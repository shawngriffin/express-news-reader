.class public final Lcom/appyet/mobile/d/i;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    const v0, 0x7f030028

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/appyet/mobile/d/i;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/d/i;->b:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/d/i;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/d/i;->b:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/i;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    const v0, 0x7f0d0080

    :try_start_1
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0081

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d007f

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/appyet/mobile/d/i;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appyet/mobile/c/f;

    iget-object v5, v3, Lcom/appyet/mobile/c/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/appyet/mobile/c/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/appyet/mobile/c/f;->b()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Lcom/appyet/mobile/d/f;

    invoke-direct {v0, p0, v3, v2}, Lcom/appyet/mobile/d/f;-><init>(Lcom/appyet/mobile/d/i;Lcom/appyet/mobile/c/f;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    :goto_2
    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_0
    move-object v4, p2

    goto :goto_0
.end method
