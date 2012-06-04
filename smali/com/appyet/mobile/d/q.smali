.class final Lcom/appyet/mobile/d/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/g/a;

.field private synthetic b:Landroid/widget/CheckBox;

.field private synthetic c:Lcom/appyet/mobile/d/o;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/d/o;Lcom/appyet/mobile/g/a;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/d/q;->c:Lcom/appyet/mobile/d/o;

    iput-object p2, p0, Lcom/appyet/mobile/d/q;->a:Lcom/appyet/mobile/g/a;

    iput-object p3, p0, Lcom/appyet/mobile/d/q;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/d/q;->a:Lcom/appyet/mobile/g/a;

    iget-object v1, p0, Lcom/appyet/mobile/d/q;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/appyet/mobile/g/a;->d:Z

    iget-object v0, p0, Lcom/appyet/mobile/d/q;->b:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/appyet/mobile/d/q;->a:Lcom/appyet/mobile/g/a;

    iget-boolean v1, v1, Lcom/appyet/mobile/g/a;->d:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/d/q;->c:Lcom/appyet/mobile/d/o;

    invoke-static {v0}, Lcom/appyet/mobile/d/o;->a(Lcom/appyet/mobile/d/o;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/d/q;->a:Lcom/appyet/mobile/g/a;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/g/a;)Z

    return-void
.end method
