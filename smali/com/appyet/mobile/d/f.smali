.class final Lcom/appyet/mobile/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/c/f;

.field private synthetic b:Landroid/widget/CheckBox;

.field private synthetic c:Lcom/appyet/mobile/d/i;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/d/i;Lcom/appyet/mobile/c/f;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/d/f;->c:Lcom/appyet/mobile/d/i;

    iput-object p2, p0, Lcom/appyet/mobile/d/f;->a:Lcom/appyet/mobile/c/f;

    iput-object p3, p0, Lcom/appyet/mobile/d/f;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/d/f;->a:Lcom/appyet/mobile/c/f;

    iget-object v1, p0, Lcom/appyet/mobile/d/f;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/c/f;->a(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/d/f;->b:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/appyet/mobile/d/f;->a:Lcom/appyet/mobile/c/f;

    invoke-virtual {v1}, Lcom/appyet/mobile/c/f;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/d/f;->c:Lcom/appyet/mobile/d/i;

    invoke-static {v0}, Lcom/appyet/mobile/d/i;->a(Lcom/appyet/mobile/d/i;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/d/f;->a:Lcom/appyet/mobile/c/f;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/c/f;)Z

    return-void
.end method
