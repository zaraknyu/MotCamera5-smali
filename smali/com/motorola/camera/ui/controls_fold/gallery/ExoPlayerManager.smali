.class public abstract Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static currentActiveMediaId:J

.field public static final playerStates:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final players:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->players:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->playerStates:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->currentActiveMediaId:J

    return-void
.end method

.method public static getPlayer(Landroid/content/Context;J)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->players:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    new-instance v3, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    new-instance v4, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v5}, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, p0, v3, v4}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    iget-boolean p0, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    const/4 v3, 0x1

    xor-int/2addr p0, v3

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-boolean v3, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    new-instance p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;)V

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setRepeatMode(I)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iput v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    const/4 v2, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->playerStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;

    if-eqz p1, :cond_1

    iget-object p2, p1, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->mediaItem:Landroidx/media3/common/MediaItem;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Landroidx/media3/common/BasePlayer;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    :cond_0
    iget-wide v2, p1, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->playbackPosition:J

    const/4 p2, 0x5

    invoke-virtual {p0, p2, v2, v3}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(IJ)V

    iget-boolean p1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->playWhenReady:Z

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->prepare()V

    :cond_1
    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, p1

    :cond_3
    :goto_0
    check-cast v2, Landroidx/media3/exoplayer/ExoPlayer;

    return-object v2
.end method

.method public static releasePlayer(J)V
    .locals 9

    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->players:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->playerStates:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;

    move-object v6, v2

    check-cast v6, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v6}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v6

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v7

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v2

    invoke-direct {v5, v6, v7, v8, v2}, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;-><init>(Landroidx/media3/common/MediaItem;JZ)V

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->stopInternal(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    new-instance v2, Landroidx/media3/common/text/CueGroup;

    sget-object v3, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-direct {v2, v3}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->release()V

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
