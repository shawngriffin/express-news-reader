.class public final Lcom/appyet/mobile/c/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/appyet/mobile/c/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/c/f;->a:Ljava/lang/String;

    const-string v1, "feed/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/c/f;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/c/f;->d:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/c/f;->d:Z

    return v0
.end method
