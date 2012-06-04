.class public final Lcom/appyet/mobile/d/o;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    const v0, 0x7f030032

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/appyet/mobile/d/o;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/d/o;->b:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/d/o;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/d/o;->b:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/o;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    const v0, 0x7f0d0080

    :try_start_1
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0081

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d008b

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d007f

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/appyet/mobile/d/o;->a:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appyet/mobile/g/a;

    iget-object v6, v4, Lcom/appyet/mobile/g/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lcom/appyet/mobile/g/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lcom/appyet/mobile/g/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v4, Lcom/appyet/mobile/g/a;->d:Z

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Lcom/appyet/mobile/d/q;

    invoke-direct {v0, p0, v4, v3}, Lcom/appyet/mobile/d/q;-><init>(Lcom/appyet/mobile/d/o;Lcom/appyet/mobile/g/a;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v5

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

    move-object v0, v5

    goto :goto_2

    :cond_0
    move-object v5, p2

    goto :goto_0
.end method
