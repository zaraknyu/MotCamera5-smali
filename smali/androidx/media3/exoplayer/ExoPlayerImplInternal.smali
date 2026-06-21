.class public final Landroidx/media3/exoplayer/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
.implements Landroidx/media3/exoplayer/PlayerMessage$Sender;


# static fields
.field public static final BUFFERING_MAXIMUM_INTERVAL_MS:J


# instance fields
.field public final analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

.field public final applicationLooperHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

.field public final audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

.field public final backBufferDurationUs:J

.field public final bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field public final clock:Landroidx/media3/common/util/SystemClock;

.field public deliverPendingMessageAtStartPositionRequired:Z

.field public final emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field public enabledRendererCount:I

.field public foregroundMode:Z

.field public final handler:Landroidx/media3/common/util/SystemHandlerWrapper;

.field public final hasSecondaryRenderers:Z

.field public isPrewarmingDisabledUntilNextTransition:Z

.field public isRebuffering:Z

.field public lastRebufferRealtimeMs:J

.field public final livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

.field public final loadControl:Landroidx/media3/exoplayer/DefaultLoadControl;

.field public final mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

.field public final mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

.field public nextPendingMessageIndexHint:I

.field public offloadSchedulingEnabled:Z

.field public pauseAtEndOfWindow:Z

.field public pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

.field public final pendingMessages:Ljava/util/ArrayList;

.field public pendingPauseAtEndOfPeriod:Z

.field public pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

.field public final period:Landroidx/media3/common/Timeline$Period;

.field public playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

.field public playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;

.field public final playbackLooper:Landroid/os/Looper;

.field public final playbackLooperProvider:Landroidx/compose/ui/graphics/AndroidPaint;

.field public playbackMaybeBecameStuckAtMs:J

.field public final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

.field public prewarmingMediaPeriodDiscontinuity:J

.field public final queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

.field public final releaseTimeoutMs:J

.field public released:Z

.field public final rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

.field public rendererPositionElapsedRealtimeUs:J

.field public rendererPositionUs:J

