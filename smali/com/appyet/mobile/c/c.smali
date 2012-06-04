.class public final Lcom/appyet/mobile/c/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/appyet/mobile/c/b;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appyet/mobile/c/b;->a:Lcom/appyet/mobile/c/b;

    iput-object v0, p0, Lcom/appyet/mobile/c/c;->f:Lcom/appyet/mobile/c/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/c/c;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/c/c;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/c/c;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/c/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/c/c;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/mobile/c/c;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/c/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/c/c;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/c/c;->h:Ljava/util/List;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/c/c;->e:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/c/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/c/c;->d:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/c/c;->g:Ljava/util/List;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/c/c;->a:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/c/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/c/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/c/c;->i:Ljava/util/List;

    return-object v0
.end method

.method public final i()Lcom/appyet/mobile/c/b;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/c/c;->f:Lcom/appyet/mobile/c/b;

    return-object v0
.end method
