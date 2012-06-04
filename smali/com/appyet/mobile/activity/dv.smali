.class final Lcom/appyet/mobile/activity/dv;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I

.field private synthetic e:Lcom/appyet/mobile/activity/CleanUpActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/activity/CleanUpActivity;IIZ)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/appyet/mobile/activity/dv;->e:Lcom/appyet/mobile/activity/CleanUpActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput v1, p0, Lcom/appyet/mobile/activity/dv;->a:I

    iput v1, p0, Lcom/appyet/mobile/activity/dv;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/mobile/activity/dv;->c:Z

    iput v1, p0, Lcom/appyet/mobile/activity/dv;->d:I

    iput p2, p0, Lcom/appyet/mobile/activity/dv;->a:I

    iput p3, p0, Lcom/appyet/mobile/activity/dv;->b:I

    iput-boolean p4, p0, Lcom/appyet/mobile/activity/dv;->c:Z

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/dv;->e:Lcom/appyet/mobile/activity/CleanUpActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/CleanUpActivity;->c(Lcom/appyet/mobile/activity/CleanUpActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget v1, p0, Lcom/appyet/mobile/activity/dv;->a:I

    iget v2, p0, Lcom/appyet/mobile/activity/dv;->b:I

    iget-boolean v3, p0, Lcom/appyet/mobile/activity/dv;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/mobile/manager/bo;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/activity/dv;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/dv;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 0

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dv;->e:Lcom/appyet/mobile/activity/CleanUpActivity;

    iget-object v1, p0, Lcom/appyet/mobile/activity/dv;->e:Lcom/appyet/mobile/activity/CleanUpActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/CleanUpActivity;->c(Lcom/appyet/mobile/activity/CleanUpActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    const v2, 0x7f0b0175

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/appyet/mobile/activity/dv;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/dv;->e:Lcom/appyet/mobile/activity/CleanUpActivity;

    invoke-virtual {v0}, Lcom/appyet/mobile/activity/CleanUpActivity;->finish()V

    return-void
.end method
