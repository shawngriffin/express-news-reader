.class public final Lcom/appyet/mobile/manager/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/media/MediaPlayer;

.field private c:Lcom/appyet/mobile/data/FeedItem;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/media/MediaPlayer;Lcom/appyet/mobile/data/FeedItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/mobile/manager/g;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/appyet/mobile/manager/g;->b:Landroid/media/MediaPlayer;

    iput-object p3, p0, Lcom/appyet/mobile/manager/g;->c:Lcom/appyet/mobile/data/FeedItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/g;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/g;->a:Landroid/app/Activity;

    const v1, 0x7f0d00bb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appyet/mobile/manager/g;->a:Landroid/app/Activity;

    const v2, 0x7f0d00bc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/appyet/mobile/manager/g;->a:Landroid/app/Activity;

    const v3, 0x7f0d00bd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/appyet/mobile/manager/g;->b:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/appyet/mobile/manager/g;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/appyet/mobile/manager/g;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/appyet/mobile/e/d;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/g;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/appyet/mobile/e/d;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/g;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/g;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/g;->c:Lcom/appyet/mobile/data/FeedItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/g;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/g;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/appyet/mobile/manager/g;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/g;->c:Lcom/appyet/mobile/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
