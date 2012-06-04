.class final Lcom/appyet/mobile/activity/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/CleanUpActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/CleanUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/w;->a:Lcom/appyet/mobile/activity/CleanUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/activity/w;->a:Lcom/appyet/mobile/activity/CleanUpActivity;

    iget-object v1, p0, Lcom/appyet/mobile/activity/w;->a:Lcom/appyet/mobile/activity/CleanUpActivity;

    invoke-virtual {v1}, Lcom/appyet/mobile/activity/CleanUpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/CleanUpActivity;->a(Lcom/appyet/mobile/activity/CleanUpActivity;I)I

    iget-object v0, p0, Lcom/appyet/mobile/activity/w;->a:Lcom/appyet/mobile/activity/CleanUpActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/CleanUpActivity;->c(Lcom/appyet/mobile/activity/CleanUpActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0, p3}, Lcom/appyet/mobile/manager/f;->l(I)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
