.class final Lcom/appyet/mobile/h/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/c/i;

.field private synthetic b:Lcom/appyet/mobile/h/c;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/h/c;Lcom/appyet/mobile/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/h/k;->b:Lcom/appyet/mobile/h/c;

    iput-object p2, p0, Lcom/appyet/mobile/h/k;->a:Lcom/appyet/mobile/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/h/k;->a:Lcom/appyet/mobile/c/i;

    invoke-virtual {v0, p1}, Lcom/appyet/mobile/c/i;->a(Ljava/lang/String;)V

    return-void
.end method
