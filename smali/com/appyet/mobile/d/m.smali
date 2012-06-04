.class final Lcom/appyet/mobile/d/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/c/j;

.field private synthetic b:Landroid/widget/CheckBox;

.field private synthetic c:Lcom/appyet/mobile/d/c;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/d/c;Lcom/appyet/mobile/c/j;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/d/m;->c:Lcom/appyet/mobile/d/c;

    iput-object p2, p0, Lcom/appyet/mobile/d/m;->a:Lcom/appyet/mobile/c/j;

    iput-object p3, p0, Lcom/appyet/mobile/d/m;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/d/m;->a:Lcom/appyet/mobile/c/j;

    iget-object v1, p0, Lcom/appyet/mobile/d/m;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/c/j;->a(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/d/m;->b:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/appyet/mobile/d/m;->a:Lcom/appyet/mobile/c/j;

    invoke-virtual {v1}, Lcom/appyet/mobile/c/j;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/d/m;->c:Lcom/appyet/mobile/d/c;

    invoke-static {v0}, Lcom/appyet/mobile/d/c;->a(Lcom/appyet/mobile/d/c;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/d/m;->a:Lcom/appyet/mobile/c/j;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/c/j;)Z

    return-void
.end method
