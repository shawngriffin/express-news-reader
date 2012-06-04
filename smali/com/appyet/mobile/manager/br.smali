.class final Lcom/appyet/mobile/manager/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/manager/e;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/manager/e;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/manager/br;->a:Lcom/appyet/mobile/manager/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/br;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/br;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->h(Lcom/appyet/mobile/manager/e;)Lcom/appyet/mobile/data/FeedItem;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/data/FeedItem;->setEnclosureCurrentPosition(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/br;->a:Lcom/appyet/mobile/manager/e;

    invoke-static {v0}, Lcom/appyet/mobile/manager/e;->f(Lcom/appyet/mobile/manager/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/br;->a:Lcom/appyet/mobile/manager/e;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/e;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
