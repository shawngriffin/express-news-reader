.class final Lcom/google/android/apps/analytics/j;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:I

.field final f:I

.field final g:I

.field h:Lcom/google/android/apps/analytics/u;

.field private i:J

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Lcom/google/android/apps/analytics/z;

.field private t:Lcom/google/android/apps/analytics/i;


# direct methods
.method constructor <init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/apps/analytics/j;->i:J

    iput-object p3, p0, Lcom/google/android/apps/analytics/j;->a:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/apps/analytics/j;->j:I

    iput p5, p0, Lcom/google/android/apps/analytics/j;->l:I

    iput p6, p0, Lcom/google/android/apps/analytics/j;->m:I

    iput p7, p0, Lcom/google/android/apps/analytics/j;->n:I

    iput p8, p0, Lcom/google/android/apps/analytics/j;->o:I

    iput-object p9, p0, Lcom/google/android/apps/analytics/j;->b:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/apps/analytics/j;->c:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/apps/analytics/j;->d:Ljava/lang/String;

    iput p12, p0, Lcom/google/android/apps/analytics/j;->e:I

    iput p14, p0, Lcom/google/android/apps/analytics/j;->g:I

    iput p13, p0, Lcom/google/android/apps/analytics/j;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/analytics/j;->p:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/j;->r:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/analytics/j;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/apps/analytics/j;->i:J

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/apps/analytics/j;->j:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/apps/analytics/j;->l:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/apps/analytics/j;->m:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/apps/analytics/j;->n:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/google/android/apps/analytics/j;->o:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/apps/analytics/j;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/apps/analytics/j;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/apps/analytics/j;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/android/apps/analytics/j;->e:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/google/android/apps/analytics/j;->f:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/apps/analytics/j;->g:I

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v15}, Lcom/google/android/apps/analytics/j;-><init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/google/android/apps/analytics/j;->k:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/analytics/j;->k:I

    move-object/from16 v0, p1

    iget v1, v0, Lcom/google/android/apps/analytics/j;->p:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/analytics/j;->p:I

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/google/android/apps/analytics/j;->q:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/analytics/j;->q:Z

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/google/android/apps/analytics/j;->r:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/analytics/j;->r:Z

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/analytics/j;->h:Lcom/google/android/apps/analytics/u;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/analytics/j;->h:Lcom/google/android/apps/analytics/u;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/analytics/j;->s:Lcom/google/android/apps/analytics/z;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/analytics/j;->s:Lcom/google/android/apps/analytics/z;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/analytics/j;->t:Lcom/google/android/apps/analytics/i;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/analytics/j;->t:Lcom/google/android/apps/analytics/i;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 15

    const-wide/16 v1, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v13, p5

    move/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/google/android/apps/analytics/j;-><init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/j;->j:I

    return v0
.end method

.method final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/j;->j:I

    return-void
.end method

.method public final a(Lcom/google/android/apps/analytics/i;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/analytics/j;->b:Ljava/lang/String;

    const-string v1, "__##GOOGLEITEM##__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add an item to an event of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/analytics/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/analytics/j;->t:Lcom/google/android/apps/analytics/i;

    return-void
.end method

.method public final a(Lcom/google/android/apps/analytics/z;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/analytics/j;->b:Ljava/lang/String;

    const-string v1, "__##GOOGLETRANSACTION##__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add a transction to an event of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/analytics/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/analytics/j;->s:Lcom/google/android/apps/analytics/z;

    return-void
.end method

.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/j;->q:Z

    return-void
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/j;->k:I

    return v0
.end method

.method final b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/j;->k:I

    return-void
.end method

.method final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/j;->r:Z

    return-void
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/j;->l:I

    return v0
.end method

.method final c(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/j;->l:I

    return-void
.end method

.method final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/j;->m:I

    return v0
.end method

.method final d(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/j;->m:I

    return-void
.end method

.method final e()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/j;->n:I

    return v0
.end method

.method final e(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/j;->n:I

    return-void
.end method

.method final f()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/j;->o:I

    return v0
.end method

.method final f(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/j;->o:I

    return-void
.end method

.method final g()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/j;->p:I

    return v0
.end method

.method final g(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/j;->p:I

    return-void
.end method

.method final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/j;->q:Z

    return v0
.end method

.method final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/j;->r:Z

    return v0
.end method

.method public final j()Lcom/google/android/apps/analytics/z;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/j;->s:Lcom/google/android/apps/analytics/z;

    return-object v0
.end method

.method public final k()Lcom/google/android/apps/analytics/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/j;->t:Lcom/google/android/apps/analytics/i;

    return-object v0
.end method

.method public final l()Z
    .locals 2

    iget v0, p0, Lcom/google/android/apps/analytics/j;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/analytics/j;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "random:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/j;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestampCurrent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/j;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestampPrevious:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/j;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestampFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/j;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "visits:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/j;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/j;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/j;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/j;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
