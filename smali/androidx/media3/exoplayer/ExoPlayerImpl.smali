.class public final Landroidx/media3/exoplayer/ExoPlayerImpl;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/ExoPlayer;


# instance fields
.field public final analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

.field public final applicationContext:Landroid/content/Context;

.field public final applicationLooper:Landroid/os/Looper;

.field public final audioAttributes:Landroidx/media3/common/AudioAttributes;

.field public final audioBecomingNoisyManager:Landroidx/compose/runtime/Latch;

.field public final audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final audioSessionIdState:Lcom/motorola/camera/AppFeatures;

.field public availableCommands:Landroidx/media3/common/Player$Commands;

.field public final bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field public final clock:Landroidx/media3/common/util/SystemClock;

.field public final componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

.field public final constructorFinished:Landroidx/media3/exoplayer/WakeLockManager;

.field public currentCueGroup:Landroidx/media3/common/text/CueGroup;

.field public final detachSurfaceTimeoutMs:J

.field public final emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field public final frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

.field public hasNotifiedFullWrongThreadWarning:Z

.field public final internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field public final listeners:Landroidx/media3/common/util/ListenerSet;

.field public maskingWindowIndex:I

.field public maskingWindowPositionMs:J

.field public final maxSeekToPreviousPositionMs:J

.field public mediaMetadata:Landroidx/media3/common/MediaMetadata;

.field public final mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field public final mediaSourceHolderSnapshots:Ljava/util/ArrayList;

.field public ownedSurface:Landroid/view/Surface;

.field public pendingDiscontinuity:Z

.field public pendingDiscontinuityReason:I

.field public pendingOperationAcks:I

.field public final period:Landroidx/media3/common/Timeline$Period;

.field public final permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

.field public playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

.field public final playbackInfoUpdateHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

.field public final playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;

.field public final preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

.field public final priority:I

