.class public Lcom/appyet/mobile/activity/ImageViewerActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/mobile/context/ApplicationContext;

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/ImageViewerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/appyet/mobile/activity/ImageViewerActivity;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/appyet/mobile/activity/ImageViewerActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ImageViewerActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/mobile/activity/ImageViewerActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ImageViewerActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/high16 v4, 0x7f0b

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ImageViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/ImageViewerActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {}, Lcom/appyet/mobile/context/ApplicationContext;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/ImageViewerActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ImageViewerActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/mobile/activity/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ImageViewerActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const-string v2, "///"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appyet/mobile/activity/ImageViewerActivity;->b:J

    const-string v1, "///"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v1, Lcom/appyet/mobile/b/j;->a:Lcom/appyet/mobile/b/j;

    invoke-virtual {v1, v0}, Lcom/appyet/mobile/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appyet/mobile/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/activity/ImageViewerActivity;->c:Ljava/lang/String;

    new-instance v0, Lcom/appyet/mobile/activity/cy;

    invoke-direct {v0, p0}, Lcom/appyet/mobile/activity/cy;-><init>(Lcom/appyet/mobile/activity/ImageViewerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/activity/cy;->b([Ljava/lang/Object;)Lcom/appyet/mobile/b/k;

    :goto_1
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ImageViewerActivity;->setTitle(I)V

    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/ImageViewerActivity;->setContentView(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/activity/ImageViewerActivity;->a:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
