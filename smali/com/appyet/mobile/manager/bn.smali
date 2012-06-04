.class public final Lcom/appyet/mobile/manager/bn;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/mobile/manager/bn;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bn;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->z()I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/manager/bn;->b:I

    iget-object v0, p0, Lcom/appyet/mobile/manager/bn;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->A()I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/manager/bn;->c:I

    iget-object v0, p0, Lcom/appyet/mobile/manager/bn;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/manager/bn;->d:I

    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bn;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DARK_THEME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0015

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0c0014

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0
.end method

.method public final a(Lcom/appyet/mobile/data/Category;Landroid/widget/TextView;)V
    .locals 4

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Category;->getUnreadCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/appyet/mobile/manager/bn;->b:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/appyet/mobile/manager/bn;->c:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final a(Lcom/appyet/mobile/data/Feed;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4

    invoke-virtual {p1}, Lcom/appyet/mobile/data/Feed;->getUnreadCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/appyet/mobile/manager/bn;->b:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/appyet/mobile/manager/bn;->c:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/appyet/mobile/manager/bn;->c:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/appyet/mobile/manager/bn;->c:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    if-eqz p7, :cond_1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bn;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DARK_THEME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/appyet/mobile/manager/bn;->c:I

    invoke-virtual {p7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    iget v0, p0, Lcom/appyet/mobile/manager/bn;->c:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    if-eqz p9, :cond_3

    iget v0, p0, Lcom/appyet/mobile/manager/bn;->d:I

    invoke-virtual {p9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    if-eqz p4, :cond_4

    iget v0, p0, Lcom/appyet/mobile/manager/bn;->c:I

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    if-eqz p5, :cond_5

    iget v0, p0, Lcom/appyet/mobile/manager/bn;->c:I

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    if-eqz p6, :cond_6

    iget v0, p0, Lcom/appyet/mobile/manager/bn;->c:I

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    if-eqz p8, :cond_7

    iget v0, p0, Lcom/appyet/mobile/manager/bn;->b:I

    invoke-virtual {p8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    if-nez p1, :cond_9

    if-eqz p2, :cond_8

    iget v0, p0, Lcom/appyet/mobile/manager/bn;->b:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    if-eqz p7, :cond_9

    iget-object v0, p0, Lcom/appyet/mobile/manager/bn;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DARK_THEME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/appyet/mobile/manager/bn;->b:I

    invoke-virtual {p7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    iget-object v0, p0, Lcom/appyet/mobile/manager/bn;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/appyet/mobile/manager/bn;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
