.class public final Lcom/appyet/mobile/d/d;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    const v0, 0x7f0d0067

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/appyet/mobile/d/d;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/d/d;->b:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/d/d;->b:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/d/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/h;

    const v1, 0x7f0d006c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/appyet/mobile/c/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

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

    move-object v0, v2

    goto :goto_2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method
