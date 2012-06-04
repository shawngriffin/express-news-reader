.class final Lcom/appyet/mobile/manager/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/manager/e;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/e;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/bh;->a:Lcom/appyet/mobile/manager/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/bh;->a:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->d()V

    iget-object v0, p0, Lcom/appyet/mobile/manager/bh;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->m(Lcom/appyet/mobile/manager/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
