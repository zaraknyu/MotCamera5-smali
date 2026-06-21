.class public final Landroidx/media3/ui/PlayerView$ComponentListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/media3/ui/PlayerControlView$VisibilityListener;
.implements Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;


# instance fields
.field public lastPeriodUidWithTracks:Ljava/lang/Object;

.field public final period:Landroidx/media3/common/Timeline$Period;

.field public final synthetic this$0:Landroidx/media3/ui/PlayerView;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerView;

    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->period:Landroidx/media3/common/Timeline$Period;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget p1, Landroidx/media3/ui/PlayerView;->$r8$clinit:I

    iget-object p0, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->toggleControllerVisibility()V

    return-void
.end method

.method public final onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerView;

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    if-eqz p0, :cond_0

    iget-object p1, p1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, p1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final onPlayWhenReadyChanged(IZ)V
    .locals 0

    sget p1, Landroidx/media3/ui/PlayerView;->$r8$clinit:I

    iget-object p0, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateBuffering()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->isPlayingAd()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->hide()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 0

    sget p1, Landroidx/media3/ui/PlayerView;->$r8$clinit:I

    iget-object p0, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateBuffering()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->isPlayingAd()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->hide()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    return-void
.end method

.method public final onPositionDiscontinuity(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V
    .locals 0

    sget p1, Landroidx/media3/ui/PlayerView;->$r8$clinit:I

    iget-object p0, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->isPlayingAd()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->hide()V

    :cond_0
    return-void
.end method

.method public final onRenderedFirstFrame()V
    .locals 2

    iget-object p0, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerView;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hasSelectedImageTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hideAndClearImage()V

    :cond_1
    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerView;

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x22

    if-ne p2, v0, :cond_0

    instance-of p2, p1, Landroid/view/SurfaceView;

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Landroidx/media3/ui/PlayerView;->enableComposeSurfaceSyncWorkaround:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/media3/ui/PlayerView;->surfaceSyncGroupV34:Lcom/google/android/gms/tasks/zzs;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->mainLooperHandler:Landroid/os/Handler;

    check-cast p1, Landroid/view/SurfaceView;

    new-instance v1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/4 v2, 0x5

    invoke-direct {p0, p2, p1, v1, v2}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 7

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerView;

    iget-object v0, p1, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Landroidx/media3/common/BasePlayer;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline$1;

    :goto_0
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iput-object v5, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->lastPeriodUidWithTracks:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const/16 v3, 0x1e

    invoke-virtual {v1, v3}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v1

    iget-object v3, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->period:Landroidx/media3/common/Timeline$Period;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v6

    iget-object v6, v6, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v2, v0, v3, v1}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->lastPeriodUidWithTracks:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->lastPeriodUidWithTracks:Ljava/lang/Object;

    if-eqz v1, :cond_5

    invoke-virtual {v2, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    if-ne v0, v1, :cond_4

    return-void

    :cond_4
    iput-object v5, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->lastPeriodUidWithTracks:Ljava/lang/Object;

    :cond_5
    :goto_2
    invoke-virtual {p1, v4}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    return-void
.end method

.method public final onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 1

    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {p1, v0}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerView;

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz p1, :cond_1

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateAspectRatio()V

    :cond_1
    :goto_0
    return-void
.end method
