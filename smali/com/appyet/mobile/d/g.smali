.class final Lcom/appyet/mobile/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/c/e;

.field private synthetic b:Landroid/widget/CheckBox;

.field private synthetic c:Landroid/widget/ImageView;

.field private synthetic d:Lcom/appyet/mobile/d/r;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/d/r;Lcom/appyet/mobile/c/e;Landroid/widget/CheckBox;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/d/g;->d:Lcom/appyet/mobile/d/r;

    iput-object p2, p0, Lcom/appyet/mobile/d/g;->a:Lcom/appyet/mobile/c/e;

    iput-object p3, p0, Lcom/appyet/mobile/d/g;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/appyet/mobile/d/g;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/d/g;->a:Lcom/appyet/mobile/c/e;

    iget-object v1, p0, Lcom/appyet/mobile/d/g;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/appyet/mobile/c/e;->f:Z

    iget-object v0, p0, Lcom/appyet/mobile/d/g;->b:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/appyet/mobile/d/g;->a:Lcom/appyet/mobile/c/e;

    iget-boolean v1, v1, Lcom/appyet/mobile/c/e;->f:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/d/g;->a:Lcom/appyet/mobile/c/e;

    iget-boolean v0, v0, Lcom/appyet/mobile/c/e;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/d/g;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/d/g;->d:Lcom/appyet/mobile/d/r;

    invoke-static {v0}, Lcom/appyet/mobile/d/r;->a(Lcom/appyet/mobile/d/r;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    iget-object v1, p0, Lcom/appyet/mobile/d/g;->a:Lcom/appyet/mobile/c/e;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/bo;->a(Lcom/appyet/mobile/c/e;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/d/g;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