.field public final rendererReportedReady:[Z

.field public final renderers:[Landroidx/media3/exoplayer/RendererHolder;

.field public repeatMode:I

.field public requestForRendererSleep:Z

.field public seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field public shouldContinueLoading:Z

.field public shuffleModeEnabled:Z

.field public final trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

.field public volume:F

.field public final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->BUFFERING_MAXIMUM_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Landroidx/media3/exoplayer/Renderer;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultLoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;IZLandroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;JLandroid/os/Looper;Landroidx/media3/common/util/SystemClock;Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p10

    move-object/from16 v6, p16

    move-object/from16 v7, p18

    move-object/from16 v8, p19

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->prewarmingMediaPeriodDiscontinuity:J

    move-object/from16 v11, p17

    iput-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    move-object/from16 v11, p5

    iput-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/DefaultLoadControl;

    iput-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    move/from16 v12, p8

    iput v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    move/from16 v12, p9

    iput-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    move-object/from16 v12, p11

    iput-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    move-object/from16 v12, p12

    iput-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    move-wide/from16 v12, p13

    iput-wide v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->releaseTimeoutMs:J

    const/4 v12, 0x0

    iput-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    iput-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/SystemClock;

    iput-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    iput-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iput-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    const/high16 v13, 0x3f800000    # 1.0f

    iput v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->volume:F

    iput-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    iput-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    iget-wide v9, v3, Landroidx/media3/exoplayer/DefaultLoadControl;->backBufferDurationUs:J

    iput-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    sget-object v3, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline$1;

    invoke-static {v11}, Landroidx/media3/exoplayer/PlaybackInfo;->createDummy(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    new-instance v9, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-direct {v9, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    iput-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    array-length v3, v1

    new-array v3, v3, [Landroidx/media3/exoplayer/RendererCapabilities;

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v3, v1

    new-array v3, v3, [Z

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererReportedReady:[Z

    move-object v3, v2

    check-cast v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v9, v1

    new-array v9, v9, [Landroidx/media3/exoplayer/RendererHolder;

    iput-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    move v9, v12

    move v10, v9

    :goto_0
    array-length v11, v1

    const/4 v13, 0x1

    if-ge v9, v11, :cond_1

    aget-object v11, v1, v9

    invoke-interface {v11, v9, v7, v6}, Landroidx/media3/exoplayer/Renderer;->init(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/SystemClock;)V

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v14, v1, v9

    invoke-interface {v14}, Landroidx/media3/exoplayer/Renderer;->getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;

    move-result-object v14

    aput-object v14, v11, v9

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v11, v11, v9

    invoke-interface {v11, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->setListener(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)V

    aget-object v11, p3, v9

    if-eqz v11, :cond_0

    array-length v10, v1

    add-int/2addr v10, v9

    invoke-interface {v11, v10, v7, v6}, Landroidx/media3/exoplayer/Renderer;->init(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/SystemClock;)V

    move v10, v13

    :cond_0
    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    new-instance v13, Landroidx/media3/exoplayer/RendererHolder;

    aget-object v14, v1, v9

    aget-object v15, p3, v9

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput-object v14, v13, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    iput v9, v13, Landroidx/media3/exoplayer/RendererHolder;->index:I

    iput-object v15, v13, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    const/4 v14, 0x0

    iput v14, v13, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    iput-boolean v14, v13, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    iput-boolean v14, v13, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    aput-object v13, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->hasSecondaryRenderers:Z

    new-instance v1, Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-direct {v1, v0, v6}, Landroidx/media3/exoplayer/DefaultMediaClock;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/common/util/SystemClock;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    iput-object v0, v2, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->listener:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iput-object v4, v2, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iput-boolean v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    const/4 v1, 0x0

    move-object/from16 v2, p15

    invoke-virtual {v6, v2, v1}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->applicationLooperHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v2, Landroidx/media3/exoplayer/MediaPeriodQueue;

    new-instance v3, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v5, v1, v3, v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;-><init>(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;Landroidx/media3/common/util/SystemHandlerWrapper;Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList;

    invoke-direct {v2, v0, v5, v1, v7}, Landroidx/media3/exoplayer/MediaSourceList;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;Landroidx/media3/common/util/SystemHandlerWrapper;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    new-instance v1, Landroidx/compose/ui/graphics/AndroidPaint;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/AndroidPaint;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooperProvider:Landroidx/compose/ui/graphics/AndroidPaint;

    iget-object v2, v1, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Landroidx/compose/ui/graphics/AndroidPaint;->internalShader:Ljava/lang/Object;

    check-cast v3, Landroid/os/Looper;

    if-nez v3, :cond_3

    iget v3, v1, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    if-nez v3, :cond_2

    iget-object v3, v1, Landroidx/compose/ui/graphics/AndroidPaint;->internalColorFilter:Ljava/lang/Object;

    check-cast v3, Landroid/os/HandlerThread;

    if-nez v3, :cond_2

    move v12, v13

    :cond_2
    invoke-static {v12}, Landroidx/media3/common/util/Log;->checkState(Z)V

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "ExoPlayer:Playback"

    const/16 v5, -0x10

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, v1, Landroidx/compose/ui/graphics/AndroidPaint;->internalColorFilter:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v3, v1, Landroidx/compose/ui/graphics/AndroidPaint;->internalColorFilter:Ljava/lang/Object;

    check-cast v3, Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, v1, Landroidx/compose/ui/graphics/AndroidPaint;->internalShader:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    iget v3, v1, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    add-int/2addr v3, v13

    iput v3, v1, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    iget-object v1, v1, Landroidx/compose/ui/graphics/AndroidPaint;->internalShader:Ljava/lang/Object;

    check-cast v1, Landroid/os/Looper;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v6, v1, v0}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v2, Landroidx/media3/exoplayer/AudioFocusManager;

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v1, v0}, Landroidx/media3/exoplayer/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    return-void

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static deliverMessage(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/PlayerMessage;->target:Landroidx/media3/exoplayer/PlayerMessage$Target;

    iget v2, p0, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    iget-object v3, p0, Landroidx/media3/exoplayer/PlayerMessage;->payload:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    throw v1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static isLoadingPossible(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroidx/media3/exoplayer/source/SampleStream;->maybeThrowError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez p0, :cond_3

    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v1

    :goto_2
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p0, v1, v3

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_4
    return v0
.end method

.method public static resolvePendingMessageEndOfStreamPosition(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)V
    .locals 4

    iget-object v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget-wide v0, p3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput p2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iput-wide v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iput-object p0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    return-void
.end method

.method public static resolvePendingMessagePosition(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Z
    .locals 13

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    const/4 v8, 0x1

    const-wide/high16 v9, -0x8000000000000000L

    if-nez v1, :cond_2

    iget-wide v0, v7, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    cmp-long v2, v0, v9

    if-nez v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    :goto_0
    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    iget-object v3, v7, Landroidx/media3/exoplayer/PlayerMessage;->timeline:Landroidx/media3/common/Timeline;

    iget v4, v7, Landroidx/media3/exoplayer/PlayerMessage;->mediaItemIndex:I

    invoke-direct {v2, v3, v4, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    move-object v1, v2

    const/4 v2, 0x0

    move-object v0, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSeekPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iput-wide v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    iget-wide v0, v7, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    cmp-long v0, v0, v9

    if-nez v0, :cond_5

    invoke-static {p1, p0, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)V

    return v8

    :cond_2
    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual {p1, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_3
    iget-wide v3, v7, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    cmp-long v3, v3, v9

    if-nez v3, :cond_4

    invoke-static {p1, p0, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)V

    return v8

    :cond_4
    iput v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {p2, v1, v6}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-boolean v1, v6, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v1, :cond_5

    iget v1, v6, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v1, v5, v3, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    if-ne v1, v0, :cond_5

    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iget-wide v3, v6, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v0, v3

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {p1, v3, v6}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    move-wide v11, v0

    move-object v1, v5

    move-wide v4, v11

    move-object v0, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iput-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    :cond_5
    return v8
.end method

.method public static resolveSeekPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;
    .locals 9

    iget-object v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    :try_start_0
    iget v5, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v6, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v3, p5

    move-object v4, p6

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v4

    move-object v4, v3

    invoke-virtual {p0, v2}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    iget-object p6, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, p6}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p6

    const/4 v0, -0x1

    if-eq p6, v0, :cond_4

    iget-object p2, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, p2, v5}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget-boolean p2, p2, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz p2, :cond_3

    iget p2, v5, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    const-wide/16 p3, 0x0

    invoke-virtual {v2, p2, v4, p3, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget-object p3, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, p3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p3

    if-ne p2, p3, :cond_3

    iget-object p2, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, p2, v5}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget v6, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-wide v7, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object p5

    :cond_4
    move-object v3, p0

    if-eqz p2, :cond_5

    iget-object p0, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move p2, p3

    move p3, p4

    move-object p5, v2

    move-object p6, v3

    move-object p1, v5

    move-object p4, p0

    move-object p0, v4

    invoke-static/range {p0 .. p6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSubsequentPeriod(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I

    move-result v6

    if-eq v6, v0, :cond_5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static resolveSubsequentPeriod(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I
    .locals 12

    move-object v3, p0

    move-object v2, p1

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v6, p6

    invoke-virtual {v1, v0, p1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v4, p0, v7, v8}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    const/4 v9, 0x0

    move v5, v9

    :goto_0
    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v10

    if-ge v5, v10, :cond_1

    invoke-virtual {v6, v5, p0, v7, v8}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v10

    iget-object v10, v10, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    return v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v7

    const/4 v8, -0x1

    move v11, v8

    move v10, v9

    :goto_1
    if-ge v10, v7, :cond_3

    if-ne v11, v8, :cond_3

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result v1

    if-ne v1, v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v10, v10, 0x1

    move v3, v1

    move-object v1, v0

    move v0, v3

    move-object v3, p0

    goto :goto_1

    :cond_3
    :goto_2
    if-ne v11, v8, :cond_4

    return v8

    :cond_4
    invoke-virtual {v6, v11, p1, v9}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    return v0
.end method


# virtual methods
.method public final addMediaItemsInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->incrementPendingOperationAcks(I)V

    const/4 v0, -0x1

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    if-ne p2, v0, :cond_0

    iget-object p2, v1, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/ArrayList;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-virtual {v1, p2, v0, p1}, Landroidx/media3/exoplayer/MediaSourceList;->addMediaSources(ILjava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)Landroidx/media3/common/Timeline;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final areRenderersPrewarming()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->hasSecondaryRenderers:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final disableAndResetPrewarmingRenderers()V
    .locals 10

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->hasSecondaryRenderers:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->areRenderersPrewarming()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_6

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v5

    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_5

    :cond_1
    iget v6, v4, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-eq v6, v8, :cond_3

    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    goto :goto_1

    :cond_2
    move v9, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v9, v7

    :goto_2
    if-ne v6, v8, :cond_4

    goto :goto_3

    :cond_4
    move v7, v2

    :goto_3
    if-eqz v9, :cond_5

    iget-object v6, v4, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/exoplayer/Renderer;

    goto :goto_4

    :cond_5
    iget-object v6, v4, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v4, v6, v8}, Landroidx/media3/exoplayer/RendererHolder;->disableRenderer(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    invoke-virtual {v4, v9}, Landroidx/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    iput v7, v4, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    :goto_5
    iget v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v4

    sub-int/2addr v5, v4

    sub-int/2addr v6, v5

    iput v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->prewarmingMediaPeriodDiscontinuity:J

    :cond_7
    :goto_6
    return-void
.end method

.method public final disableRenderer(I)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v1, v0, p1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v1

    aget-object v0, v0, p1

    iget-object v2, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/Renderer;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/RendererHolder;->disableRenderer(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    iget-object v2, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/Renderer;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/RendererHolder;->disableRenderer(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    if-eqz v5, :cond_1

    iget-object v3, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x11

    invoke-interface {v2, v5, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    :cond_1
    iput v4, v0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    invoke-virtual {p0, p1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeTriggerOnRendererReadyChanged(IZ)V

    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    return-void
.end method

.method public final doSomeWork()V
    .locals 49

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Landroidx/media3/common/util/SystemHandlerWrapper;->removeMessages(I)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const/4 v13, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    if-nez v1, :cond_1

    :cond_0
    move v13, v7

    move-wide/from16 v23, v10

    move-wide/from16 v26, v14

    const/4 v15, 0x3

    move v14, v8

    goto/16 :goto_33

    :cond_1
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->reevaluateBuffer(J)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v2, :cond_3

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    cmp-long v2, v2, v14

    if-eqz v2, :cond_2

    iget v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move-wide/from16 v23, v10

    goto/16 :goto_9

    :cond_3
    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v5, :cond_4

    iget-object v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, v4, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-wide/from16 v23, v10

    iget-wide v9, v4, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v21, v4

    move-wide/from16 v19, v9

    invoke-virtual/range {v16 .. v22}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-wide/from16 v23, v10

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, v4, v5, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_f

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v3, :cond_5

    const-wide v3, 0xe8d4a51000L

    :goto_2
    move-wide/from16 v27, v3

    goto :goto_3

    :cond_5
    iget-wide v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v9, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    add-long/2addr v4, v9

    iget-wide v9, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long v3, v4, v9

    goto :goto_2

    :goto_3
    move v3, v6

    :goto_4
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v9, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v11, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    cmp-long v5, v9, v14

    if-eqz v5, :cond_6

    cmp-long v5, v9, v11

    if-nez v5, :cond_7

    :cond_6
    iget-wide v9, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v11, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    cmp-long v5, v9, v11

    if-nez v5, :cond_7

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    const/4 v12, 0x2

    goto :goto_4

    :cond_8
    move-object v3, v13

    :goto_5
    if-nez v3, :cond_9

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->mediaPeriodHolderFactory:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    iget-object v3, v3, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    new-instance v25, Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    iget-object v5, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iget-object v9, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v9, v9, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    iget-object v10, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v11, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v3, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v32, v1

    move-object/from16 v26, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v33, v11

    invoke-direct/range {v25 .. v33}, Landroidx/media3/exoplayer/MediaPeriodHolder;-><init>([Landroidx/media3/exoplayer/RendererCapabilities;JLandroidx/media3/exoplayer/trackselection/MappingTrackSelector;Landroidx/media3/exoplayer/upstream/DefaultAllocator;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    move-object/from16 v3, v25

    goto :goto_6

    :cond_9
    move-wide/from16 v4, v27

    iput-object v1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iput-wide v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    :goto_6
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v4, :cond_b

    iget-object v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v3, v5, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    iput-object v3, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    goto :goto_7

    :cond_b
    iput-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_7
    iput-object v13, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    add-int/2addr v4, v7

    iput v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    iget-boolean v2, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepareCalled:Z

    if-nez v2, :cond_c

    iget-wide v4, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iput-boolean v7, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepareCalled:Z

    iget-object v2, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    invoke-interface {v2, v0, v4, v5}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    goto :goto_8

    :cond_c
    iget-boolean v2, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/16 v4, 0x8

    iget-object v5, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    :cond_d
    :goto_8
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v2, v3, :cond_e

    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    :cond_e
    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    :cond_f
    :goto_9
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v1, :cond_10

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isLoadingPossible(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateIsLoading()V

    goto :goto_a

    :cond_10
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    :goto_a
    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-nez v1, :cond_18

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->hasSecondaryRenderers:Z

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isPrewarmingDisabledUntilNextTransition:Z

    if-nez v1, :cond_18

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->areRenderersPrewarming()Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_d

    :cond_11
    iget-object v1, v9, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_18

    iget-object v2, v9, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v1, v2, :cond_18

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_18

    iget-boolean v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v2, :cond_12

    goto/16 :goto_d

    :cond_12
    iput-object v1, v9, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    iget-object v1, v9, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    iget-object v1, v9, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_13

    goto :goto_d

    :cond_13
    iget-object v11, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move v2, v6

    :goto_b
    array-length v3, v10

    if-ge v2, v3, :cond_17

    invoke-virtual {v11, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_16

    aget-object v3, v10, v2

    iget-object v4, v3, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/Renderer;

    if-eqz v4, :cond_16

    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result v3

    if-nez v3, :cond_16

    aget-object v3, v10, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result v4

    xor-int/2addr v4, v7

    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object v4, v3, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/Renderer;

    invoke-static {v4}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x3

    goto :goto_c

    :cond_14
    iget-object v4, v3, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/Renderer;

    if-eqz v4, :cond_15

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v4

    if-eqz v4, :cond_15

    move v4, v8

    goto :goto_c

    :cond_15
    const/4 v4, 0x2

    :goto_c
    iput v4, v3, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderer(Landroidx/media3/exoplayer/MediaPeriodHolder;IZJ)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->areRenderersPrewarming()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    invoke-interface {v2}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->prewarmingMediaPeriodDiscontinuity:J

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v9, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    :cond_18
    :goto_d
    iget-boolean v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->hasSecondaryRenderers:Z

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    iget-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v12, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_19

    :goto_e
    goto/16 :goto_16

    :cond_19
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v2, :cond_1a

    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v2, :cond_1b

    :cond_1a
    move-wide/from16 v26, v14

    const/4 v14, 0x3

    goto/16 :goto_1a

    :cond_1b
    iget-boolean v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v2, :cond_1c

    goto :goto_e

    :cond_1c
    move v2, v6

    :goto_f
    array-length v3, v10

    if-ge v2, v3, :cond_1d

    aget-object v3, v10, v2

    iget-object v4, v3, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v3, v1, v4}, Landroidx/media3/exoplayer/RendererHolder;->hasFinishedReadingFromPeriodInternal(Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, v3, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v3, v1, v4}, Landroidx/media3/exoplayer/RendererHolder;->hasFinishedReadingFromPeriodInternal(Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/Renderer;)Z

    move-result v3

    if-eqz v3, :cond_2b

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->areRenderersPrewarming()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v12, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v3, v12, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v2, v3, :cond_1e

    goto :goto_e

    :cond_1e
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-boolean v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v3, :cond_1f

    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v18

    cmp-long v2, v3, v18

    if-gez v2, :cond_1f

    goto :goto_e

    :cond_1f
    iget-object v11, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v12, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v3, v12, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v2, v3, :cond_20

    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v2, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v2, v12, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :cond_20
    iget-object v2, v12, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v2, v12, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v12}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    iget-object v2, v12, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object/from16 v18, v2

    move-object v2, v5

    move/from16 v19, v6

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move/from16 v20, v7

    const/4 v7, 0x0

    move-object/from16 v21, v3

    move-object v3, v4

    move-object v13, v4

    move-object v4, v1

    move-object v1, v13

    move-object/from16 v13, v18

    move/from16 v18, v9

    move-object v9, v13

    move-object/from16 v13, v21

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    iget-boolean v1, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_2c

    if-eqz v18, :cond_21

    iget-wide v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->prewarmingMediaPeriodDiscontinuity:J

    cmp-long v1, v1, v14

    if-nez v1, :cond_22

    :cond_21
    iget-object v1, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v1

    cmp-long v1, v1, v14

    if-eqz v1, :cond_2c

    :cond_22
    iput-wide v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->prewarmingMediaPeriodDiscontinuity:J

    if-eqz v18, :cond_23

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isPrewarmingDisabledUntilNextTransition:Z

    if-nez v1, :cond_23

    const/4 v6, 0x1

    goto :goto_10

    :cond_23
    const/4 v6, 0x0

    :goto_10
    if-eqz v6, :cond_26

    const/4 v1, 0x0

    :goto_11
    array-length v2, v10

    if-ge v1, v2, :cond_26

    invoke-virtual {v13, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    iget-object v3, v13, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    if-nez v2, :cond_24

    goto :goto_12

    :cond_24
    aget-object v2, v3, v1

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    aget-object v2, v10, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result v2

    if-nez v2, :cond_25

    const/4 v6, 0x0

    goto :goto_13

    :cond_25
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_26
    :goto_13
    if-nez v6, :cond_2c

    invoke-virtual {v9}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v1

    array-length v3, v10

    const/4 v6, 0x0

    :goto_14
    if-ge v6, v3, :cond_2a

    aget-object v4, v10, v6

    iget-object v5, v4, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/Renderer;

    iget-object v7, v4, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v7, Landroidx/media3/exoplayer/Renderer;

    invoke-static {v7}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v11

    if-eqz v11, :cond_27

    iget v11, v4, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    if-eq v11, v8, :cond_27

    const/4 v13, 0x2

    if-eq v11, v13, :cond_27

    invoke-static {v7, v1, v2}, Landroidx/media3/exoplayer/RendererHolder;->setCurrentStreamFinalInternal(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_27
    if-eqz v5, :cond_29

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v7

    if-eqz v7, :cond_28

    const/4 v7, 0x1

    goto :goto_15

    :cond_28
    const/4 v7, 0x0

    :goto_15
    if-eqz v7, :cond_29

    iget v4, v4, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v11, 0x3

    if-eq v4, v11, :cond_29

    invoke-static {v5, v1, v2}, Landroidx/media3/exoplayer/RendererHolder;->setCurrentStreamFinalInternal(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_2a
    invoke-virtual {v9}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {v12, v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    :cond_2b
    :goto_16
    move-wide/from16 v26, v14

    const/4 v14, 0x3

    goto/16 :goto_1f

    :cond_2c
    move-object v1, v11

    array-length v2, v10

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v2, :cond_2b

    aget-object v3, v10, v6

    invoke-virtual {v9}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v4

    iget-object v7, v3, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v7, Landroidx/media3/exoplayer/Renderer;

    iget v12, v3, Landroidx/media3/exoplayer/RendererHolder;->index:I

    invoke-virtual {v1, v12}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v17

    invoke-virtual {v13, v12}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v18

    iget-object v8, v3, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/exoplayer/Renderer;

    if-eqz v8, :cond_2d

    iget v11, v3, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    move-wide/from16 v26, v14

    const/4 v14, 0x3

    if-eq v11, v14, :cond_2e

    if-nez v11, :cond_2f

    invoke-static {v7}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v11

    if-eqz v11, :cond_2f

    goto :goto_18

    :cond_2d
    move-wide/from16 v26, v14

    const/4 v14, 0x3

    :cond_2e
    :goto_18
    move-object v8, v7

    :cond_2f
    if-eqz v17, :cond_32

    invoke-interface {v8}, Landroidx/media3/exoplayer/Renderer;->isCurrentStreamFinal()Z

    move-result v11

    if-nez v11, :cond_32

    invoke-interface {v7}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v7

    const/4 v11, -0x2

    if-ne v7, v11, :cond_30

    const/4 v7, 0x1

    goto :goto_19

    :cond_30
    const/4 v7, 0x0

    :goto_19
    iget-object v11, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v11, v11, v12

    iget-object v15, v13, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v12, v15, v12

    if-eqz v18, :cond_31

    invoke-static {v12, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_31

    if-nez v7, :cond_31

    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_31
    invoke-static {v8, v4, v5}, Landroidx/media3/exoplayer/RendererHolder;->setCurrentStreamFinalInternal(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_32
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v14, v26

    const/4 v8, 0x4

    goto :goto_17

    :goto_1a
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-nez v2, :cond_33

    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v2, :cond_38

    :cond_33
    array-length v2, v10

    const/4 v6, 0x0

    :goto_1b
    if-ge v6, v2, :cond_38

    aget-object v3, v10, v6

    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v4

    if-eqz v4, :cond_34

    const/4 v4, 0x1

    goto :goto_1c

    :cond_34
    const/4 v4, 0x0

    :goto_1c
    if-nez v4, :cond_35

    goto :goto_1e

    :cond_35
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    cmp-long v7, v4, v26

    if-eqz v7, :cond_36

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v7, v4, v7

    if-eqz v7, :cond_36

    iget-wide v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    add-long/2addr v4, v7

    goto :goto_1d

    :cond_36
    move-wide/from16 v4, v26

    :goto_1d
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Landroidx/media3/exoplayer/RendererHolder;->setCurrentStreamFinalInternal(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_37
    :goto_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_38
    :goto_1f
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_42

    iget-object v2, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v2, v1, :cond_42

    iget-boolean v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    if-eqz v2, :cond_39

    goto/16 :goto_25

    :cond_39
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    iget-object v8, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    const/4 v2, 0x0

    const/4 v9, 0x1

    :goto_20
    array-length v3, v7

    if-ge v2, v3, :cond_3e

    aget-object v3, v7, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v3

    aget-object v4, v7, v2

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    iget-object v10, v4, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v10, Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v4, v10, v1, v8, v5}, Landroidx/media3/exoplayer/RendererHolder;->replaceStreamsOrDisableRendererForTransitionInternal(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultMediaClock;)I

    move-result v10

    iget-object v11, v4, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v11, Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v4, v11, v1, v8, v5}, Landroidx/media3/exoplayer/RendererHolder;->replaceStreamsOrDisableRendererForTransitionInternal(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultMediaClock;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v10, v5, :cond_3a

    move v10, v4

    :cond_3a
    and-int/lit8 v4, v10, 0x2

    if-eqz v4, :cond_3c

    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-eqz v4, :cond_3c

    if-nez v4, :cond_3b

    goto :goto_21

    :cond_3b
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v4, :cond_3c

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 v13, 0x2

    invoke-virtual {v4, v13}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    :cond_3c
    :goto_21
    iget v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    aget-object v5, v7, v2

    invoke-virtual {v5}, Landroidx/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int/2addr v4, v3

    iput v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    and-int/lit8 v3, v10, 0x1

    if-eqz v3, :cond_3d

    const/4 v3, 0x1

    goto :goto_22

    :cond_3d
    const/4 v3, 0x0

    :goto_22
    and-int/2addr v9, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_3e
    if-eqz v9, :cond_41

    const/4 v2, 0x0

    :goto_23
    array-length v3, v7

    if-ge v2, v3, :cond_41

    invoke-virtual {v8, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_40

    aget-object v3, v7, v2

    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v3

    if-eqz v3, :cond_3f

    const/4 v3, 0x1

    goto :goto_24

    :cond_3f
    const/4 v3, 0x0

    :goto_24
    if-nez v3, :cond_40

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderer(Landroidx/media3/exoplayer/MediaPeriodHolder;IZJ)V

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_41
    if-eqz v9, :cond_42

    iget-object v1, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v5, 0x1

    iput-boolean v5, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    :cond_42
    :goto_25
    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    const/4 v6, 0x0

    :goto_26
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v1

    if-nez v1, :cond_44

    :cond_43
    :goto_27
    move v15, v14

    const/4 v13, 0x1

    const/4 v14, 0x4

    goto/16 :goto_32

    :cond_44
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v1, :cond_45

    goto :goto_27

    :cond_45
    iget-object v1, v11, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_46

    goto :goto_27

    :cond_46
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_43

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_43

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    if-eqz v1, :cond_43

    if-eqz v6, :cond_47

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    :cond_47
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isPrewarmingDisabledUntilNextTransition:Z

    invoke-virtual {v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v2, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_48

    iget-object v2, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v4, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v4, v3, :cond_48

    iget v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v1, v2, :cond_48

    const/4 v6, 0x1

    goto :goto_28

    :cond_48
    const/4 v6, 0x0

    :goto_28
    iget-object v1, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v4, v2

    iget-wide v2, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v7, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    const/16 v20, 0x1

    xor-int/lit8 v1, v6, 0x1

    const/4 v9, 0x0

    move-wide/from16 v47, v7

    move v8, v1

    move-object v1, v4

    move-wide/from16 v4, v47

    move-wide v6, v2

    move v15, v14

    move/from16 v13, v20

    const/4 v14, 0x4

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->areRenderersPrewarming()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, v11, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v12, v1, :cond_4f

    array-length v1, v10

    const/4 v6, 0x0

    :goto_29
    if-ge v6, v1, :cond_4f

    aget-object v2, v10, v6

    iget v3, v2, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    if-eq v3, v15, :cond_4a

    if-ne v3, v14, :cond_49

    goto :goto_2a

    :cond_49
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4e

    const/4 v4, 0x0

    iput v4, v2, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    goto :goto_2e

    :cond_4a
    :goto_2a
    if-ne v3, v14, :cond_4b

    move v3, v13

    goto :goto_2b

    :cond_4b
    const/4 v3, 0x0

    :goto_2b
    iget-object v4, v2, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/Renderer;

    iget-object v5, v2, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/Renderer;

    const/16 v7, 0x11

    if-eqz v3, :cond_4c

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5, v7, v4}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    goto :goto_2c

    :cond_4c
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4, v7, v5}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    :goto_2c
    iget v3, v2, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    if-ne v3, v14, :cond_4d

    const/4 v3, 0x0

    goto :goto_2d

    :cond_4d
    move v3, v13

    :goto_2d
    iput v3, v2, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    :cond_4e
    :goto_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_4f
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v1, v15, :cond_50

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    :cond_50
    iget-object v1, v11, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    const/4 v6, 0x0

    :goto_2f
    array-length v2, v10

    if-ge v6, v2, :cond_55

    invoke-virtual {v1, v6}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_31

    :cond_51
    aget-object v2, v10, v6

    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/Renderer;

    iget-object v2, v2, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/Renderer;

    invoke-static {v2}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->enableMayRenderStartOfStream()V

    goto :goto_31

    :cond_52
    if-eqz v3, :cond_54

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v2

    if-eqz v2, :cond_53

    move v2, v13

    goto :goto_30

    :cond_53
    const/4 v2, 0x0

    :goto_30
    if-eqz v2, :cond_54

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->enableMayRenderStartOfStream()V

    :cond_54
    :goto_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_55
    move v6, v13

    move v14, v15

    goto/16 :goto_26

    :goto_32
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_33
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v1, v13, :cond_8e

    if-ne v1, v14, :cond_56

    goto/16 :goto_52

    :cond_56
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_57

    move-wide/from16 v2, v23

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->scheduleNextWork(J)V

    return-void

    :cond_57
    move-wide/from16 v2, v23

    const-string v4, "doSomeWork"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    iget-boolean v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v4, :cond_64

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionElapsedRealtimeUs:J

    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-wide v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long/2addr v5, v7

    invoke-interface {v4, v5, v6}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(J)V

    move v4, v13

    move v7, v4

    const/4 v6, 0x0

    :goto_34
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v8, v5

    if-ge v6, v8, :cond_65

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v8

    if-nez v8, :cond_58

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeTriggerOnRendererReadyChanged(IZ)V

    goto/16 :goto_3c

    :cond_58
    iget-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionElapsedRealtimeUs:J

    iget-object v12, v5, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v12, Landroidx/media3/exoplayer/Renderer;

    iget-object v13, v5, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v13, Landroidx/media3/exoplayer/Renderer;

    invoke-static {v13}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v17

    if-eqz v17, :cond_59

    invoke-interface {v13, v8, v9, v10, v11}, Landroidx/media3/exoplayer/Renderer;->render(JJ)V

    :cond_59
    if-eqz v12, :cond_5b

    invoke-interface {v12}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v13

    if-eqz v13, :cond_5a

    const/4 v13, 0x1

    goto :goto_35

    :cond_5a
    const/4 v13, 0x0

    :goto_35
    if-eqz v13, :cond_5b

    invoke-interface {v12, v8, v9, v10, v11}, Landroidx/media3/exoplayer/Renderer;->render(JJ)V

    :cond_5b
    if-eqz v7, :cond_5f

    iget-object v7, v5, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v7, Landroidx/media3/exoplayer/Renderer;

    iget-object v8, v5, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/exoplayer/Renderer;

    invoke-static {v8}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v9

    if-eqz v9, :cond_5c

    invoke-interface {v8}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v8

    goto :goto_36

    :cond_5c
    const/4 v8, 0x1

    :goto_36
    if-eqz v7, :cond_5e

    invoke-interface {v7}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v9

    if-eqz v9, :cond_5d

    const/4 v9, 0x1

    goto :goto_37

    :cond_5d
    const/4 v9, 0x0

    :goto_37
    if-eqz v9, :cond_5e

    invoke-interface {v7}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v7

    and-int/2addr v8, v7

    :cond_5e
    if-eqz v8, :cond_5f

    const/4 v7, 0x1

    goto :goto_38

    :cond_5f
    const/4 v7, 0x0

    :goto_38
    invoke-virtual {v5, v1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v5

    if-eqz v5, :cond_61

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v8

    if-nez v8, :cond_61

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->isReady()Z

    move-result v8

    if-nez v8, :cond_61

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v5

    if-eqz v5, :cond_60

    goto :goto_39

    :cond_60
    const/4 v5, 0x0

    goto :goto_3a

    :cond_61
    :goto_39
    const/4 v5, 0x1

    :goto_3a
    invoke-virtual {v0, v6, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeTriggerOnRendererReadyChanged(IZ)V

    if-eqz v4, :cond_62

    if-eqz v5, :cond_62

    const/4 v4, 0x1

    goto :goto_3b

    :cond_62
    const/4 v4, 0x0

    :goto_3b
    if-nez v5, :cond_63

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeThrowRendererStreamError(I)V

    :cond_63
    :goto_3c
    add-int/lit8 v6, v6, 0x1

    const/4 v13, 0x1

    goto/16 :goto_34

    :cond_64
    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    invoke-interface {v4}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    const/4 v4, 0x1

    const/4 v7, 0x1

    :cond_65
    iget-object v5, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v5, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    if-eqz v7, :cond_67

    iget-boolean v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v7, :cond_67

    cmp-long v7, v5, v26

    if-eqz v7, :cond_66

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_67

    :cond_66
    const/4 v6, 0x1

    goto :goto_3d

    :cond_67
    const/4 v6, 0x0

    :goto_3d
    if-eqz v6, :cond_68

    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v5, :cond_68

    const/4 v8, 0x0

    iput-boolean v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v7, v8}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->incrementPendingOperationAcks(I)V

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v9, v9, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    invoke-virtual {v7, v9, v8}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(IZ)I

    move-result v7

    const/4 v9, 0x5

    invoke-virtual {v0, v7, v5, v9, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlayWhenReadyWithAudioFocus(IIIZ)V

    :cond_68
    if-eqz v6, :cond_6a

    iget-object v5, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v5, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-eqz v5, :cond_6a

    invoke-virtual {v0, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    :cond_69
    const/4 v5, 0x1

    goto/16 :goto_48

    :cond_6a
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v6, v5, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v13, 0x2

    if-ne v6, v13, :cond_77

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v7, :cond_6b

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v6

    goto/16 :goto_44

    :cond_6b
    if-nez v4, :cond_6d

    :cond_6c
    const/4 v6, 0x0

    goto/16 :goto_44

    :cond_6d
    iget-boolean v7, v5, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-nez v7, :cond_6f

    :cond_6e
    :goto_3e
    const/4 v6, 0x1

    goto/16 :goto_44

    :cond_6f
    iget-object v7, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v7, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v7, v7, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v5, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v5

    if-eqz v5, :cond_70

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    iget-wide v7, v5, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    goto :goto_3f

    :cond_70
    move-wide/from16 v7, v26

    :goto_3f
    iget-object v5, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v6

    if-eqz v6, :cond_71

    iget-object v6, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v6, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-eqz v6, :cond_71

    const/4 v6, 0x1

    goto :goto_40

    :cond_71
    const/4 v6, 0x0

    :goto_40
    iget-object v9, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v9, v9, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v9}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v9

    if-eqz v9, :cond_72

    iget-boolean v9, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v9, :cond_72

    const/4 v9, 0x1

    goto :goto_41

    :cond_72
    const/4 v9, 0x0

    :goto_41
    if-nez v6, :cond_6e

    if-eqz v9, :cond_73

    goto :goto_3e

    :cond_73
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v5

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v10, v10, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v10}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v10

    iget v10, v10, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v11, v11, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-boolean v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v10, v12

    if-nez v12, :cond_74

    goto :goto_42

    :cond_74
    long-to-double v5, v5

    float-to-double v12, v10

    div-double/2addr v5, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    :goto_42
    if-eqz v11, :cond_75

    iget-wide v10, v9, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_43

    :cond_75
    iget-wide v10, v9, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackUs:J

    :goto_43
    cmp-long v12, v7, v26

    if-eqz v12, :cond_76

    const-wide/16 v12, 0x2

    div-long/2addr v7, v12

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    :cond_76
    const-wide/16 v7, 0x0

    cmp-long v7, v10, v7

    if-lez v7, :cond_6e

    cmp-long v5, v5, v10

    if-gez v5, :cond_6e

    iget-object v5, v9, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    monitor-enter v5

    :try_start_0
    iget v6, v5, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget v7, v5, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v6, v7

    monitor-exit v5

    invoke-virtual {v9}, Landroidx/media3/exoplayer/DefaultLoadControl;->calculateTotalTargetBufferBytes()I

    move-result v5

    if-lt v6, v5, :cond_6c

    goto/16 :goto_3e

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :goto_44
    if-eqz v6, :cond_77

    invoke-virtual {v0, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    const/4 v4, 0x0

    iput-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_69

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    iget-object v4, v4, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->start()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_48

    :cond_77
    const/4 v5, 0x1

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v6, v15, :cond_80

    iget v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v6, :cond_78

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v4

    if-eqz v4, :cond_79

    goto :goto_48

    :cond_78
    if-nez v4, :cond_80

    :cond_79
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v4

    const/4 v8, 0x0

    invoke-virtual {v0, v4, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    if-eqz v4, :cond_7f

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_45
    if-eqz v4, :cond_7c

    iget-object v6, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v6, v6, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_46
    if-ge v8, v7, :cond_7b

    aget-object v9, v6, v8

    if-eqz v9, :cond_7a

    invoke-interface {v9}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onRebuffer()V

    :cond_7a
    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    :cond_7b
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_45

    :cond_7c
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    iget-wide v6, v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    cmp-long v8, v6, v26

    if-nez v8, :cond_7d

    goto :goto_47

    :cond_7d
    iget-wide v8, v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    add-long/2addr v6, v8

    iput-wide v6, v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    iget-wide v8, v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v10, v8, v26

    if-eqz v10, :cond_7e

    cmp-long v6, v6, v8

    if-lez v6, :cond_7e

    iput-wide v8, v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    :cond_7e
    move-wide/from16 v6, v26

    iput-wide v6, v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    :cond_7f
    :goto_47
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    :cond_80
    :goto_48
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v13, 0x2

    if-ne v4, v13, :cond_84

    const/4 v6, 0x0

    :goto_49
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v7, v4

    if-ge v6, v7, :cond_83

    aget-object v4, v4, v6

    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v4

    if-eqz v4, :cond_81

    move v4, v5

    goto :goto_4a

    :cond_81
    const/4 v4, 0x0

    :goto_4a
    if-eqz v4, :cond_82

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeThrowRendererStreamError(I)V

    :cond_82
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    :cond_83
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-nez v4, :cond_84

    iget-wide v6, v1, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    const-wide/32 v8, 0x7a120

    cmp-long v1, v6, v8

    if-gez v1, :cond_84

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isLoadingPossible(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_84

    move v6, v5

    goto :goto_4b

    :cond_84
    const/4 v6, 0x0

    :goto_4b
    if-nez v6, :cond_85

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    goto :goto_4c

    :cond_85
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    cmp-long v1, v8, v6

    if-nez v1, :cond_86

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    goto :goto_4c

    :cond_86
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xfa0

    cmp-long v1, v6, v8

    if-gez v1, :cond_8d

    :goto_4c
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v1, v15, :cond_87

    move v6, v5

    goto :goto_4d

    :cond_87
    const/4 v6, 0x0

    :goto_4d
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-eqz v1, :cond_88

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->requestForRendererSleep:Z

    if-eqz v1, :cond_88

    if-eqz v6, :cond_88

    goto :goto_4e

    :cond_88
    const/4 v5, 0x0

    :goto_4e
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eq v4, v5, :cond_89

    new-instance v20, Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v12, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    iget-object v13, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-boolean v15, v1, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    iget-object v14, v1, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-object/from16 v21, v4

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-object/from16 v31, v4

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object/from16 v32, v4

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object/from16 v33, v4

    iget-boolean v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    move/from16 v34, v4

    iget v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    move/from16 v35, v4

    iget v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v36, v4

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    move-object/from16 v37, v4

    move/from16 v46, v5

    iget-wide v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v38, v4

    iget-wide v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v40, v4

    iget-wide v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    move-wide/from16 v42, v4

    iget-wide v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUpdateTimeMs:J

    move-wide/from16 v44, v4

    move-object/from16 v22, v7

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    move/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v30, v14

    move/from16 v29, v15

    invoke-direct/range {v20 .. v46}, Landroidx/media3/exoplayer/PlaybackInfo;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJILandroidx/media3/exoplayer/ExoPlaybackException;ZLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;ZIILandroidx/media3/common/PlaybackParameters;JJJJZ)V

    move-object/from16 v1, v20

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :goto_4f
    const/4 v4, 0x0

    goto :goto_50

    :cond_89
    move/from16 v46, v5

    goto :goto_4f

    :goto_50
    iput-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->requestForRendererSleep:Z

    if-nez v46, :cond_8c

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v14, 0x4

    if-ne v1, v14, :cond_8a

    goto :goto_51

    :cond_8a
    if-nez v6, :cond_8b

    const/4 v13, 0x2

    if-eq v1, v13, :cond_8b

    const/4 v11, 0x3

    if-ne v1, v11, :cond_8c

    iget v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    if-eqz v1, :cond_8c

    :cond_8b
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->scheduleNextWork(J)V

    :cond_8c
    :goto_51
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_8d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Playback stuck buffering and not loading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8e
    :goto_52
    return-void
.end method

.method public final enableRenderer(Landroidx/media3/exoplayer/MediaPeriodHolder;IZJ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_1

    move v11, v5

    goto :goto_0

    :cond_1
    move v11, v4

    :goto_0
    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v6, v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v7, v6, p2

    iget-object v3, v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v3, v3, p2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    move/from16 v17, v5

    goto :goto_1

    :cond_2
    move/from16 v17, v4

    :goto_1
    if-nez p3, :cond_3

    if-eqz v17, :cond_3

    move v10, v5

    goto :goto_2

    :cond_3
    move v10, v4

    :goto_2
    iget v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/2addr v6, v5

    iput v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    iget-object v6, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v9, v6, p2

    iget-wide v14, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object v6, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v8, v2, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/exoplayer/Renderer;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v12

    :goto_3
    move-object/from16 v16, v6

    move-object v6, v8

    goto :goto_4

    :cond_4
    move v12, v4

    goto :goto_3

    :goto_4
    new-array v8, v12, [Landroidx/media3/common/Format;

    :goto_5
    if-ge v4, v12, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v13

    aput-object v13, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    iget v3, v2, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    if-eqz v3, :cond_7

    const/4 v12, 0x2

    if-eq v3, v12, :cond_7

    const/4 v12, 0x4

    if-ne v3, v12, :cond_6

    goto :goto_6

    :cond_6
    iput-boolean v5, v2, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v12, p4

    invoke-interface/range {v6 .. v16}, Landroidx/media3/exoplayer/Renderer;->enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;ZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    invoke-virtual {v4, v6}, Landroidx/media3/exoplayer/DefaultMediaClock;->onRendererEnabled(Landroidx/media3/exoplayer/Renderer;)V

    goto :goto_7

    :cond_7
    :goto_6
    iput-boolean v5, v2, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Landroidx/media3/exoplayer/Renderer;

    move-wide/from16 v12, p4

    invoke-interface/range {v6 .. v16}, Landroidx/media3/exoplayer/Renderer;->enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;ZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/DefaultMediaClock;->onRendererEnabled(Landroidx/media3/exoplayer/Renderer;)V

    :goto_7
    new-instance v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;

    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xb

    invoke-interface {v0, v1, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    if-eqz v17, :cond_8

    if-eqz v11, :cond_8

    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->start()V

    :cond_8
    :goto_8
    return-void
.end method

.method public final enableRenderers([ZJ)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v4, v7

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v7, v3

    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->reset()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    array-length v1, v7

    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, v7, v3

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_2
    move-object v1, p0

    move-wide v5, p2

    goto :goto_2

    :cond_3
    aget-boolean v4, p1, v3

    move-object v1, p0

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderer(Landroidx/media3/exoplayer/MediaPeriodHolder;IZJ)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object p0, v1

    move-wide p2, v5

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final getLiveOffsetUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, p0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)V

    iget-wide p1, p0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide p1, p0, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr p1, v1

    :goto_0
    iget-wide v1, p0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr p1, v1

    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p0

    iget-wide v0, v0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr p3, v0

    sub-long/2addr p0, p3

    return-wide p0

    :cond_2
    :goto_1
    return-wide v1
.end method

.method public final getMaxRendererReadPositionUs(Landroidx/media3/exoplayer/MediaPeriodHolder;)J
    .locals 8

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-boolean v2, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    aget-object v4, v3, v2

    invoke-virtual {v4, p1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v4

    if-eqz v4, :cond_3

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getReadingPositionUs()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    return-wide v5

    :cond_2
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-wide v0
.end method

.method public final getPlaceholderFirstMediaPeriodPositionUs(Landroidx/media3/common/Timeline;)Landroid/util/Pair;
    .locals 9

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/media3/exoplayer/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v6

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v3, p1, p0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget p1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget v3, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p0, v3}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v3

    if-ne p1, v3, :cond_2

    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    move-wide v1, v4

    :cond_2
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getTotalBufferedDurationUs(J)J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v5, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final handleAudioFocusPlayerCommandInternal(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    invoke-virtual {p0, p1, v2, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlayWhenReadyWithAudioFocus(IIIZ)V

    return-void
.end method

.method public final handleContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    if-ne v1, p1, :cond_0

    iget-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->reevaluateBuffer(J)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void

    :cond_0
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinuePreloading()V

    :cond_1
    return-void
.end method

.method public final handleIoException(ILjava/io/IOException;)V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p1}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlaybackException;->copyWithMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    :cond_0
    const-string p1, "ExoPlayerImplInternal"

    const-string p2, "Playback error"

    invoke-static {p1, p2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    return-void
.end method

.method public final handleLoadingMediaPeriodChanged(Z)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    if-nez v0, :cond_2

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    invoke-virtual {p0, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v3

    iput-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    if-eqz v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz p1, :cond_4

    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    :cond_4
    return-void
.end method

.method public final handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V
    .locals 38

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v6

    const/4 v12, 0x4

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v6, :cond_0

    new-instance v18, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    sget-object v19, Landroidx/media3/exoplayer/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const/16 v25, 0x1

    const/16 v26, 0x0

    const-wide/16 v20, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    invoke-direct/range {v18 .. v26}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZ)V

    move-object/from16 v2, p1

    move-object/from16 v10, v18

    goto/16 :goto_14

    :cond_0
    iget-object v14, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    iget-object v13, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v7, v13, v8}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v7

    iget-boolean v7, v7, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v13, 0x1

    :goto_1
    iget-object v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    iget-wide v10, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    goto :goto_3

    :cond_4
    :goto_2
    iget-wide v10, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    :goto_3
    if-eqz v3, :cond_8

    move-object v7, v6

    move v6, v5

    move v5, v4

    const/4 v4, 0x1

    move-object v15, v7

    move-object v7, v2

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSeekPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {v2, v6}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v3

    move/from16 v23, v3

    move-wide v3, v10

    move-object v6, v15

    const/4 v5, 0x0

    const/4 v15, 0x1

    const/16 v18, 0x0

    goto :goto_6

    :cond_5
    iget-wide v5, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v3, v5, v16

    if-nez v3, :cond_6

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3, v8}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    move-wide/from16 v23, v10

    move-object v6, v15

    const/4 v5, 0x0

    move v15, v3

    goto :goto_4

    :cond_6
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide/from16 v23, v3

    const/4 v5, 0x1

    const/4 v15, -0x1

    :goto_4
    iget v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v3, v12, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    move/from16 v18, v5

    move v5, v3

    move-wide/from16 v3, v23

    move/from16 v23, v15

    const/4 v15, 0x0

    :goto_6
    move/from16 v33, v5

    move/from16 v34, v15

    move/from16 v35, v18

    move/from16 v2, v23

    move-wide v4, v3

    move-object v3, v7

    move/from16 v18, v13

    const/4 v7, -0x1

    const-wide/16 v12, 0x0

    goto/16 :goto_c

    :cond_8
    move-object v7, v2

    move-object v15, v6

    move-object/from16 v2, p1

    move v6, v5

    move v5, v4

    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v6}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v3

    move v2, v3

    move-object v3, v7

    move-wide v4, v10

    move/from16 v18, v13

    move-object v6, v15

    :goto_7
    const/4 v7, -0x1

    const-wide/16 v12, 0x0

    :goto_8
    const/16 v33, 0x0

    const/16 v34, 0x0

    :goto_9
    const/16 v35, 0x0

    goto/16 :goto_c

    :cond_9
    invoke-virtual {v2, v15}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    move-object v3, v7

    iget-object v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    move-object/from16 v36, v8

    move-object v8, v2

    move-object v2, v3

    move-object/from16 v3, v36

    move-object/from16 v36, v15

    move v15, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v36

    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSubsequentPeriod(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I

    move-result v4

    move-object/from16 v36, v3

    move-object v3, v2

    move-object v2, v8

    move-object/from16 v8, v36

    if-ne v4, v15, :cond_a

    invoke-virtual {v2, v5}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v4

    const/4 v7, 0x1

    goto :goto_a

    :cond_a
    const/4 v7, 0x0

    :goto_a
    move v2, v4

    move/from16 v34, v7

    move-wide v4, v10

    move/from16 v18, v13

    const/4 v7, -0x1

    const-wide/16 v12, 0x0

    const/16 v33, 0x0

    goto :goto_9

    :cond_b
    move-object v3, v7

    move-object v6, v15

    cmp-long v4, v10, v16

    if-nez v4, :cond_c

    invoke-virtual {v2, v6, v8}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    move v2, v4

    move-wide v4, v10

    move/from16 v18, v13

    goto :goto_7

    :cond_c
    if-eqz v13, :cond_e

    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v4, v5, v8}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget v5, v8, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    move/from16 v18, v13

    const-wide/16 v12, 0x0

    invoke-virtual {v4, v5, v3, v12, v13}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v7, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v5, v7}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_d

    iget-wide v4, v8, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v4, v10

    invoke-virtual {v2, v6, v8}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    move-wide/from16 v36, v4

    move v5, v6

    move-wide/from16 v6, v36

    move-object v4, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_b

    :cond_d
    move-wide v4, v10

    :goto_b
    const/4 v2, -0x1

    const/4 v7, -0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    goto :goto_c

    :cond_e
    move/from16 v18, v13

    const-wide/16 v12, 0x0

    move-wide v4, v10

    const/4 v2, -0x1

    const/4 v7, -0x1

    goto/16 :goto_8

    :goto_c
    if-eq v2, v7, :cond_f

    move/from16 v22, v7

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move v5, v2

    move-object v4, v8

    move/from16 v8, v22

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v3

    move-object v7, v4

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide/from16 v31, v16

    goto :goto_d

    :cond_f
    move-object v2, v8

    move v8, v7

    move-object v7, v2

    move-object/from16 v2, p1

    move-wide/from16 v31, v4

    :goto_d
    invoke-virtual {v9, v2, v6, v4, v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v3

    iget v9, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v9, v8, :cond_11

    iget v12, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v12, v8, :cond_10

    if-lt v9, v12, :cond_10

    goto :goto_e

    :cond_10
    const/4 v8, 0x0

    goto :goto_f

    :cond_11
    :goto_e
    const/4 v8, 0x1

    :goto_f
    iget-object v9, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual {v14}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v9

    if-nez v9, :cond_12

    if-eqz v8, :cond_12

    const/4 v8, 0x1

    goto :goto_10

    :cond_12
    const/4 v8, 0x0

    :goto_10
    invoke-virtual {v2, v6, v7}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v6

    if-nez v18, :cond_15

    cmp-long v9, v10, v31

    if-nez v9, :cond_15

    iget-object v9, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v10, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v11, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    goto :goto_11

    :cond_13
    invoke-virtual {v14}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-virtual {v6, v10}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    :cond_14
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v9

    if-eqz v9, :cond_15

    iget v9, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v6, v9}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    :cond_15
    :goto_11
    if-nez v8, :cond_16

    goto :goto_12

    :cond_16
    move-object v3, v14

    :goto_12
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v3, v14}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-wide v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    :cond_17
    move-wide/from16 v29, v4

    goto :goto_13

    :cond_18
    iget-object v0, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v0, v7}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v0, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget v4, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v7, v4}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    if-ne v0, v4, :cond_19

    iget-object v0, v7, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_19
    const-wide/16 v29, 0x0

    :goto_13
    new-instance v27, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-object/from16 v28, v3

    invoke-direct/range {v27 .. v35}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZ)V

    move-object/from16 v10, v27

    :goto_14
    iget-object v11, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v12, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->requestedContentPositionUs:J

    iget-boolean v6, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->forceBufferingState:Z

    iget-wide v3, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodPositionUs:J

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v11}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_1a

    goto :goto_15

    :cond_1a
    const/4 v14, 0x0

    goto :goto_16

    :cond_1b
    :goto_15
    const/4 v14, 0x1

    :goto_16
    const/16 v18, 0x3

    :try_start_0
    iget-boolean v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->endPlayback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_1d

    :try_start_1
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v8, 0x1

    if-eq v0, v8, :cond_1c

    const/4 v15, 0x4

    :try_start_2
    invoke-virtual {v1, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_17
    const/4 v9, 0x0

    goto :goto_18

    :catchall_0
    move-exception v0

    move-object v15, v11

    move-object v11, v2

    move-object v2, v15

    move-wide/from16 v20, v3

    move/from16 v25, v8

    const/4 v15, 0x0

    goto/16 :goto_2d

    :cond_1c
    const/4 v15, 0x4

    goto :goto_17

    :goto_18
    :try_start_3
    invoke-virtual {v1, v9, v9, v9, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    goto :goto_1a

    :catchall_1
    move-exception v0

    :goto_19
    move-object v15, v11

    move-object v11, v2

    move-object v2, v15

    move-wide/from16 v20, v3

    move/from16 v25, v8

    move v15, v9

    goto/16 :goto_2d

    :catchall_2
    move-exception v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v15, 0x4

    goto :goto_19

    :cond_1d
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v15, 0x4

    :goto_1a
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v5, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v7, v9

    :goto_1b
    if-ge v7, v5, :cond_1f

    :try_start_4
    aget-object v8, v0, v7

    iget-object v9, v8, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v9, Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v9, v2}, Landroidx/media3/exoplayer/Renderer;->setTimeline(Landroidx/media3/common/Timeline;)V

    iget-object v8, v8, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/exoplayer/Renderer;

    if-eqz v8, :cond_1e

    invoke-interface {v8, v2}, Landroidx/media3/exoplayer/Renderer;->setTimeline(Landroidx/media3/common/Timeline;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_1e
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_1b

    :goto_1c
    move-object v15, v11

    move-object v11, v2

    move-object v2, v15

    move-wide/from16 v20, v3

    const/4 v15, 0x0

    const/16 v25, 0x1

    goto/16 :goto_2d

    :catchall_3
    move-exception v0

    goto :goto_1c

    :cond_1f
    if-nez v14, :cond_25

    :try_start_5
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_20

    const-wide/16 v6, 0x0

    goto :goto_1d

    :cond_20
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getMaxRendererReadPositionUs(Landroidx/media3/exoplayer/MediaPeriodHolder;)J

    move-result-wide v5

    move-wide v6, v5

    :goto_1d
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->areRenderersPrewarming()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v0, :cond_22

    :try_start_6
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_21

    goto :goto_1e

    :cond_21
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getMaxRendererReadPositionUs(Landroidx/media3/exoplayer/MediaPeriodHolder;)J

    move-result-wide v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1f

    :cond_22
    :goto_1e
    const-wide/16 v8, 0x0

    :goto_1f
    :try_start_7
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-wide/from16 v20, v3

    :try_start_8
    iget-wide v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object/from16 v3, p1

    const/4 v15, 0x0

    const/16 v24, 0x2

    const/16 v25, 0x1

    :try_start_9
    invoke-virtual/range {v2 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->updateQueuedPeriods(Landroidx/media3/common/Timeline;JJJ)I

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object v8, v3

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_23

    :try_start_a
    invoke-virtual {v1, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto :goto_22

    :catchall_4
    move-exception v0

    :goto_20
    move-object v2, v11

    :goto_21
    move-object v11, v8

    goto/16 :goto_2d

    :cond_23
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_24

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableAndResetPrewarmingRenderers()V

    :cond_24
    :goto_22
    move-object v2, v11

    goto/16 :goto_28

    :catchall_5
    move-exception v0

    move-object v8, v3

    goto :goto_20

    :catchall_6
    move-exception v0

    move-object/from16 v8, p1

    :goto_23
    const/4 v15, 0x0

    const/16 v24, 0x2

    const/16 v25, 0x1

    goto :goto_20

    :catchall_7
    move-exception v0

    move-object/from16 v8, p1

    :goto_24
    move-wide/from16 v20, v3

    goto :goto_23

    :catchall_8
    move-exception v0

    move-object v8, v2

    goto :goto_24

    :cond_25
    move-object v8, v2

    move-wide/from16 v20, v3

    const/4 v15, 0x0

    const/16 v24, 0x2

    const/16 v25, 0x1

    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_25
    if-eqz v0, :cond_27

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v11}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {v2, v8, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->updateClipping()V

    :cond_26
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_25

    :cond_27
    :try_start_b
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    if-eq v2, v0, :cond_28

    move/from16 v5, v25

    :goto_26
    move-object v2, v11

    move-wide/from16 v3, v20

    goto :goto_27

    :cond_28
    move v5, v15

    goto :goto_26

    :goto_27
    :try_start_c
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    move-wide/from16 v20, v3

    goto :goto_28

    :catchall_9
    move-exception v0

    move-wide/from16 v20, v3

    goto :goto_21

    :catchall_a
    move-exception v0

    goto :goto_20

    :goto_28
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-boolean v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v0, :cond_29

    move-wide/from16 v6, v20

    goto :goto_29

    :cond_29
    move-wide/from16 v6, v16

    :goto_29
    const/4 v8, 0x0

    move-object v3, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    move-object v11, v2

    move-object v2, v3

    if-nez v14, :cond_2a

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v0, v12, v3

    if-eqz v0, :cond_2d

    :cond_2a
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    if-eqz v14, :cond_2b

    if-eqz p2, :cond_2b

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-nez v0, :cond_2b

    move/from16 v9, v25

    goto :goto_2a

    :cond_2b
    move v9, v15

    :goto_2a
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    invoke-virtual {v11, v3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2c

    const/4 v10, 0x4

    :goto_2b
    move-wide v5, v12

    move-wide/from16 v3, v20

    goto :goto_2c

    :cond_2c
    move/from16 v10, v18

    goto :goto_2b

    :goto_2c
    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_2d
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, v11, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePositions(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, v11}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    :cond_2e
    invoke-virtual {v1, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    return-void

    :goto_2d
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-boolean v3, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v3, :cond_2f

    move-wide/from16 v6, v20

    goto :goto_2e

    :cond_2f
    move-wide/from16 v6, v16

    :goto_2e
    const/4 v8, 0x0

    move-object v3, v2

    move-object v2, v11

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    move-object v2, v3

    if-nez v14, :cond_30

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v3, v12, v3

    if-eqz v3, :cond_33

    :cond_30
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    if-eqz v14, :cond_31

    if-eqz p2, :cond_31

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_31

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget-boolean v3, v3, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-nez v3, :cond_31

    move/from16 v9, v25

    goto :goto_2f

    :cond_31
    move v9, v15

    :goto_2f
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v3, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    invoke-virtual {v11, v4}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_32

    const/4 v10, 0x4

    :goto_30
    move-wide v5, v12

    move-wide/from16 v3, v20

    goto :goto_31

    :cond_32
    move/from16 v10, v18

    goto :goto_30

    :goto_31
    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_33
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, v11, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePositions(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v2, v11}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    :cond_34
    invoke-virtual {v1, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v11, "Playback error"

    const-string v12, "ExoPlayerImplInternal"

    const/4 v2, 0x2

    const/16 v3, 0x3e8

    const/4 v4, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x1

    :try_start_0
    iget v5, v0, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    return v13

    :pswitch_1
    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->volume:F

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setVolumeInternal(F)V

    goto/16 :goto_10

    :pswitch_2
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleAudioFocusPlayerCommandInternal(I)V

    goto/16 :goto_10

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    goto/16 :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_b

    :catch_5
    move-exception v0

    goto/16 :goto_c

    :pswitch_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setVolumeInternal(F)V

    goto/16 :goto_10

    :pswitch_4
    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/common/AudioAttributes;

    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    move v0, v13

    :goto_0
    invoke-virtual {v1, v5, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setAudioAttributesInternal(Landroidx/media3/common/AudioAttributes;Z)V

    goto/16 :goto_10

    :pswitch_5
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setVideoOutputInternal(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_10

    :pswitch_6
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->prepareInternal()V

    goto/16 :goto_10

    :pswitch_7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPreloadConfigurationInternal(Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    goto/16 :goto_10

    :pswitch_8
    iget v5, v0, Landroid/os/Message;->arg1:I

    iget v6, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v5, v6, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateMediaSourcesWithMediaItemsInternal(IILjava/util/List;)V

    goto/16 :goto_10

    :pswitch_9
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->reselectTracksInternal()V

    invoke-virtual {v1, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto/16 :goto_10

    :pswitch_a
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->reselectTracksInternal()V

    invoke-virtual {v1, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto/16 :goto_10

    :pswitch_b
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v0, v14

    goto :goto_1

    :cond_1
    move v0, v13

    :goto_1
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPauseAtEndOfWindowInternal(Z)V

    goto/16 :goto_10

    :pswitch_c
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceListUpdateRequestedInternal()V

    goto/16 :goto_10

    :pswitch_d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setShuffleOrderInternal(Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V

    goto/16 :goto_10

    :pswitch_e
    iget v5, v0, Landroid/os/Message;->arg1:I

    iget v6, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-virtual {v1, v5, v6, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->removeMediaItemsInternal(IILandroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V

    goto/16 :goto_10

    :pswitch_f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->moveMediaItemsInternal()V

    const/4 v0, 0x0

    throw v0

    :pswitch_10
    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v5, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->addMediaItemsInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V

    goto/16 :goto_10

    :pswitch_11
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setMediaItemsInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V

    goto/16 :goto_10

    :pswitch_12
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/PlaybackParameters;

    iget v5, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v1, v0, v5, v14, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;FZZ)V

    goto/16 :goto_10

    :pswitch_13
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->sendMessageToTargetThread(Landroidx/media3/exoplayer/PlayerMessage;)V

    goto/16 :goto_10

    :pswitch_14
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->sendMessageInternal(Landroidx/media3/exoplayer/PlayerMessage;)V

    goto/16 :goto_10

    :pswitch_15
    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    move v5, v14

    goto :goto_2

    :cond_2
    move v5, v13

    :goto_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_10

    :pswitch_16
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v0, v14

    goto :goto_3

    :cond_3
    move v0, v13

    :goto_3
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setShuffleModeEnabledInternal(Z)V

    goto/16 :goto_10

    :pswitch_17
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setRepeatModeInternal(I)V

    goto/16 :goto_10

    :pswitch_18
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->reselectTracksInternal()V

    goto/16 :goto_10

    :pswitch_19
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    goto/16 :goto_10

    :pswitch_1a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePeriodPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    goto/16 :goto_10

    :pswitch_1b
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->releaseInternal()V

    return v14

    :pswitch_1c
    invoke-virtual {v1, v13, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    goto/16 :goto_10

    :pswitch_1d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/SeekParameters;

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    goto/16 :goto_10

    :pswitch_1e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPlaybackParametersInternal(Landroidx/media3/common/PlaybackParameters;)V

    goto/16 :goto_10

    :pswitch_1f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V

    goto/16 :goto_10

    :pswitch_20
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->doSomeWork()V

    goto/16 :goto_10

    :pswitch_21
    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    move v5, v14

    goto :goto_4

    :cond_4
    move v5, v13

    :goto_4
    iget v0, v0, Landroid/os/Message;->arg2:I

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v7, v14}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->incrementPendingOperationAcks(I)V

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v8, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    invoke-virtual {v7, v8, v5}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(IZ)I

    move-result v7

    invoke-virtual {v1, v7, v6, v0, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlayWhenReadyWithAudioFocus(IIIZ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroidx/media3/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_10

    :goto_5
    instance-of v4, v0, Ljava/lang/IllegalStateException;

    if-nez v4, :cond_5

    instance-of v4, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v4, :cond_6

    :cond_5
    const/16 v3, 0x3ec

    :cond_6
    new-instance v4, Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-direct {v4, v2, v0, v3}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    invoke-static {v12, v11, v4}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v14, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    goto/16 :goto_10

    :goto_6
    const/16 v2, 0x7d0

    invoke-virtual {v1, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(ILjava/io/IOException;)V

    goto/16 :goto_10

    :goto_7
    iget v2, v0, Landroidx/media3/datasource/DataSourceException;->reason:I

    invoke-virtual {v1, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(ILjava/io/IOException;)V

    goto/16 :goto_10

    :goto_8
    iget-boolean v2, v0, Landroidx/media3/common/ParserException;->contentIsMalformed:Z

    iget v5, v0, Landroidx/media3/common/ParserException;->dataType:I

    if-ne v5, v14, :cond_8

    if-eqz v2, :cond_7

    const/16 v2, 0xbb9

    :goto_9
    move v3, v2

    goto :goto_a

    :cond_7
    const/16 v2, 0xbbb

    goto :goto_9

    :cond_8
    if-ne v5, v4, :cond_a

    if-eqz v2, :cond_9

    const/16 v2, 0xbba

    goto :goto_9

    :cond_9
    const/16 v2, 0xbbc

    goto :goto_9

    :cond_a
    :goto_a
    invoke-virtual {v1, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(ILjava/io/IOException;)V

    goto/16 :goto_10

    :goto_b
    iget v2, v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-virtual {v1, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(ILjava/io/IOException;)V

    goto/16 :goto_10

    :goto_c
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    if-ne v3, v14, :cond_c

    iget-object v3, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v3, :cond_c

    array-length v7, v5

    iget v8, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    rem-int v7, v8, v7

    aget-object v7, v5, v7

    invoke-virtual {v7, v8}, Landroidx/media3/exoplayer/RendererHolder;->isRendererPrewarming(I)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v7, :cond_b

    iget-object v3, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    goto :goto_d

    :cond_b
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_d
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/ExoPlaybackException;->copyWithMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    :cond_c
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    iget-object v15, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    if-ne v3, v14, :cond_e

    iget v3, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    array-length v7, v5

    rem-int v7, v3, v7

    aget-object v5, v5, v7

    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/RendererHolder;->isRendererPrewarming(I)Z

    move-result v3

    if-eqz v3, :cond_e

    iput-boolean v14, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isPrewarmingDisabledUntilNextTransition:Z

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableAndResetPrewarmingRenderers()V

    iget-object v0, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v3, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v3, v0, :cond_d

    :goto_e
    if-eqz v3, :cond_d

    iget-object v5, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v5, v0, :cond_d

    move-object v3, v5

    goto :goto_e

    :cond_d
    invoke-virtual {v6, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v0, v4, :cond_15

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    invoke-virtual {v15, v2}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    goto/16 :goto_10

    :cond_e
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v2, :cond_f

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    :cond_f
    iget v2, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v2, v14, :cond_11

    iget-object v2, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v3, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v2, v3, :cond_11

    :goto_f
    iget-object v2, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v3, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v2, v3, :cond_10

    invoke-virtual {v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_f

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v5, v3

    iget-wide v3, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v6, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v5

    move-wide v5, v6

    move-wide v7, v3

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_11
    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    if-eqz v2, :cond_14

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v2, :cond_12

    iget v2, v0, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v3, 0x138c

    if-eq v2, v3, :cond_12

    const/16 v3, 0x138b

    if-ne v2, v3, :cond_14

    :cond_12
    const-string v2, "Recoverable renderer error"

    invoke-static {v12, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez v2, :cond_13

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    :cond_13
    const/16 v2, 0x19

    invoke-virtual {v15, v2, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v2, v15, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    iget-object v3, v0, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    invoke-virtual {v0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->recycle()V

    goto :goto_10

    :cond_14
    invoke-static {v12, v11, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v14, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_15
    :goto_10
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final handlePeriodPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 12

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    if-ne v4, p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez p1, :cond_0

    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    invoke-virtual {v1, p1, v4, v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->handlePrepared(FLandroidx/media3/common/Timeline;Z)V

    :cond_0
    iget-object p1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v1, p1, :cond_1

    iget-object p1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    invoke-virtual {p0, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length p1, p1

    new-array p1, p1, [Z

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers([ZJ)V

    iput-boolean v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v6, p1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const/4 v10, 0x0

    const/4 v11, 0x5

    move-wide v8, v4

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p0

    move-object v1, v2

    iput-object p0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void

    :cond_2
    move-object v1, p0

    const/4 p0, 0x0

    :goto_1
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p0, v4, :cond_4

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    if-ne v5, p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    iget-boolean p0, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    xor-int/2addr p0, v3

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    iget p0, p0, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    invoke-virtual {v4, p0, v3, v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->handlePrepared(FLandroidx/media3/common/Timeline;Z)V

    iget-object p0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p0, :cond_5

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    if-ne p0, p1, :cond_5

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinuePreloading()V

    :cond_5
    return-void
.end method

.method public final handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;FZZ)V
    .locals 4

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->incrementPendingOperationAcks(I)V

    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_1
    iget p3, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object p4, p4, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_4

    iget-object v1, p4, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    invoke-interface {v3, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p4, p4, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length p3, p0

    :goto_2
    if-ge v0, p3, :cond_6

    aget-object p4, p0, v0

    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v2, p4, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v2, p2, v1}, Landroidx/media3/exoplayer/Renderer;->setPlaybackSpeed(FF)V

    iget-object p4, p4, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast p4, Landroidx/media3/exoplayer/Renderer;

    if-eqz p4, :cond_5

    invoke-interface {p4, p2, v1}, Landroidx/media3/exoplayer/Renderer;->setPlaybackSpeed(FF)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, p4

    move/from16 v2, p9

    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    const/4 v7, 0x0

    if-nez v3, :cond_1

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v3, p2, v8

    if-nez v3, :cond_1

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v9, v3, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v10, v3, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-boolean v11, v11, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    if-eqz v11, :cond_10

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v3, :cond_2

    sget-object v8, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    goto :goto_2

    :cond_2
    iget-object v8, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    :goto_2
    if-nez v3, :cond_3

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_3

    :cond_3
    iget-object v9, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    :goto_3
    iget-object v10, v9, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    new-instance v11, Lcom/google/common/collect/ImmutableList$Builder;

    const/4 v12, 0x4

    invoke-direct {v11, v12}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    array-length v12, v10

    move v13, v7

    move v14, v13

    :goto_4
    if-ge v13, v12, :cond_6

    aget-object v15, v10, v13

    if-eqz v15, :cond_5

    invoke-interface {v15, v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v15

    iget-object v15, v15, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v15, :cond_4

    new-instance v15, Landroidx/media3/common/Metadata;

    new-array v6, v7, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v15, v6}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    invoke-virtual {v11, v15}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v11, v15}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    const/4 v14, 0x1

    :cond_5
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    if-eqz v14, :cond_7

    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v6

    :goto_6
    move-object v10, v6

    goto :goto_7

    :cond_7
    sget-object v6, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v6, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_6

    :goto_7
    if-eqz v3, :cond_8

    iget-object v6, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v11, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v11, v11, v4

    if-eqz v11, :cond_8

    invoke-virtual {v6, v4, v5}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v6

    iput-object v6, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    :cond_8
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v11, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v6, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v11, v6, :cond_9

    goto :goto_b

    :cond_9
    if-eqz v11, :cond_f

    iget-object v6, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move v11, v7

    move v12, v11

    :goto_8
    array-length v13, v3

    if-ge v11, v13, :cond_c

    invoke-virtual {v6, v11}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_b

    aget-object v13, v3, v11

    iget-object v13, v13, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v13, Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v13}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_a

    move v14, v7

    goto :goto_9

    :cond_a
    iget-object v13, v6, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v13, v13, v11

    iget v13, v13, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    if-eqz v13, :cond_b

    const/4 v12, 0x1

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_c
    const/4 v14, 0x1

    :goto_9
    if-eqz v12, :cond_d

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    goto :goto_a

    :cond_d
    move v14, v7

    :goto_a
    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-ne v14, v3, :cond_e

    goto :goto_b

    :cond_e
    iput-boolean v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-nez v14, :cond_f

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    :cond_f
    :goto_b
    move-object v11, v9

    move-object v12, v10

    move-object v10, v8

    goto :goto_c

    :cond_10
    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v8, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    sget-object v10, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_b

    :goto_c
    if-eqz p8, :cond_13

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-boolean v6, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v6, :cond_12

    iget v6, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    const/4 v8, 0x5

    if-eq v6, v8, :cond_12

    if-ne v2, v8, :cond_11

    const/4 v6, 0x1

    goto :goto_d

    :cond_11
    move v6, v7

    :goto_d
    invoke-static {v6}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    goto :goto_e

    :cond_12
    const/4 v14, 0x1

    iput-boolean v14, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    iput-boolean v14, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    iput v2, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    :cond_13
    :goto_e
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    invoke-virtual {v0, v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v8

    move-wide/from16 v6, p6

    move-object v0, v2

    move-wide/from16 v2, p2

    invoke-virtual/range {v0 .. v12}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isTimelineReady()Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final maybeContinueLoading()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isLoadingPossible(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-nez v1, :cond_0

    move v1, v6

    goto/16 :goto_2

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-boolean v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v7, :cond_1

    move-wide v7, v4

    goto :goto_0

    :cond_1
    iget-object v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    invoke-interface {v7}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v7

    :goto_0
    invoke-virtual {v0, v7, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v11

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v7, v7, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v7, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    iget-wide v7, v1, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    move-wide v15, v7

    goto :goto_1

    :cond_2
    move-wide v15, v2

    :goto_1
    new-instance v9, Landroidx/media3/exoplayer/LoadControl$Parameters;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v1

    iget v13, v1, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-boolean v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    invoke-direct/range {v9 .. v16}, Landroidx/media3/exoplayer/LoadControl$Parameters;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;JFZJ)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/DefaultLoadControl;

    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/DefaultLoadControl;->shouldContinueLoading(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v1

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v7, v7, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_4

    iget-boolean v8, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v8, :cond_4

    const-wide/32 v13, 0x7a120

    cmp-long v8, v11, v13

    if-gez v8, :cond_4

    iget-wide v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    cmp-long v8, v10, v4

    if-gtz v8, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-interface {v1, v7, v8}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(J)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/DefaultLoadControl;

    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/DefaultLoadControl;->shouldContinueLoading(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v1

    :cond_4
    :goto_2
    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v7}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v10, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v8, v10

    iput-wide v8, v7, Landroidx/media3/exoplayer/LoadingInfo$Builder;->playbackPositionUs:J

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v8}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v8

    iget v8, v8, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    const/4 v10, 0x1

    if-gtz v9, :cond_6

    const v9, -0x800001

    cmpl-float v9, v8, v9

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    move v9, v6

    goto :goto_4

    :cond_6
    :goto_3
    move v9, v10

    :goto_4
    invoke-static {v9}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    iput v8, v7, Landroidx/media3/exoplayer/LoadingInfo$Builder;->playbackSpeed:F

    iget-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    cmp-long v4, v8, v4

    if-gez v4, :cond_8

    cmp-long v2, v8, v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    move v2, v6

    goto :goto_6

    :cond_8
    :goto_5
    move v2, v10

    :goto_6
    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    iput-wide v8, v7, Landroidx/media3/exoplayer/LoadingInfo$Builder;->lastRebufferRealtimeMs:J

    new-instance v2, Landroidx/media3/exoplayer/LoadingInfo;

    invoke-direct {v2, v7}, Landroidx/media3/exoplayer/LoadingInfo;-><init>(Landroidx/media3/exoplayer/LoadingInfo$Builder;)V

    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v3, :cond_9

    move v6, v10

    :cond_9
    invoke-static {v6}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z

    :cond_a
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateIsLoading()V

    return-void
.end method

.method public final maybeContinuePreloading()V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->maybeUpdatePreloadMediaPeriodHolder()V

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_a

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepareCalled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v2, :cond_a

    :cond_0
    invoke-interface {v1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->isLoading()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v2, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    iget-boolean v3, v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    if-eqz v3, :cond_2

    goto/16 :goto_5

    :cond_3
    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepareCalled:Z

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iput-boolean v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepareCalled:Z

    invoke-interface {v1, p0, v4, v5}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    return-void

    :cond_4
    new-instance v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v2}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;->playbackPositionUs:J

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    const/4 v6, 0x0

    if-gtz v5, :cond_6

    const v5, -0x800001

    cmpl-float v5, v4, v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_1

    :cond_6
    :goto_0
    move v5, v3

    :goto_1
    invoke-static {v5}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    iput v4, v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;->playbackSpeed:F

    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    const-wide/16 v7, 0x0

    cmp-long p0, v4, v7

    if-gez p0, :cond_8

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v4, v7

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move p0, v6

    goto :goto_3

    :cond_8
    :goto_2
    move p0, v3

    :goto_3
    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    iput-wide v4, v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;->lastRebufferRealtimeMs:J

    new-instance p0, Landroidx/media3/exoplayer/LoadingInfo;

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/LoadingInfo;-><init>(Landroidx/media3/exoplayer/LoadingInfo$Builder;)V

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    move v3, v6

    :goto_4
    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkState(Z)V

    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z

    :cond_a
    :goto_5
    return-void
.end method

.method public final maybeNotifyPlaybackInfoChanged()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    iget-object v3, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/PlaybackInfo;

    if-eq v3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    iput-object v1, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;->f$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v3, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v1, v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    :cond_1
    return-void
.end method

.method public final maybeThrowRendererStreamError(I)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v1, v0, p1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->maybeThrowStreamError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, v1, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Disabling track due to error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v3, v3, p1

    invoke-interface {v3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/Format;->toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExoPlayerImplInternal"

    invoke-static {v3, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v5, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v0, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-virtual {v0}, [Landroidx/media3/exoplayer/RendererConfiguration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/exoplayer/RendererConfiguration;

    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-virtual {v2}, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v3, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Landroidx/media3/common/Tracks;

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-direct {v5, v0, v2, v3, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    iget-object v0, v5, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, v5, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aput-object v1, v0, p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableRenderer(I)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v4, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v6, p0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-object p0, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length p0, p0

    new-array v9, p0, [Z

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    return-void
.end method

.method public final maybeTriggerOnRendererReadyChanged(IZ)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererReportedReady:[Z

    aget-boolean v1, v0, p1

    if-eq v1, p2, :cond_0

    aput-boolean p2, v0, p1

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;-><init>(Ljava/lang/Object;IZI)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->applicationLooperHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final mediaSourceListUpdateRequestedInternal()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->createTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final moveMediaItemsInternal()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->incrementPendingOperationAcks(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    return-void
.end method

.method public final onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    return-void
.end method

.method public final prepareInternal()V
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->incrementPendingOperationAcks(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v3, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    iget-wide v6, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->threadId:J

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_1

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v1

    :goto_1
    const-string v7, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper)."

    invoke-static {v7, v6}, Landroidx/media3/common/util/Log;->checkState(Ljava/lang/String;Z)V

    iput-wide v4, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->threadId:J

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    const/high16 v2, 0xc80000

    :cond_3
    iput v2, v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->targetBufferBytes:I

    iput-boolean v0, v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v4, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget v5, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    iget v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    iget v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    invoke-virtual {v7, v2, v4}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(IZ)I

    move-result v2

    invoke-virtual {p0, v2, v5, v6, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlayWhenReadyWithAudioFocus(IIIZ)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    check-cast v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v5, v4, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    iget-boolean v6, v4, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    xor-int/2addr v6, v1

    invoke-static {v6}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-object v2, v4, Landroidx/media3/exoplayer/MediaSourceList;->mediaTransferListener:Ljava/lang/Object;

    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/MediaSourceList;->prepareChildSource(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    iget-object v6, v4, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iput-boolean v1, v4, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final releaseInternal()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v0, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    move v3, v0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v4, v4, v3

    invoke-interface {v4}, Landroidx/media3/exoplayer/RendererCapabilities;->clearListener()V

    aget-object v4, v2, v3

    iget-object v5, v4, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->release()V

    iput-boolean v0, v4, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    iget-object v5, v4, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/Renderer;

    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->release()V

    iput-boolean v0, v4, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v4, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultLoadControl;->updateAllocator()V

    :cond_2
    iget-object v3, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->threadId:J

    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x20

    if-lt v2, v4, :cond_5

    iget-object v2, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/compose/runtime/Latch;

    if-eqz v2, :cond_5

    iget-object v4, v2, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v4, Landroid/os/Handler;

    iget-object v5, v2, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v5, Landroid/media/Spatializer;

    if-eqz v5, :cond_5

    iget-object v2, v2, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;

    if-eqz v2, :cond_5

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v2}, Landroid/media/Spatializer;->removeOnSpatializerStateChangedListener(Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    iput-object v3, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->listener:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iput-object v3, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooperProvider:Landroidx/compose/ui/graphics/AndroidPaint;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/AndroidPaint;->releaseLooper()V

    monitor-enter p0

    :try_start_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooperProvider:Landroidx/compose/ui/graphics/AndroidPaint;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/AndroidPaint;->releaseLooper()V

    monitor-enter p0

    :try_start_2
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public final removeMediaItemsInternal(IILandroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->incrementPendingOperationAcks(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    iput-object p3, v0, Landroidx/media3/exoplayer/MediaSourceList;->shuffleOrder:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList;->removeMediaSourcesInternal(II)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->createTimeline()Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final reselectTracksInternal()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v10, 0x1

    const/4 v4, 0x0

    move-object v11, v3

    move v3, v10

    :goto_0
    if-eqz v11, :cond_13

    iget-boolean v5, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v5, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v5, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-boolean v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    invoke-virtual {v11, v1, v6, v5}, Landroidx/media3/exoplayer/MediaPeriodHolder;->selectTracks(FLandroidx/media3/common/Timeline;Z)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v12

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v5, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v11, v5, :cond_1

    move-object v14, v12

    goto :goto_1

    :cond_1
    move-object v14, v4

    :goto_1
    iget-object v4, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v5, v12, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    iget-object v7, v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v7, v7

    array-length v8, v5

    if-eq v7, v8, :cond_2

    goto :goto_3

    :cond_2
    move v7, v6

    :goto_2
    array-length v8, v5

    if-ge v7, v8, :cond_4

    invoke-virtual {v12, v4, v7}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isEquivalent(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;I)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-ne v11, v2, :cond_5

    move v3, v6

    :cond_5
    iget-object v11, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-object v4, v14

    goto :goto_0

    :cond_6
    :goto_3
    const/4 v1, 0x4

    if-eqz v3, :cond_11

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v13, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v2, v13}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    move-result v2

    and-int/2addr v2, v10

    if-eqz v2, :cond_7

    move/from16 v17, v10

    goto :goto_4

    :cond_7
    move/from16 v17, v6

    :goto_4
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v2, v2

    new-array v2, v2, [Z

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    move-object/from16 v18, v2

    move-wide v15, v3

    invoke-virtual/range {v13 .. v18}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v2

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v5, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v5, v1, :cond_8

    iget-wide v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_8

    move v8, v10

    goto :goto_5

    :cond_8
    move v8, v6

    :goto_5
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    move v5, v1

    iget-object v1, v4, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v11, v4, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v14, v4, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    const/4 v9, 0x5

    move-wide/from16 v19, v14

    move v14, v5

    move-wide v4, v11

    move v11, v6

    move-wide/from16 v6, v19

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    if-eqz v8, :cond_9

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    :cond_9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableAndResetPrewarmingRenderers()V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v1, v1

    new-array v1, v1, [Z

    move v6, v11

    :goto_6
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v3, v2

    if-ge v6, v3, :cond_f

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v2

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled()Z

    move-result v3

    aput-boolean v3, v1, v6

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v3, v3, v6

    iget-object v4, v13, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v4, v4, v6

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    iget-wide v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    aget-boolean v9, v18, v6

    iget-object v12, v3, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v12, Landroidx/media3/exoplayer/Renderer;

    invoke-static {v12}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v12}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v15

    if-eq v4, v15, :cond_a

    invoke-virtual {v3, v12, v5}, Landroidx/media3/exoplayer/RendererHolder;->disableRenderer(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    goto :goto_7

    :cond_a
    if-eqz v9, :cond_b

    invoke-interface {v12, v7, v8}, Landroidx/media3/exoplayer/Renderer;->resetPosition(J)V

    :cond_b
    :goto_7
    iget-object v12, v3, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v12, Landroidx/media3/exoplayer/Renderer;

    if-eqz v12, :cond_d

    invoke-static {v12}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v12}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v15

    if-eq v4, v15, :cond_c

    invoke-virtual {v3, v12, v5}, Landroidx/media3/exoplayer/RendererHolder;->disableRenderer(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    goto :goto_8

    :cond_c
    if-eqz v9, :cond_d

    invoke-interface {v12, v7, v8}, Landroidx/media3/exoplayer/Renderer;->resetPosition(J)V

    :cond_d
    :goto_8
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v3

    sub-int v3, v2, v3

    if-lez v3, :cond_e

    invoke-virtual {v0, v6, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeTriggerOnRendererReadyChanged(IZ)V

    :cond_e
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_f
    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers([ZJ)V

    iput-boolean v10, v13, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    :cond_10
    move v5, v14

    goto :goto_9

    :cond_11
    move v14, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1, v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    iget-boolean v1, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_10

    iget-object v1, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v5, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->hasSecondaryRenderers:Z

    if-eqz v3, :cond_12

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->areRenderersPrewarming()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v3, v11, :cond_12

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableAndResetPrewarmingRenderers()V

    :cond_12
    iget-object v3, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v3, v3

    new-array v3, v3, [Z

    const/4 v15, 0x0

    move-object/from16 v16, v3

    move v5, v14

    move-wide v13, v1

    invoke-virtual/range {v11 .. v16}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    :goto_9
    invoke-virtual {v0, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v1, v5, :cond_13

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    :cond_13
    :goto_a
    return-void
.end method

.method public final resetInternal(ZZZZ)V
    .locals 35

    move-object/from16 v1, p0

    const-string v2, "ExoPlayerImplInternal"

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->removeMessages(I)V

    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    iput-boolean v4, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-boolean v6, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    iput-boolean v4, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    :cond_0
    const-wide v6, 0xe8d4a51000L

    iput-wide v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    move v0, v4

    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v8, v8

    if-ge v0, v8, :cond_1

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableRenderer(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iput-wide v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->prewarmingMediaPeriodDiscontinuity:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v8, "Disable failed."

    invoke-static {v2, v8, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz p1, :cond_2

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v9, v8

    move v10, v4

    :goto_3
    if-ge v10, v9, :cond_2

    aget-object v0, v8, v10

    :try_start_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/RendererHolder;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v11, "Reset failed."

    invoke-static {v2, v11, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    iput v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v8, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v11, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v11, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v11, v10}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v0, :cond_3

    goto :goto_5

    :cond_3
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v10, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    goto :goto_6

    :cond_4
    :goto_5
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v10, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    :goto_6
    if-eqz p2, :cond_6

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPositionUs(Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_7
    move-wide v11, v8

    move-wide v9, v6

    goto :goto_8

    :cond_5
    move v5, v4

    goto :goto_7

    :cond_6
    move-wide/from16 v33, v10

    move-wide v11, v8

    move-wide/from16 v9, v33

    move v5, v4

    :goto_8
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->clear()V

    iput-boolean v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    if-eqz p3, :cond_9

    instance-of v6, v0, Landroidx/media3/exoplayer/PlaylistTimeline;

    if-eqz v6, :cond_9

    check-cast v0, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v6, v6, Landroidx/media3/exoplayer/MediaSourceList;->shuffleOrder:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    iget-object v7, v0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    array-length v8, v7

    new-array v8, v8, [Landroidx/media3/common/Timeline;

    move v13, v4

    :goto_9
    array-length v14, v7

    if-ge v13, v14, :cond_7

    new-instance v14, Landroidx/media3/exoplayer/PlaylistTimeline$1;

    aget-object v15, v7, v13

    invoke-direct {v14, v15}, Landroidx/media3/exoplayer/PlaylistTimeline$1;-><init>(Landroidx/media3/common/Timeline;)V

    aput-object v14, v8, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_7
    new-instance v7, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaylistTimeline;->uids:[Ljava/lang/Object;

    invoke-direct {v7, v8, v0, v6}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>([Landroidx/media3/common/Timeline;[Ljava/lang/Object;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V

    iget v0, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_8

    iget-object v0, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v7, v0, v6}, Landroidx/media3/exoplayer/PlaylistTimeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v13, 0x0

    invoke-virtual {v7, v0, v6, v13, v14}, Landroidx/media3/exoplayer/PlaylistTimeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v6}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v13, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v0, v13, v14, v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(JLjava/lang/Object;)V

    move-object v8, v0

    goto :goto_b

    :cond_8
    :goto_a
    move-object v8, v2

    goto :goto_b

    :cond_9
    move-object v7, v0

    goto :goto_a

    :goto_b
    new-instance v6, Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v13, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eqz p4, :cond_a

    move-object v14, v3

    goto :goto_c

    :cond_a
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    move-object v14, v2

    :goto_c
    if-eqz v5, :cond_b

    sget-object v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    :goto_d
    move-object/from16 v16, v2

    goto :goto_e

    :cond_b
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    goto :goto_d

    :goto_e
    if-eqz v5, :cond_c

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    :goto_f
    move-object/from16 v17, v2

    goto :goto_10

    :cond_c
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_f

    :goto_10
    if-eqz v5, :cond_d

    sget-object v2, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v2, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    :goto_11
    move-object/from16 v18, v2

    goto :goto_12

    :cond_d
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    goto :goto_11

    :goto_12
    iget-boolean v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    iget v15, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    move/from16 v22, v15

    const/4 v15, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v19, v8

    move-wide/from16 v24, v11

    move-wide/from16 v28, v11

    move-object/from16 v23, v0

    move/from16 v20, v2

    move/from16 v21, v5

    invoke-direct/range {v6 .. v32}, Landroidx/media3/exoplayer/PlaybackInfo;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJILandroidx/media3/exoplayer/ExoPlaybackException;ZLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;ZIILandroidx/media3/common/PlaybackParameters;JJJJZ)V

    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    if-eqz p3, :cond_11

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    :goto_13
    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_e

    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_e
    iput-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    iput-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->maybeUpdatePreloadMediaPeriodHolder()V

    :cond_f
    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v0, v1, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    :try_start_2
    iget-object v0, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object v6, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/source/BaseMediaSource;->releaseSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_15

    :catch_2
    move-exception v0

    const-string v6, "MediaSourceList"

    const-string v7, "Failed to release child source."

    invoke-static {v6, v7, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    iget-object v0, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object v6, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->eventListener:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/source/BaseMediaSource;->removeEventListener(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    iget-object v0, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/source/BaseMediaSource;->removeDrmEventListener(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v0, v1, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput-boolean v4, v1, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    :cond_11
    return-void
.end method

.method public final resetPendingPauseAtEndOfPeriod()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    return-void
.end method

.method public final resetRendererPosition(J)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_0

    const-wide v2, 0xe8d4a51000L

    :goto_0
    add-long/2addr p1, v2

    goto :goto_1

    :cond_0
    iget-wide v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    goto :goto_0

    :goto_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    iget-object v2, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {v2, p1, p2}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, p2, :cond_2

    aget-object v4, p1, v3

    iget-wide v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4, v5, v6}, Landroidx/media3/exoplayer/Renderer;->resetPosition(J)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object p0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_3
    if-eqz p0, :cond_5

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length p2, p1

    move v0, v2

    :goto_4
    if-ge v0, p2, :cond_4

    aget-object v1, p1, v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onDiscontinuity()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final resolvePendingMessagePositions(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V
    .locals 10

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    iget v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v9, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePosition(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    move-object p1, v4

    move-object p2, v5

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public final scheduleNextWork(J)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    sget-wide v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->BUFFERING_MAXIMUM_INTERVAL_MS:J

    :goto_0
    add-long/2addr p1, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final seekToCurrentPosition(Z)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v3

    iget-object p0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, p0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long p0, v3, v5

    if-eqz p0, :cond_0

    iget-object p0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, p0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v7, p0, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    const/4 v10, 0x5

    move v9, p1

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p0

    iput-object p0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_0
    return-void
.end method

.method public final seekToInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->incrementPendingOperationAcks(I)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    const/4 v4, 0x1

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSeekPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object v0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    if-nez v0, :cond_0

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPositionUs(Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v2

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v9

    move-wide v5, v6

    :goto_0
    const-wide/16 v15, 0x0

    goto :goto_3

    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v10, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-wide v13, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v10, v13, v6

    if-nez v10, :cond_1

    move-wide v13, v6

    goto :goto_1

    :cond_1
    move-wide v13, v11

    :goto_1
    iget-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v15, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v15, v15, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v10, v15, v2, v11, v12}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, v6, v7}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    iget v6, v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v2, v6}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v2

    iget v6, v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v2, v6, :cond_2

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v2, v2, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    move v2, v9

    move-wide v5, v13

    const-wide/16 v11, 0x0

    goto :goto_0

    :cond_3
    const-wide/16 v15, 0x0

    iget-wide v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    move v2, v9

    goto :goto_2

    :cond_4
    move v2, v8

    :goto_2
    move-wide v5, v13

    :goto_3
    :try_start_0
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    goto :goto_6

    :catchall_0
    move-exception v0

    move v9, v2

    :goto_4
    move-object v2, v10

    :goto_5
    move-wide v3, v11

    goto/16 :goto_12

    :cond_5
    const/4 v3, 0x4

    if-nez v0, :cond_7

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v0, v9, :cond_6

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    :cond_6
    invoke-virtual {v1, v8, v9, v8, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    :goto_6
    move v9, v2

    move-object v2, v10

    move-wide v3, v11

    goto/16 :goto_f

    :cond_7
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v10, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_b

    :try_start_1
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_8

    :try_start_2
    iget-boolean v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v4, :cond_8

    cmp-long v4, v11, v15

    if-eqz v4, :cond_8

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    invoke-interface {v0, v11, v12, v4}, Landroidx/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :cond_8
    move-wide v13, v11

    :goto_7
    :try_start_3
    invoke-static {v13, v14}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v15

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v8, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    cmp-long v0, v15, v8

    if-nez v0, :cond_9

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v8, 0x2

    if-eq v4, v8, :cond_a

    const/4 v8, 0x3

    if-ne v4, v8, :cond_9

    goto :goto_8

    :cond_9
    move v9, v2

    move-wide v15, v5

    move-object v2, v10

    goto :goto_a

    :cond_a
    :goto_8
    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v9, v2

    move-object v2, v10

    const/4 v10, 0x2

    move-wide v7, v3

    :goto_9
    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    return-void

    :catchall_1
    move-exception v0

    move v9, v2

    move-wide v15, v5

    goto :goto_4

    :cond_b
    move v9, v2

    move-wide v15, v5

    move-object v2, v10

    move-wide v13, v11

    :goto_a
    :try_start_4
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v0, v3, :cond_c

    const/4 v6, 0x1

    goto :goto_b

    :cond_c
    const/4 v6, 0x0

    :goto_b
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v3, v0, :cond_d

    const/4 v5, 0x1

    :goto_c
    move-wide v3, v13

    goto :goto_d

    :cond_d
    const/4 v5, 0x0

    goto :goto_c

    :goto_d
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    cmp-long v0, v11, v13

    if-eqz v0, :cond_e

    const/16 v17, 0x1

    goto :goto_e

    :cond_e
    const/16 v17, 0x0

    :goto_e
    or-int v9, v9, v17

    :try_start_5
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v3, v2

    :try_start_6
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v8, 0x1

    move-object v4, v2

    move-wide v6, v15

    :try_start_7
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v2, v3

    move-wide v5, v6

    move-wide v3, v13

    :goto_f
    const/4 v10, 0x2

    move-wide v7, v3

    move-object/from16 v1, p0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v3

    move-wide v5, v6

    :goto_10
    move-wide v3, v13

    goto :goto_12

    :catchall_3
    move-exception v0

    move-object v2, v3

    :goto_11
    move-wide v5, v15

    goto :goto_10

    :catchall_4
    move-exception v0

    goto :goto_11

    :catchall_5
    move-exception v0

    move-wide v5, v15

    goto/16 :goto_5

    :goto_12
    const/4 v10, 0x2

    move-wide v7, v3

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    throw v0
.end method

.method public final seekToPeriodPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    const/4 v2, 0x2

    if-nez p5, :cond_0

    iget-object p5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p5, p5, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v3, 0x3

    if-ne p5, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    :cond_1
    iget-object p5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, p5, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    if-ne v3, v4, :cond_4

    if-eqz v4, :cond_7

    iget-wide v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    add-long/2addr v5, p2

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gez p1, :cond_7

    :cond_4
    move p1, v0

    :goto_2
    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v3, p4

    if-ge p1, v3, :cond_5

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableRenderer(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->prewarmingMediaPeriodDiscontinuity:J

    if-eqz v4, :cond_7

    :goto_3
    iget-object p1, p5, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq p1, v4, :cond_6

    invoke-virtual {p5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_3

    :cond_6
    invoke-virtual {p5, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    const-wide v5, 0xe8d4a51000L

    iput-wide v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    array-length p1, p4

    new-array p1, p1, [Z

    iget-object p4, p5, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v5

    invoke-virtual {p0, p1, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers([ZJ)V

    iput-boolean v1, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    :cond_7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableAndResetPrewarmingRenderers()V

    if-eqz v4, :cond_a

    iget-object p1, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    invoke-virtual {p5, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    iget-boolean p4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez p4, :cond_8

    iget-object p1, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithStartPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    goto :goto_4

    :cond_8
    iget-boolean p4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz p4, :cond_9

    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    iget-wide p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long p4, p2, p4

    invoke-interface {p1, p4, p5}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(J)V

    :cond_9
    :goto_4
    invoke-virtual {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_5

    :cond_a
    invoke-virtual {p5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->clear()V

    invoke-virtual {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    :goto_5
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method public final sendMessageInternal(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 9

    iget-wide v0, p1, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->sendMessageToTarget(Landroidx/media3/exoplayer/PlayerMessage;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    new-instance p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Landroidx/media3/exoplayer/PlayerMessage;)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v2, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Landroidx/media3/exoplayer/PlayerMessage;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    move-object v4, v3

    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePosition(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    return-void
.end method

.method public final sendMessageToTarget(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 3

    iget-object v0, p1, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverMessage(Landroidx/media3/exoplayer/PlayerMessage;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 p1, 0x3

    const/4 v0, 0x2

    if-eq p0, p1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    const/16 p0, 0xf

    invoke-virtual {v2, p0, p1}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    return-void
.end method

.method public final sendMessageToTargetThread(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 3

    iget-object v0, p1, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "TAG"

    const-string v0, "Trying to send message on a dead thread."

    invoke-static {p0, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object v0

    new-instance v1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/PlayerMessage;)V

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAudioAttributesInternal(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v1, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v1, p1}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->maybeInvalidateForAudioChannelCountConstraints()V

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    iget-object v0, p2, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-object p1, p2, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    move p1, v0

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    iput p1, p2, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    if-eq p1, v1, :cond_3

    if-nez p1, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->checkArgument(Ljava/lang/String;Z)V

    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    iget v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    invoke-virtual {p2, p1, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(IZ)I

    move-result p1

    invoke-virtual {p0, p1, v1, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlayWhenReadyWithAudioFocus(IIIZ)V

    return-void
.end method

.method public final setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public final setMediaItemsInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->incrementPendingOperationAcks(I)V

    iget v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I

    iget-object v1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/ArrayList;

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    new-instance v3, Landroidx/media3/exoplayer/PlaylistTimeline;

    invoke-direct {v3, v2, v1}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V

    iget v4, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I

    iget-wide v5, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->positionUs:J

    invoke-direct {v0, v3, v4, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroidx/media3/exoplayer/MediaSourceList;->removeMediaSourcesInternal(II)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0, v2, v1}, Landroidx/media3/exoplayer/MediaSourceList;->addMediaSources(ILjava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final setPauseAtEndOfWindowInternal(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    :cond_0
    return-void
.end method

.method public final setPlaybackParametersInternal(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/SystemHandlerWrapper;->removeMessages(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    const/4 v0, 0x1

    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {p0, p1, v1, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;FZZ)V

    return-void
.end method

.method public final setPreloadConfigurationInternal(Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->maybeUpdatePreloadMediaPeriodHolder()V

    :cond_1
    return-void
.end method

.method public final setRepeatModeInternal(I)V
    .locals 2

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iput p1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->updateForPlaybackModeChange(Landroidx/media3/common/Timeline;)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableAndResetPrewarmingRenderers()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method public final setShuffleModeEnabledInternal(Z)V
    .locals 2

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iput-boolean p1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->updateForPlaybackModeChange(Landroidx/media3/common/Timeline;)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableAndResetPrewarmingRenderers()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method public final setShuffleOrderInternal(Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->incrementPendingOperationAcks(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p1, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v2, v2

    if-eq v2, v1, :cond_0

    new-instance v2, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v3, Ljava/util/Random;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(Ljava/util/Random;)V

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->cloneAndInsert(I)Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    move-result-object p1

    :cond_0
    iput-object p1, v0, Landroidx/media3/exoplayer/MediaSourceList;->shuffleOrder:Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->createTimeline()Landroidx/media3/common/Timeline;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final setState(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v1, p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_1
    return-void
.end method

.method public final setVideoOutputInternal(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v1, :cond_3

    aget-object v5, v0, v2

    iget-object v6, v5, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v6}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v7

    if-eq v7, v3, :cond_0

    goto :goto_2

    :cond_0
    iget v3, v5, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v7, 0x4

    if-eq v3, v7, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v6, v4, p1}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v3, v5, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v4, p1}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    if-ne p1, v3, :cond_5

    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    :cond_5
    if-eqz p2, :cond_6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    return-void
.end method

.method public final setVolumeInternal(F)V
    .locals 6

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->volume:F

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    iget v0, v0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    mul-float/2addr p1, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v3, v5, v4}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    iget-object v2, v2, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/Renderer;

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final shouldPlayWhenReady()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 2

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, p0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)V

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz p1, :cond_1

    iget-wide p0, p0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final startRenderers()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->start()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final stopInternal(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->incrementPendingOperationAcks(I)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object p2, p1, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->updateAllocator()V

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {p2, v1, p1}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(IZ)I

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    return-void
.end method

.method public final stopRenderers()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    iput-boolean v1, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/Renderer;

    iget-object v2, v2, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/Renderer;

    invoke-static {v2}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->stop()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->stop()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final updateIsLoading()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-eq v0, v2, :cond_2

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithIsLoading(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_2
    return-void
.end method

.method public final updateLoadControlTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    iget-wide v0, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/high16 v5, 0xc80000

    if-ge v3, v1, :cond_2

    aget-object v6, p1, v3

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/TrackGroup;->type:I

    const/high16 v7, 0x20000

    packed-switch v6, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    move v5, v7

    goto :goto_1

    :pswitch_1
    const/high16 v5, 0x7d00000

    goto :goto_1

    :pswitch_2
    const/high16 v5, 0x89a0000

    goto :goto_1

    :pswitch_3
    move v5, v2

    :goto_1
    :pswitch_4
    add-int/2addr v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_3
    iput v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->targetBufferBytes:I

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultLoadControl;->updateAllocator()V

    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateMediaSourcesWithMediaItemsInternal(IILjava/util/List;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->incrementPendingOperationAcks(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt p2, v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    sub-int v5, p2, p1

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    move v1, p1

    :goto_2
    if-ge v1, p2, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    sub-int v5, v1, p1

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/MediaItem;

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->updateMediaItem(Landroidx/media3/common/MediaItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->createTimeline()Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final updatePlayWhenReadyWithAudioFocus(IIIZ)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    if-eq p1, v0, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, v2

    :goto_0
    const/4 v3, 0x2

    if-ne p1, v0, :cond_1

    move p3, v3

    goto :goto_1

    :cond_1
    if-ne p3, v3, :cond_2

    move p3, v1

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    move p2, v1

    goto :goto_2

    :cond_3
    if-ne p2, v1, :cond_4

    move p2, v2

    :cond_4
    :goto_2
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-ne v0, p4, :cond_5

    iget v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-ne v0, p2, :cond_5

    iget v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    if-ne v0, p3, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p1, p3, p2, p4}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlayWhenReady(IIZ)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v2, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object p2, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_3
    if-eqz p2, :cond_8

    iget-object p3, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object p3, p3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v0, p3

    move v4, v2

    :goto_4
    if-ge v4, v0, :cond_7

    aget-object v5, p3, v4

    if-eqz v5, :cond_6

    invoke-interface {v5, p4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    iget-object p2, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    iget-wide p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->reevaluateBuffer(J)V

    return-void

    :cond_9
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 p2, 0x3

    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    if-ne p1, p2, :cond_a

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    iput-boolean v1, p1, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    iget-object p1, p1, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->start()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    invoke-virtual {p3, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    return-void

    :cond_a
    if-ne p1, v3, :cond_b

    invoke-virtual {p3, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    :cond_b
    :goto_5
    return-void
.end method

.method public final updatePlaybackPositions()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_0

    goto/16 :goto_14

    :cond_0
    iget-boolean v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    invoke-interface {v2}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v10

    :goto_0
    cmp-long v4, v2, v10

    const/4 v12, 0x2

    const/16 v13, 0x10

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    invoke-virtual {v0, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    :cond_2
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v2

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_3
    move-wide/from16 v17, v10

    goto/16 :goto_e

    :cond_4
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v1, v3, :cond_5

    move v3, v14

    goto :goto_1

    :cond_5
    move v3, v15

    :goto_1
    iget-object v4, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-object v5, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    if-eqz v5, :cond_a

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v5

    if-nez v5, :cond_a

    if-eqz v3, :cond_6

    iget-object v5, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v5

    if-ne v5, v12, :cond_a

    :cond_6
    iget-object v5, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->isReady()Z

    move-result v5

    if-nez v5, :cond_7

    if-nez v3, :cond_a

    iget-object v3, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object v3, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Landroidx/media3/exoplayer/MediaClock;->getPositionUs()J

    move-result-wide v5

    iget-boolean v7, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz v7, :cond_9

    invoke-virtual {v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-gez v7, :cond_8

    iget-boolean v3, v4, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-eqz v3, :cond_b

    invoke-virtual {v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    iput-boolean v15, v4, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    goto :goto_3

    :cond_8
    iput-boolean v15, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    iget-boolean v7, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    if-eqz v7, :cond_9

    invoke-virtual {v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->start()V

    :cond_9
    invoke-virtual {v4, v5, v6}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    invoke-interface {v3}, Landroidx/media3/exoplayer/MediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v3

    iget-object v5, v4, Landroidx/media3/exoplayer/StandaloneMediaClock;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v3, v5}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/StandaloneMediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    iget-object v4, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->listener:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v4, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {v4, v13, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    goto :goto_3

    :cond_a
    :goto_2
    iput-boolean v14, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    iget-boolean v3, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    if-eqz v3, :cond_b

    invoke-virtual {v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->start()V

    :cond_b
    :goto_3
    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPositionUs()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v2, v4

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    move-wide/from16 v17, v10

    goto/16 :goto_d

    :cond_d
    iget-boolean v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    if-eqz v6, :cond_e

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-boolean v15, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    :cond_e
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v6, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v7, v6}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v6

    iget v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-lez v7, :cond_f

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_4

    :cond_f
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_12

    iget v8, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-gt v8, v6, :cond_10

    if-ne v8, v6, :cond_12

    iget-wide v8, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v8, v8, v4

    if-lez v8, :cond_12

    :cond_10
    add-int/lit8 v8, v7, -0x1

    if-lez v8, :cond_11

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    move-object v9, v7

    goto :goto_5

    :cond_11
    const/4 v9, 0x0

    :goto_5
    move v7, v8

    goto :goto_4

    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_13

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_6

    :cond_13
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_14

    iget-object v9, v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v9, :cond_14

    iget v9, v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-lt v9, v6, :cond_15

    if-ne v9, v6, :cond_14

    move-wide/from16 v17, v10

    iget-wide v10, v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v9, v10, v4

    if-gtz v9, :cond_17

    goto :goto_7

    :cond_14
    move-wide/from16 v17, v10

    goto :goto_9

    :cond_15
    move-wide/from16 v17, v10

    :goto_7
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_16

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_8

    :cond_16
    const/4 v8, 0x0

    :goto_8
    move-wide/from16 v10, v17

    goto :goto_6

    :cond_17
    :goto_9
    if-eqz v8, :cond_1d

    iget-object v9, v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    iget-object v10, v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v10, :cond_1d

    iget v10, v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v10, v6, :cond_1d

    iget-wide v10, v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v8, v10, v4

    if-lez v8, :cond_1d

    cmp-long v8, v10, v2

    if-gtz v8, :cond_1d

    :try_start_0
    invoke-virtual {v0, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->sendMessageToTarget(Landroidx/media3/exoplayer/PlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-boolean v8, v9, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    if-nez v8, :cond_19

    monitor-enter v9

    :try_start_1
    iget-boolean v8, v9, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    if-eqz v8, :cond_18

    goto :goto_a

    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_19
    :goto_a
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1a

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_9

    :cond_1a
    const/4 v8, 0x0

    goto :goto_9

    :catchall_1
    move-exception v0

    iget-boolean v2, v9, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    if-nez v2, :cond_1b

    monitor-enter v9

    :try_start_3
    iget-boolean v2, v9, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v9

    if-eqz v2, :cond_1c

    goto :goto_c

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_1b
    :goto_c
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1c
    throw v0

    :cond_1d
    iput v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    :goto_d
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->hasSkippedSilenceSinceLastCall()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-boolean v1, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    xor-int/lit8 v8, v1, 0x1

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const/4 v9, 0x6

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v2

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    goto :goto_e

    :cond_1e
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iput-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUpdateTimeMs:J

    :goto_e
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-eqz v2, :cond_28

    iget v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_28

    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_28

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    iget-object v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-virtual {v0, v5, v6, v7, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getLiveOffsetUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J

    move-result-wide v5

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    iget-wide v9, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    cmp-long v1, v9, v17

    if-nez v1, :cond_1f

    goto/16 :goto_13

    :cond_1f
    sub-long v7, v5, v7

    iget-wide v9, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    cmp-long v1, v9, v17

    if-nez v1, :cond_20

    iput-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide/16 v7, 0x0

    iput-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    goto :goto_f

    :cond_20
    long-to-float v1, v9

    const v9, 0x3f7fbe77    # 0.999f

    mul-float/2addr v1, v9

    long-to-float v10, v7

    const v11, 0x3a831200    # 9.999871E-4f

    mul-float/2addr v10, v11

    add-float/2addr v10, v1

    move v1, v9

    float-to-long v9, v10

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    iget-wide v9, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    long-to-float v9, v9

    mul-float/2addr v9, v1

    long-to-float v1, v7

    mul-float/2addr v11, v1

    add-float/2addr v11, v9

    float-to-long v7, v11

    iput-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    :goto_f
    iget-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    cmp-long v1, v7, v17

    if-eqz v1, :cond_21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v19, 0x3e8

    iget-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    sub-long/2addr v9, v7

    cmp-long v1, v9, v19

    if-gez v1, :cond_22

    iget v4, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    goto/16 :goto_13

    :cond_21
    const-wide/16 v19, 0x3e8

    :cond_22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    iget-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide/16 v21, 0x3

    iget-wide v9, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    mul-long v9, v9, v21

    add-long v25, v9, v7

    iget-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    cmp-long v1, v7, v25

    if-lez v1, :cond_25

    invoke-static/range {v19 .. v20}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v8

    iget v1, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v1, v4

    long-to-float v8, v8

    mul-float/2addr v1, v8

    float-to-long v9, v1

    iget v1, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    sub-float/2addr v1, v4

    mul-float/2addr v1, v8

    const v11, 0x33d6bf95    # 1.0E-7f

    float-to-long v7, v1

    add-long/2addr v9, v7

    iget-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    move/from16 v16, v11

    move v1, v12

    iget-wide v11, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr v11, v9

    new-array v9, v3, [J

    aput-wide v25, v9, v15

    aput-wide v7, v9, v14

    aput-wide v11, v9, v1

    aget-wide v7, v9, v15

    :goto_10
    if-ge v14, v3, :cond_24

    aget-wide v10, v9, v14

    cmp-long v1, v10, v7

    if-lez v1, :cond_23

    move-wide v7, v10

    :cond_23
    add-int/lit8 v14, v14, 0x1

    goto :goto_10

    :cond_24
    iput-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    goto :goto_11

    :cond_25
    const v16, 0x33d6bf95    # 1.0E-7f

    iget v1, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v1, v4

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v1, v1, v16

    float-to-long v7, v1

    sub-long v21, v5, v7

    iget-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    move-wide/from16 v23, v7

    invoke-static/range {v21 .. v26}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v7

    iput-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    iget-wide v9, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v1, v9, v17

    if-eqz v1, :cond_26

    cmp-long v1, v7, v9

    if-lez v1, :cond_26

    iput-wide v9, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    :cond_26
    :goto_11
    iget-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    iget-wide v9, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    cmp-long v1, v7, v9

    if-gez v1, :cond_27

    iput v4, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    goto :goto_12

    :cond_27
    long-to-float v1, v5

    mul-float v7, v16, v1

    add-float/2addr v7, v4

    iget v1, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    iget v3, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    invoke-static {v7, v1, v3}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result v1

    iput v1, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    :goto_12
    iget v4, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    :goto_13
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->speed:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_28

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    new-instance v2, Landroidx/media3/common/PlaybackParameters;

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->pitch:F

    invoke-direct {v2, v4, v1}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/SystemHandlerWrapper;->removeMessages(I)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v0, v1, v2, v15, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;FZZ)V

    :cond_28
    :goto_14
    return-void
.end method

.method public final updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    .locals 8

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    iget-object v1, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    :goto_0
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/16 p4, 0x10

    invoke-virtual {p3, p4}, Landroidx/media3/common/util/SystemHandlerWrapper;->removeMessages(I)V

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;FZZ)V

    return-void

    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v1, p2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)V

    iget-object v0, v2, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    iget-wide v4, v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    iget-wide v4, v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    iget v4, v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v5, -0x800001

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const v4, 0x3f7851ec    # 0.97f

    :goto_1
    iput v4, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    iget v0, v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const v0, 0x3f83d70a    # 1.03f

    :goto_2
    iput v0, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v4, :cond_4

    cmpl-float v0, v0, v5

    if-nez v0, :cond_4

    iput-wide v6, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    :cond_4
    invoke-virtual {v3}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    cmp-long v0, p5, v6

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, v1, p5, p6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getLiveOffsetUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J

    move-result-wide p0

    iput-wide p0, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    invoke-virtual {v3}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    return-void

    :cond_5
    iget-object p0, v2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    const-wide/16 p4, 0x0

    invoke-virtual {p3, p1, v2, p4, p5}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    if-eqz p7, :cond_7

    goto :goto_4

    :cond_7
    return-void

    :cond_8
    :goto_4
    iput-wide v6, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    invoke-virtual {v3}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    return-void
.end method

.method public final updateRebufferingState(ZZ)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    return-void
.end method

.method public final declared-synchronized waitUninterruptibly(Lcom/google/common/base/Supplier;J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_0

    :try_start_1
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    const/4 p2, 0x1

    move v2, p2

    :goto_1
    :try_start_2
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