.field public final renderers:[Landroidx/media3/exoplayer/Renderer;

.field public repeatMode:I

.field public final secondaryRenderers:[Landroidx/media3/exoplayer/Renderer;

.field public final seekBackIncrementMs:J

.field public final seekForwardIncrementMs:J

.field public seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field public shuffleModeEnabled:Z

.field public shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

.field public skipSilenceEnabled:Z

.field public sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

.field public staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

.field public surfaceHolder:Landroid/view/SurfaceHolder;

.field public surfaceHolderSurfaceIsVideoOutput:Z

.field public surfaceSize:Landroidx/media3/common/util/Size;

.field public textureView:Landroid/view/TextureView;

.field public final throwsWhenUsingWrongThread:Z

.field public final trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

.field public final useLazyPreparation:Z

.field public videoOutput:Ljava/lang/Object;

.field public videoScalingMode:I

.field public videoSize:Landroidx/media3/common/VideoSize;

.field public volume:F

.field public final wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

.field public final wifiLockManager:Landroidx/media3/exoplayer/WakeLockManager;

.field public final wrappingPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v2, " [AndroidXMedia3/1.7.1] ["

    const-string v4, "Init "

    invoke-direct {v1, v8}, Landroidx/media3/common/BasePlayer;-><init>(I)V

    new-instance v5, Landroidx/media3/exoplayer/WakeLockManager;

    const/4 v15, 0x1

    invoke-direct {v5, v15}, Landroidx/media3/exoplayer/WakeLockManager;-><init>(I)V

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/exoplayer/WakeLockManager;

    :try_start_0
    const-string v5, "ExoPlayerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-direct {v5, v4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;-><init>(Landroidx/media3/common/util/SystemClock;)V

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->priority:I

    iput v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->priority:I

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    iput v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    iput-boolean v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    iget-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    iput-wide v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    new-instance v5, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-direct {v5, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    new-instance v6, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v7}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-object/from16 v19, v5

    move-object/from16 v20, v5

    move-object/from16 v21, v5

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v16 .. v21}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->createRenderers(Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)[Landroidx/media3/exoplayer/Renderer;

    move-result-object v5

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v6, v5

    if-lez v6, :cond_0

    move v6, v15

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    invoke-static {v6}, Landroidx/media3/common/util/Log;->checkState(Z)V

    array-length v5, v5

    new-array v5, v5, [Landroidx/media3/exoplayer/Renderer;

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->secondaryRenderers:[Landroidx/media3/exoplayer/Renderer;

    move v5, v8

    :goto_1
    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->secondaryRenderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v7, v6

    const/4 v9, 0x0

    if-ge v5, v7, :cond_1

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    iput-boolean v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->useLazyPreparation:Z

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    iget-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    iput-wide v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekBackIncrementMs:J

    iget-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    iput-wide v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekForwardIncrementMs:J

    iget-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->maxSeekToPreviousPositionMs:J

    iput-wide v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->maxSeekToPreviousPositionMs:J

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/SystemClock;

    iput-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    new-instance v5, Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    invoke-direct {v5, v2, v4, v6}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/SystemClock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/ArrayList;

    new-instance v2, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {v2}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>()V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    sget-object v2, Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;->DEFAULT:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    new-instance v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v5, v4

    new-array v5, v5, [Landroidx/media3/exoplayer/RendererConfiguration;

    array-length v4, v4

    new-array v4, v4, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    sget-object v6, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    invoke-direct {v2, v5, v4, v6, v9}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    const/16 v4, 0x14

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    move v6, v8

    :goto_2
    if-ge v6, v4, :cond_2

    aget v7, v5, v6

    const/4 v11, 0x0

    xor-int/2addr v11, v15

    invoke-static {v11}, Landroidx/media3/common/util/Log;->checkState(Z)V

    invoke-virtual {v2, v7, v15}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    xor-int/2addr v4, v15

    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkState(Z)V

    const/16 v4, 0x1d

    invoke-virtual {v2, v4, v15}, Landroid/util/SparseBooleanArray;->append(IZ)V

    new-instance v4, Landroidx/media3/common/Player$Commands;

    const/4 v5, 0x0

    xor-int/2addr v5, v15

    invoke-static {v5}, Landroidx/media3/common/util/Log;->checkState(Z)V

    new-instance v5, Landroidx/media3/common/FlagSet;

    invoke-direct {v5, v2}, Landroidx/media3/common/FlagSet;-><init>(Landroid/util/SparseBooleanArray;)V

    invoke-direct {v4, v5}, Landroidx/media3/common/Player$Commands;-><init>(Landroidx/media3/common/FlagSet;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move v4, v8

    :goto_3
    iget-object v6, v5, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-virtual {v5, v4}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v6

    const/4 v7, 0x0

    xor-int/2addr v7, v15

    invoke-static {v7}, Landroidx/media3/common/util/Log;->checkState(Z)V

    invoke-virtual {v2, v6, v15}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    xor-int/2addr v4, v15

    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkState(Z)V

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v15}, Landroid/util/SparseBooleanArray;->append(IZ)V

    const/4 v5, 0x0

    xor-int/2addr v5, v15

    invoke-static {v5}, Landroidx/media3/common/util/Log;->checkState(Z)V

    const/16 v5, 0xa

    invoke-virtual {v2, v5, v15}, Landroid/util/SparseBooleanArray;->append(IZ)V

    new-instance v6, Landroidx/media3/common/Player$Commands;

    const/4 v7, 0x0

    xor-int/2addr v7, v15

    invoke-static {v7}, Landroidx/media3/common/util/Log;->checkState(Z)V

    new-instance v7, Landroidx/media3/common/FlagSet;

    invoke-direct {v7, v2}, Landroidx/media3/common/FlagSet;-><init>(Landroid/util/SparseBooleanArray;)V

    invoke-direct {v6, v7}, Landroidx/media3/common/Player$Commands;-><init>(Landroidx/media3/common/FlagSet;)V

    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/SystemClock;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {v2, v6, v9}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-static {v6}, Landroidx/media3/exoplayer/PlaybackInfo;->createDummy(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v6

    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {v6, v7, v11}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->setPlayer(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroid/os/Looper;)V

    new-instance v6, Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playerName:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroidx/media3/exoplayer/analytics/PlayerId;-><init>(Ljava/lang/String;)V

    new-instance v16, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    iget-object v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    iget-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->secondaryRenderers:[Landroidx/media3/exoplayer/Renderer;

    iget-object v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iget-object v14, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v22, Landroidx/media3/exoplayer/DefaultLoadControl;

    invoke-direct/range {v22 .. v22}, Landroidx/media3/exoplayer/DefaultLoadControl;-><init>()V

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iget v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    iget-boolean v9, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    iget-object v15, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    move-object/from16 v33, v2

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    move-object/from16 v28, v2

    move-object/from16 v36, v3

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    move-wide/from16 v29, v2

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/SystemClock;

    move-object/from16 v31, v2

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    move-object/from16 v35, v2

    move-object/from16 v32, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v34, v6

    move-object/from16 v17, v7

    move-object/from16 v27, v8

    move/from16 v25, v9

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v26, v15

    invoke-direct/range {v16 .. v35}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;-><init>(Landroid/content/Context;[Landroidx/media3/exoplayer/Renderer;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultLoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;IZLandroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;JLandroid/os/Looper;Landroidx/media3/common/util/SystemClock;Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    move-object/from16 v8, v16

    move-object/from16 v2, v34

    iput-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v4, v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    const/4 v3, 0x0

    iput v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    sget-object v3, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    const/4 v15, -0x1

    iput v15, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    sget-object v3, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v3}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    new-instance v5, Landroid/os/Handler;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    check-cast v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->eventDispatcher:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    iget-object v11, v9, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->listener:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    if-ne v11, v6, :cond_4

    const/4 v11, 0x1

    iput-boolean v11, v9, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->released:Z

    invoke-virtual {v3, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    new-instance v7, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    invoke-direct {v7, v5, v6}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;)V

    invoke-virtual {v3, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v3, v5, :cond_6

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    iget-boolean v6, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/SystemClock;

    iget-object v9, v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v11}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object v7

    new-instance v9, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3, v6, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ZLandroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    invoke-virtual {v7, v9}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_6
    new-instance v9, Lcom/motorola/camera/AppFeatures;

    iget-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    iget-object v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/SystemClock;

    new-instance v14, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;

    invoke-direct {v14, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    move-object v11, v4

    invoke-direct/range {v9 .. v14}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/SystemClock;Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;)V

    move-object v4, v11

    iput-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionIdState:Lcom/motorola/camera/AppFeatures;

    new-instance v2, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object v3, v9, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Landroidx/compose/runtime/Latch;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/SystemClock;

    move v3, v5

    move-object v5, v0

    move v0, v3

    move-object/from16 v3, v36

    const/4 v9, 0x4

    invoke-direct/range {v2 .. v7}, Landroidx/compose/runtime/Latch;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/common/util/SystemClock;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioBecomingNoisyManager:Landroidx/compose/runtime/Latch;

    invoke-virtual {v2}, Landroidx/compose/runtime/Latch;->setEnabled()V

    new-instance v2, Landroidx/media3/exoplayer/WakeLockManager;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/SystemClock;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/media3/exoplayer/WakeLockManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/util/SystemClock;I)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    new-instance v2, Landroidx/media3/exoplayer/WakeLockManager;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/SystemClock;

    const/4 v6, 0x3

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/media3/exoplayer/WakeLockManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/util/SystemClock;I)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    sget v2, Landroidx/media3/common/DeviceInfo;->$r8$clinit:I

    sget-object v2, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoSize:Landroidx/media3/common/VideoSize;

    sget-object v2, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object v3, v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v4

    iget-object v3, v3, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v4, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v4}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v6, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v9, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {v1, v2, v0, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    iget-boolean v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v3, 0x9

    const/4 v11, 0x1

    invoke-virtual {v1, v11, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->priority:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v1, v15, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/exoplayer/WakeLockManager;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/WakeLockManager;->open()Z

    return-void

    :goto_5
    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/exoplayer/WakeLockManager;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/WakeLockManager;->open()Z

    throw v0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method public static getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 6

    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iget-object v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget v1, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    return-wide v0

    :cond_0
    iget-wide v0, v1, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static maskPlaybackState(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithIsLoading(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final buildUpdatedMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/Timeline$Window;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p0}, Landroidx/media3/common/MediaMetadata;->buildUpon()Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object p0

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    :cond_2
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    :cond_3
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    :cond_4
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    :cond_5
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    :cond_6
    if-eqz v2, :cond_8

    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    :goto_0
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    :cond_8
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    :cond_9
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    :cond_a
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    :cond_b
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    if-eqz v2, :cond_c

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;

    :cond_c
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->year:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    :cond_d
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    :cond_e
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    :cond_f
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    :cond_10
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    if-eqz v2, :cond_11

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    :cond_11
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    if-eqz v2, :cond_12

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    :cond_12
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    if-eqz v2, :cond_13

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    :cond_13
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    if-eqz v2, :cond_14

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    :cond_14
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    if-eqz v2, :cond_15

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    :cond_15
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    if-eqz v2, :cond_16

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    :cond_16
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    if-eqz v2, :cond_17

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    :cond_17
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    if-eqz v2, :cond_18

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    :cond_18
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    if-eqz v2, :cond_19

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    :cond_19
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1a

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    :cond_1a
    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;

    :cond_1b
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    :cond_1c
    :goto_1
    new-instance v0, Landroidx/media3/common/MediaMetadata;

    invoke-direct {v0, p0}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    return-object v0
.end method

.method public final clearVideoSurface()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public final createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v0

    new-instance v1, Landroidx/media3/exoplayer/PlayerMessage;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v5, v0

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v6, v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/PlayerMessage;-><init>(Landroidx/media3/exoplayer/PlayerMessage$Sender;Landroidx/media3/exoplayer/PlayerMessage$Target;Landroidx/media3/common/Timeline;ILandroid/os/Looper;)V

    return-object v1
.end method

.method public final getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 7

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-object v3, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v3, v0, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result p1

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Timeline$Window;

    const-wide/16 v0, 0x0

    invoke-virtual {v3, p1, p0, v0, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-wide p0, p0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-wide p0, v4, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p0

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    add-long/2addr v0, p0

    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getCurrentAdGroupIndex()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getCurrentAdIndexInAdGroup()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getCurrentMediaItemIndex()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public final getCurrentPosition()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 3

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlaybackInfo;->getEstimatedPositionUs()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    :goto_0
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_2

    return-wide v0

    :cond_2
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, p1, p0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide p0, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public final getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public final getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Landroidx/media3/common/Tracks;

    return-object p0
.end method

.method public final getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I
    .locals 1

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    return p0

    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, p1, p0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    iget p0, p0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    return p0
.end method

.method public final getDuration()J
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v2, p0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v0, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPlayWhenReady()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    return p0
.end method

.method public final getPlaybackState()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    return p0
.end method

.method public final getTrackSelectionParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    return-object p0
.end method

.method public final isPlayingAd()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p0

    return p0
.end method

.method public final maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    move-object/from16 v3, p1

    iget-object v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v7

    invoke-virtual/range {p1 .. p2}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v9

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v10, Landroidx/media3/exoplayer/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v11

    sget-object v19, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    sget-object v21, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    const-wide/16 v17, 0x0

    move-wide v13, v11

    move-wide v15, v11

    move-object/from16 v20, v0

    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iget-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    return-object v0

    :cond_2
    iget-object v3, v9, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v11, v12}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v11, v9, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_2
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v7

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v6, v3, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget-wide v2, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    sub-long/2addr v7, v2

    :cond_4
    if-eqz v10, :cond_5

    cmp-long v2, v12, v7

    if-gez v2, :cond_6

    :cond_5
    move v1, v10

    move-object v10, v11

    move-wide v11, v12

    goto/16 :goto_6

    :cond_6
    if-nez v2, :cond_a

    iget-object v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v3, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-eq v2, v3, :cond_7

    goto :goto_3

    :cond_7
    return-object v9

    :cond_8
    :goto_3
    iget-object v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v11}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    iget v1, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    :goto_4
    move-object v10, v11

    goto :goto_5

    :cond_9
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v0, v0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    goto :goto_4

    :goto_5
    iget-wide v11, v9, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-wide v13, v9, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-wide v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-wide v4, v9, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    sub-long v17, v0, v4

    iget-object v4, v9, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v5, v9, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v6, v9, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-wide v15, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-wide v0, v2, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    return-object v2

    :cond_a
    move-object v10, v11

    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-wide v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    sub-long v2, v12, v7

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    iget-wide v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v9, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    add-long v0, v12, v17

    :cond_b
    iget-object v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v3, v9, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v9, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-wide v11, v12

    move-wide v13, v11

    move-wide v15, v11

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-wide v0, v2, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    return-object v2

    :goto_6
    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkState(Z)V

    if-nez v1, :cond_c

    sget-object v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    :goto_7
    move-object/from16 v19, v2

    goto :goto_8

    :cond_c
    iget-object v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    goto :goto_7

    :goto_8
    if-nez v1, :cond_d

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    :goto_9
    move-object/from16 v20, v0

    goto :goto_a

    :cond_d
    iget-object v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_9

    :goto_a
    if-nez v1, :cond_e

    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    :goto_b
    move-object/from16 v21, v0

    goto :goto_c

    :cond_e
    iget-object v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    goto :goto_b

    :goto_c
    const-wide/16 v17, 0x0

    move-wide v13, v11

    move-wide v15, v11

    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-wide v11, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    return-object v0
.end method

.method public final maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;
    .locals 6

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    move-wide p3, v1

    :cond_0
    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, p2

    goto :goto_2

    :cond_3
    :goto_1
    iget-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    iget-object p3, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p3, Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, p3, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p3

    iget-wide p3, p3, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p3

    goto :goto_0

    :goto_2
    iget-object p2, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Landroidx/media3/common/Timeline$Window;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final maybeNotifySurfaceSizeChanged(II)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    iget v1, v0, Landroidx/media3/common/util/Size;->width:I

    if-ne p1, v1, :cond_1

    iget v0, v0, Landroidx/media3/common/util/Size;->height:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda15;-><init>(II)V

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public final prepare()V
    .locals 12

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskPlaybackState(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v4

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/16 v2, 0x1d

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v1}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final release()V
    .locals 7

    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Release "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [AndroidXMedia3/1.7.1] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/media3/common/MediaLibraryInfo;->registeredModules:Ljava/util/HashSet;

    const-class v2, Landroidx/media3/common/MediaLibraryInfo;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroidx/media3/common/MediaLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioBecomingNoisyManager:Landroidx/compose/runtime/Latch;

    invoke-virtual {v0}, Landroidx/compose/runtime/Latch;->setEnabled()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->releaseTimeoutMs:J

    invoke-virtual {v0, v1, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :goto_0
    monitor-exit v0

    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    const/16 v3, 0xe

    invoke-direct {v1, v3}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->release()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object v0, v0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    check-cast v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    iget-object v0, v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->eventDispatcher:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    iget-object v0, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    iget-object v6, v5, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->listener:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    if-ne v6, v3, :cond_3

    iput-boolean v2, v5, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->released:Z

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithEstimatedPosition()Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-static {v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskPlaybackState(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    :cond_6
    sget-object v0, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->verifyCurrentThread()V

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    iget-object v3, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->released:Z

    iget-boolean v4, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    iget-object v4, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    iget-object v5, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/motorola/camera/ui/DownUpDetector;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/DownUpDetector;->build()Landroidx/media3/common/FlagSet;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final removeSurfaceCallbacks()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    iget-boolean v3, v0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkState(Z)V

    const/16 v3, 0x2710

    iput v3, v0, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->send()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eq v0, v1, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v3, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method public final seekTo(JIZ)V
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ltz p3, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v5

    if-lt p3, v5, :cond_2

    :goto_1
    return-void

    :cond_2
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-boolean v6, v5, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v6

    iput-boolean v3, v5, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    new-instance v7, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v5, v6, v2, v7}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_3
    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "ExoPlayerImpl"

    const-string/jumbo v2, "seekTo ignored because an ad is playing"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {v1, v2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    invoke-virtual {v1, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->incrementPendingOperationAcks(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;->f$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v3, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v0, v1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    const/4 v6, 0x4

    if-ne v3, v6, :cond_6

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    :cond_6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v7

    invoke-virtual {p0, v4, p3, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v8

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v3, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v6, v4, p3, v8, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    invoke-virtual {v3, v5, v6}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v4, 0x1

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v5

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final sendRendererMessage(IILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    if-eq p1, v4, :cond_0

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_1

    :cond_0
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v4

    iget-boolean v5, v4, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput p2, v4, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    invoke-virtual {v4, p3}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroidx/media3/exoplayer/PlayerMessage;->send()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->secondaryRenderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    if-eqz v3, :cond_4

    if-eq p1, v4, :cond_3

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v5

    if-ne v5, p1, :cond_4

    :cond_3
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v3

    iget-boolean v5, v3, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput p2, v3, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    invoke-virtual {v3, p3}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlayerMessage;->send()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final setImageOutput(Landroidx/media3/exoplayer/image/ImageOutput;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x4

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public final setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public final setPlayWhenReady(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(IZ)V

    return-void
.end method

.method public final setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v0, p1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final setRepeatMode(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v1}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda17;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda17;-><init>(II)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateAvailableCommands()V

    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_0
    return-void
.end method

.method public final setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParametersInternal(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    invoke-virtual {v1, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->init(Landroidx/media3/common/TrackSelectionParameters;)V

    new-instance v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParametersInternal(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    new-instance v0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0x13

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final setVideoOutputInternal(Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    monitor-enter v6

    :try_start_0
    iget-boolean v7, v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    if-nez v7, :cond_4

    iget-object v7, v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iget-object v8, v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v9, Landroid/util/Pair;

    invoke-direct {v9, p1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v10, 0x1e

    invoke-virtual {v8, v10, v9}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v1, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    monitor-exit v6

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit v6

    :goto_3
    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-ne v0, v2, :cond_5

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    :cond_5
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-nez v1, :cond_6

    new-instance p1, Lcom/google/gson/JsonParseException;

    const-string v0, "Detaching surface timed out."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x2

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, p1, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->stopInternal(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    :cond_6
    return-void

    :goto_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final stopInternal(Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iget-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskPlaybackState(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object p1, v0, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final updateAvailableCommands()V
    .locals 15

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v2

    invoke-virtual {v1}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v3

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eqz v5, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v5

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget v9, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    if-ne v9, v7, :cond_1

    move v9, v6

    :cond_1
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v4, v5, v9, v10}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v4

    :goto_0
    if-eq v4, v8, :cond_2

    move v4, v7

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    move v5, v8

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v9

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    if-ne v10, v7, :cond_4

    move v10, v6

    :cond_4
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v5, v9, v10, v11}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v5

    :goto_2
    if-eq v5, v8, :cond_5

    move v5, v7

    goto :goto_3

    :cond_5
    move v5, v6

    :goto_3
    invoke-virtual {v1}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v8

    invoke-virtual {v1}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v9

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    new-instance v10, Lcom/google/android/gms/tasks/zzs;

    const/16 v11, 0x10

    invoke-direct {v10, v11}, Lcom/google/android/gms/tasks/zzs;-><init>(I)V

    iget-object v11, v10, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v11, Lcom/motorola/camera/ui/DownUpDetector;

    iget-object v12, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

    iget-object v12, v12, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v13, v6

    :goto_4
    iget-object v14, v12, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_6

    invoke-virtual {v12, v13}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v14

    invoke-virtual {v11, v14}, Lcom/motorola/camera/ui/DownUpDetector;->add(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    xor-int/lit8 v12, v2, 0x1

    const/4 v13, 0x4

    invoke-virtual {v10, v13, v12}, Lcom/google/android/gms/tasks/zzs;->addIf(IZ)V

    if-eqz v3, :cond_7

    if-nez v2, :cond_7

    move v13, v7

    goto :goto_5

    :cond_7
    move v13, v6

    :goto_5
    const/4 v14, 0x5

    invoke-virtual {v10, v14, v13}, Lcom/google/android/gms/tasks/zzs;->addIf(IZ)V

    if-eqz v4, :cond_8

    if-nez v2, :cond_8

    move v13, v7

    goto :goto_6

    :cond_8
    move v13, v6

    :goto_6
    const/4 v14, 0x6

    invoke-virtual {v10, v14, v13}, Lcom/google/android/gms/tasks/zzs;->addIf(IZ)V

    if-nez v1, :cond_a

    if-nez v4, :cond_9

    if-eqz v8, :cond_9

    if-eqz v3, :cond_a

    :cond_9
    if-nez v2, :cond_a

    move v4, v7

    goto :goto_7

    :cond_a
    move v4, v6

    :goto_7
    const/4 v13, 0x7

    invoke-virtual {v10, v13, v4}, Lcom/google/android/gms/tasks/zzs;->addIf(IZ)V

    if-eqz v5, :cond_b

    if-nez v2, :cond_b

    move v4, v7

    goto :goto_8

    :cond_b
    move v4, v6

    :goto_8
    const/16 v13, 0x8

    invoke-virtual {v10, v13, v4}, Lcom/google/android/gms/tasks/zzs;->addIf(IZ)V

    if-nez v1, :cond_d

    if-nez v5, :cond_c

    if-eqz v8, :cond_d

    if-eqz v9, :cond_d

    :cond_c
    if-nez v2, :cond_d

    move v1, v7

    goto :goto_9

    :cond_d
    move v1, v6

    :goto_9
    const/16 v4, 0x9

    invoke-virtual {v10, v4, v1}, Lcom/google/android/gms/tasks/zzs;->addIf(IZ)V

    const/16 v1, 0xa

    invoke-virtual {v10, v1, v12}, Lcom/google/android/gms/tasks/zzs;->addIf(IZ)V

    if-eqz v3, :cond_e

    if-nez v2, :cond_e

    move v1, v7

    goto :goto_a

    :cond_e
    move v1, v6

    :goto_a
    const/16 v4, 0xb

    invoke-virtual {v10, v4, v1}, Lcom/google/android/gms/tasks/zzs;->addIf(IZ)V

    if-eqz v3, :cond_f

    if-nez v2, :cond_f

    move v6, v7

    :cond_f
    const/16 v1, 0xc

    invoke-virtual {v10, v1, v6}, Lcom/google/android/gms/tasks/zzs;->addIf(IZ)V

    new-instance v1, Landroidx/media3/common/Player$Commands;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/DownUpDetector;->build()Landroidx/media3/common/FlagSet;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/Player$Commands;-><init>(Landroidx/media3/common/FlagSet;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_10
    return-void
.end method

.method public final updatePlayWhenReady(IZ)V
    .locals 13

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-boolean v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-ne v4, p2, :cond_1

    if-ne v1, v3, :cond_1

    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-boolean v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithEstimatedPosition()Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    :cond_2
    invoke-virtual {v0, p1, v3, p2}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlayWhenReady(IIZ)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v5

    shl-int/lit8 v0, v3, 0x4

    or-int/2addr p1, v0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iput-object p1, v1, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v1}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4, v5}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/common/Timeline$Window;

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v10, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v11, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v12, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v13

    const/16 v16, 0x0

    const/16 v17, 0x2

    const-wide/16 v14, 0x0

    const/16 v18, 0x3

    if-eqz v13, :cond_0

    invoke-virtual {v9}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v13

    invoke-virtual {v9}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v7

    if-eq v13, v7, :cond_1

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    iget-object v7, v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v9, v7, v6}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v7

    iget v7, v7, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {v9, v7, v5, v14, v15}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v7

    iget-object v7, v7, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v9, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v11, v9, v6}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {v11, v6, v5, v14, v15}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz p3, :cond_2

    if-nez v2, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    move/from16 v5, v17

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    move/from16 v5, v18

    :goto_0
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_5
    if-eqz p3, :cond_6

    if-nez v2, :cond_6

    iget-wide v5, v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v9, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v5, v5, v9

    if-gez v5, :cond_6

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_7

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    if-eqz p8, :cond_7

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v6, :cond_9

    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v9, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v9, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v8, v9, v10}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v8

    iget v8, v8, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v9, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v10, v0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v10, Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v9, v8, v10, v14, v15}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v8

    iget-object v8, v8, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    :goto_2
    sget-object v9, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    if-nez v6, :cond_a

    iget-object v9, v3, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    :cond_a
    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v9}, Landroidx/media3/common/MediaMetadata;->buildUpon()Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v9

    iget-object v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move/from16 v11, v16

    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_c

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/common/Metadata;

    move/from16 v13, v16

    :goto_5
    iget-object v7, v12, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length v14, v7

    if-ge v13, v14, :cond_b

    aget-object v7, v7, v13

    invoke-interface {v7, v9}, Landroidx/media3/common/Metadata$Entry;->populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V

    add-int/lit8 v13, v13, 0x1

    const-wide/16 v14, 0x0

    goto :goto_5

    :cond_b
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v14, 0x0

    goto :goto_4

    :cond_c
    new-instance v7, Landroidx/media3/common/MediaMetadata;

    invoke-direct {v7, v9}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    iput-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    :cond_d
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->buildUpdatedMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v7

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v7, v9}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-boolean v7, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-boolean v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-eq v7, v10, :cond_e

    const/4 v7, 0x1

    goto :goto_6

    :cond_e
    move/from16 v7, v16

    :goto_6
    iget v10, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    iget v11, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v10, v11, :cond_f

    const/4 v10, 0x1

    goto :goto_7

    :cond_f
    move/from16 v10, v16

    :goto_7
    if-nez v10, :cond_10

    if-eqz v7, :cond_11

    :cond_10
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateWakeAndWifiLock()V

    :cond_11
    iget-boolean v11, v3, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    iget-boolean v12, v1, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-eq v11, v12, :cond_12

    const/4 v11, 0x1

    goto :goto_8

    :cond_12
    move/from16 v11, v16

    :goto_8
    if-nez v4, :cond_13

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;

    const/4 v13, 0x1

    move/from16 v14, p2

    invoke-direct {v12, v14, v13, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;)V

    move/from16 v13, v16

    invoke-virtual {v4, v13, v12}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_13
    if-eqz p3, :cond_1b

    new-instance v4, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iget-object v12, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v12}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_14

    iget-object v12, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v12, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v13, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v13, v12, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v13, v4, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v14, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v14, v12}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v14

    iget-object v15, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    move/from16 v16, v6

    iget-object v6, v0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/common/Timeline$Window;

    move/from16 v19, v9

    move/from16 v20, v10

    const-wide/16 v9, 0x0

    invoke-virtual {v15, v13, v6, v9, v10}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v6

    iget-object v6, v6, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v9, v0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v9, Landroidx/media3/common/Timeline$Window;

    iget-object v9, v9, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    move-object/from16 v22, v6

    move-object/from16 v24, v9

    move-object/from16 v25, v12

    move/from16 v23, v13

    move/from16 v26, v14

    goto :goto_9

    :cond_14
    move/from16 v16, v6

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v23, p7

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    :goto_9
    if-nez v2, :cond_17

    iget-object v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v9, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v6, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v4, v9, v6}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v9

    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v12

    goto :goto_c

    :cond_15
    iget-object v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v6, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_16

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-static {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v9

    :goto_a
    move-wide v12, v9

    goto :goto_c

    :cond_16
    iget-wide v9, v4, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v12, v4, Landroidx/media3/common/Timeline$Period;->durationUs:J

    :goto_b
    add-long/2addr v9, v12

    goto :goto_a

    :cond_17
    iget-object v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-wide v9, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v12

    goto :goto_c

    :cond_18
    iget-wide v9, v4, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v12, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    goto :goto_b

    :goto_c
    new-instance v21, Landroidx/media3/common/Player$PositionInfo;

    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v27

    invoke-static {v12, v13}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v29

    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v6, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    move/from16 v32, v4

    move/from16 v31, v6

    invoke-direct/range {v21 .. v32}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    move-object/from16 v4, v21

    iget-object v6, v0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v9

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v10, v10, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_19

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v12, v10, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v12, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v10, v10, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v10, v12, v13}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v10, v10, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v10, v12}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v10

    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v13, v13, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    const-wide/16 v14, 0x0

    invoke-virtual {v13, v9, v6, v14, v15}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v13

    iget-object v13, v13, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v6, v6, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    move-object/from16 v24, v6

    move/from16 v26, v10

    move-object/from16 v25, v12

    move-object/from16 v22, v13

    goto :goto_d

    :cond_19
    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    :goto_d
    invoke-static/range {p5 .. p6}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v27

    new-instance v21, Landroidx/media3/common/Player$PositionInfo;

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-static {v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v12

    move-wide/from16 v29, v12

    goto :goto_e

    :cond_1a
    move-wide/from16 v29, v27

    :goto_e
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v10, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v6, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    move/from16 v32, v6

    move/from16 v23, v9

    move/from16 v31, v10

    invoke-direct/range {v21 .. v32}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    move-object/from16 v6, v21

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v10, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v10, v2, v4, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;-><init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    const/16 v2, 0xb

    invoke-virtual {v9, v2, v10}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    goto :goto_f

    :cond_1b
    move/from16 v16, v6

    move/from16 v19, v9

    move/from16 v20, v10

    :goto_f
    if-eqz v16, :cond_1c

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1c
    iget-object v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eq v2, v4, :cond_1d

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;

    const/4 v5, 0x7

    invoke-direct {v4, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/16 v5, 0xa

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v2, :cond_1d

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;

    const/16 v6, 0x8

    invoke-direct {v4, v1, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1d
    iget-object v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    if-eq v2, v4, :cond_1e

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iget-object v4, v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;

    const/16 v5, 0x9

    invoke-direct {v4, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    move/from16 v5, v17

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1e
    if-nez v19, :cond_1f

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const/16 v2, 0xe

    invoke-virtual {v4, v2, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1f
    if-eqz v11, :cond_20

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    move/from16 v5, v18

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_20
    if-nez v20, :cond_21

    if-eqz v7, :cond_22

    :cond_21
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/4 v9, -0x1

    invoke-virtual {v2, v9, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_22
    if-eqz v20, :cond_23

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/4 v5, 0x4

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_23
    if-nez v7, :cond_24

    iget v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    iget v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    if-eq v2, v4, :cond_25

    :cond_24
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_25
    iget v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    iget v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-eq v2, v4, :cond_26

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;

    const/4 v5, 0x4

    invoke-direct {v4, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/4 v5, 0x6

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_26
    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlaybackInfo;->isPlaying()Z

    move-result v2

    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlaybackInfo;->isPlaying()Z

    move-result v4

    if-eq v2, v4, :cond_27

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;

    const/4 v5, 0x5

    invoke-direct {v4, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/4 v5, 0x7

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_27
    iget-object v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v2, v4}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;

    const/4 v5, 0x6

    invoke-direct {v4, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/16 v5, 0xc

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_28
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateAvailableCommands()V

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v2}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    iget-boolean v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    iget-boolean v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eq v2, v1, :cond_29

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateWakeAndWifiLock()V

    goto :goto_10

    :cond_29
    return-void
.end method

.method public final updateWakeAndWifiLock()V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    return-void
.end method

.method public final verifyApplicationThread()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/exoplayer/WakeLockManager;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/WakeLockManager;->blockUninterruptible()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v0, v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Player is accessed on the wrong thread.\nCurrent thread: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'\nExpected thread: \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method
