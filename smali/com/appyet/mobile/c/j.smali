.class public final Lcom/appyet/mobile/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/c/j;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/appyet/mobile/c/j;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/appyet/mobile/c/j;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/appyet/mobile/c/j;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/appyet/mobile/c/j;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/c/j;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/c/j;->e:Z

    return-void
.end method

.method public final b()Lcom/appyet/mobile/c/j;
    .locals 2

    new-instance v0, Lcom/appyet/mobile/c/j;

    invoke-direct {v0}, Lcom/appyet/mobile/c/j;-><init>()V

    iget-object v1, p0, Lcom/appyet/mobile/c/j;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/c/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/c/j;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/c/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/c/j;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/c/j;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/c/j;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/c/j;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/c/j;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/mobile/c/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/c/j;->f:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/c/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/c/j;->a:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/c/j;->b:Ljava/lang/String;

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/mobile/c/j;->e:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/c/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/c/j;->c:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/c/j;->c:Ljava/lang/String;

    return-object v0
.end method
