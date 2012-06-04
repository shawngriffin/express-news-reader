.class final Lcom/google/ads/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/af;

.field private final b:Ljava/util/LinkedList;

.field private final c:I

.field private synthetic d:Lcom/google/ads/ae;


# direct methods
.method public constructor <init>(Lcom/google/ads/ae;Lcom/google/ads/af;Ljava/util/LinkedList;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/e;->d:Lcom/google/ads/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/e;->a:Lcom/google/ads/af;

    iput-object p3, p0, Lcom/google/ads/e;->b:Ljava/util/LinkedList;

    iput p4, p0, Lcom/google/ads/e;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/af;

    iget-object v1, p0, Lcom/google/ads/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/google/ads/af;->a(Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/af;

    iget v1, p0, Lcom/google/ads/e;->c:I

    invoke-virtual {v0, v1}, Lcom/google/ads/af;->a(I)V

    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/af;

    invoke-virtual {v0}, Lcom/google/ads/af;->o()V

    return-void
.end method
