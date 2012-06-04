.class final Lcom/appyet/mobile/f/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/widget/ImageView;

.field public d:Ljava/lang/Integer;

.field private synthetic e:Lcom/appyet/mobile/f/e;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/f/e;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/mobile/f/a;->e:Lcom/appyet/mobile/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/appyet/mobile/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/mobile/f/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/appyet/mobile/f/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/appyet/mobile/f/a;->c:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/f/a;->d:Ljava/lang/Integer;

    return-void
.end method
