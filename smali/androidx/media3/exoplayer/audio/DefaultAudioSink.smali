.class public final Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static pendingReleaseCount:I

.field public static releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final releaseExecutorLock:Ljava/lang/Object;


# instance fields
.field public accumulatedSkippedSilenceDurationUs:J

.field public afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

.field public audioAttributes:Landroidx/media3/common/AudioAttributes;

.field public audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

.field public audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

.field public final audioOffloadSupportProvider:Lcom/motorola/camera/CameraKpi;

.field public audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

.field public final audioProcessorChain:Landroidx/core/view/MenuHostHelper;

.field public audioSessionId:I

.field public audioTrack:Landroid/media/AudioTrack;

.field public final audioTrackBufferSizeProvider:Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

.field public final audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

.field public final audioTrackProvider:Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

.field public auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

.field public avSyncHeader:Ljava/nio/ByteBuffer;

.field public bytesUntilNextAvSync:I

.field public final channelMappingAudioProcessor:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

.field public configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

.field public final context:Landroid/content/Context;

.field public externalAudioSessionIdProvided:Z

.field public framesPerEncodedSample:I

.field public handledEndOfStream:Z

.field public handledOffloadOnPresentationEnded:Z

.field public final initializationExceptionPendingExceptionHolder:Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

.field public inputBuffer:Ljava/nio/ByteBuffer;

.field public inputBufferAccessUnitCount:I

.field public isWaitingForOffloadEndOfStreamHandled:Z

.field public lastFeedElapsedRealtimeMs:J

.field public lastTunnelingAvSyncPresentationTimeUs:J

.field public listener:Lcom/google/android/gms/tasks/zzs;

.field public mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

.field public final mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

.field public offloadDisabledUntilNextConfiguration:Z

.field public offloadMode:I

.field public offloadStreamEventCallbackV29:Landroidx/core/view/MenuHostHelper;

.field public onRoutingChangedListener:Landroidx/core/view/MenuHostHelper;

.field public outputBuffer:Ljava/nio/ByteBuffer;

.field public pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

.field public playbackLooper:Landroid/os/Looper;

.field public playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field public playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public playing:Z

.field public final preferAudioTrackPlaybackParams:Z

.field public preferredDevice:Lcom/google/android/gms/tasks/zzad;

.field public reportSkippedSilenceHandler:Landroid/os/Handler;

.field public skipSilenceEnabled:Z

.field public skippedOutputFrameCountAtLastPosition:J

.field public startMediaTimeUs:J

.field public startMediaTimeUsNeedsInit:Z

.field public startMediaTimeUsNeedsSync:Z

.field public stoppedAudioTrack:Z

.field public submittedEncodedFrames:J

.field public submittedPcmBytes:J

.field public final toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/RegularImmutableList;

.field public final toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/RegularImmutableList;

.field public final trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

.field public tunneling:Z

.field public volume:F

.field public final writeExceptionPendingExceptionHolder:Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

.field public writtenEncodedFrames:J

.field public writtenPcmBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/profileinstaller/DeviceProfileWriter;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->context:Landroid/content/Context;

    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iget-object v0, p1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    check-cast v0, Landroidx/core/view/MenuHostHelper;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/core/view/MenuHostHelper;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferAudioTrackPlaybackParams:Z

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    iget-object v1, p1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackBufferSizeProvider:Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

    iget-object v1, p1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOffloadSupportProvider:Lcom/motorola/camera/CameraKpi;

    new-instance v1, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    new-instance v2, Landroidx/room/ObservedTableVersions;

    const/16 v3, 0x11

    invoke-direct {v2, v3, p0}, Landroidx/room/ObservedTableVersions;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;-><init>(Landroidx/room/ObservedTableVersions;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    new-instance v1, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    invoke-direct {v1}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->channelMappingAudioProcessor:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    new-instance v2, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    invoke-direct {v2}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    sget-object v3, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v3, v2, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->endBuffer:[B

    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    new-instance v3, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    invoke-direct {v3}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    sget-object v4, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/common/collect/Maps;->checkElementsNotNull(I[Ljava/lang/Object;)V

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/RegularImmutableList;

    new-instance v3, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

    invoke-direct {v3}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/common/collect/Maps;->checkElementsNotNull(I[Ljava/lang/Object;)V

    invoke-static {v4, v1}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/RegularImmutableList;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    new-instance v1, Landroidx/media3/common/AuxEffectInfo;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    new-instance v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    sget-object v3, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

    invoke-direct {v0}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

    new-instance v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

    invoke-direct {v0}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

    iget-object p1, p1, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackProvider:Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

    return-void
.end method

.method public static isOffloadedPlayback(Landroid/media/AudioTrack;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final applyAudioProcessorPlaybackParametersAndSkipSilence(J)V
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/core/view/MenuHostHelper;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v3, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v3, :cond_3

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->pcmEncoding:I

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v3, v2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/audio/SonicAudioProcessor;

    iget v4, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    const/4 v7, 0x1

    if-lez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    invoke-static {v6}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    iget v6, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->speed:F

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_1

    iput v4, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->speed:F

    iput-boolean v7, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    :cond_1
    iget v4, v0, Landroidx/media3/common/PlaybackParameters;->pitch:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-static {v5}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    iget v5, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->pitch:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_4

    iput v4, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->pitch:F

    iput-boolean v7, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    goto :goto_2

    :cond_3
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    :cond_4
    :goto_2
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    :goto_3
    move-object v4, v0

    goto :goto_4

    :cond_5
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    goto :goto_3

    :goto_4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v3, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v3, :cond_6

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->pcmEncoding:I

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    iget-object v0, v2, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    iput-boolean v1, v0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->enabled:Z

    :cond_6
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    new-instance v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v0

    iget p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(IJ)J

    move-result-wide v7

    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->flush()V

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    if-eqz p1, :cond_7

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    iget-object p1, p1, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object p1, p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/tinder/StateMachine;

    iget-object p2, p1, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p2, Landroid/os/Handler;

    if-eqz p2, :cond_7

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public final buildAudioTrack(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->buildAudioTrackConfig()Landroidx/media3/extractor/Ac4Util$Ac4Presentation;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    iget-object p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    .line 2
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->buildAudioTrack(Landroidx/media3/extractor/Ac4Util$Ac4Presentation;Landroidx/media3/common/AudioAttributes;ILandroidx/media3/common/Format;)Landroid/media/AudioTrack;

    move-result-object p0
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzs;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 5
    :cond_0
    throw p1
.end method

.method public final buildAudioTrack(Landroidx/media3/extractor/Ac4Util$Ac4Presentation;Landroidx/media3/common/AudioAttributes;ILandroidx/media3/common/Format;)Landroid/media/AudioTrack;
    .locals 9

    .line 6
    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackProvider:Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->getAudioTrack(Landroidx/media3/extractor/Ac4Util$Ac4Presentation;Landroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 p2, 0x1

    if-ne v1, p2, :cond_0

    return-object p0

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    :catch_0
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v2, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    iget v3, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    iget v4, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    iget-boolean v6, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    const/4 v7, 0x0

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIILandroidx/media3/common/Format;ZLjava/lang/RuntimeException;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v5, p4

    move-object p0, v0

    move-object v8, p0

    .line 11
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v3, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    iget v4, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    move-object v6, v5

    iget v5, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    iget-boolean v7, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIILandroidx/media3/common/Format;ZLjava/lang/RuntimeException;)V

    throw v1
.end method

.method public final configure(Landroidx/media3/common/Format;[I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->maybeStartAudioCapabilitiesReceiver()V

    iget-object v1, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget v3, v2, Landroidx/media3/common/Format;->sampleRate:I

    iget v4, v2, Landroidx/media3/common/Format;->channelCount:I

    iget v5, v2, Landroidx/media3/common/Format;->pcmEncoding:I

    const-string v6, "audio/raw"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-boolean v8, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferAudioTrackPlaybackParams:Z

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_4

    invoke-static {v5}, Landroidx/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result v6

    invoke-static {v6}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    invoke-static {v5}, Landroidx/media3/common/util/Util;->getByteDepth(I)I

    move-result v6

    mul-int/2addr v6, v4

    new-instance v12, Lcom/google/common/collect/ImmutableList$Builder;

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    iget-object v13, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v12, v13}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)V

    iget-object v13, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/core/view/MenuHostHelper;

    iget-object v13, v13, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v13, [Landroidx/media3/common/audio/AudioProcessor;

    array-length v14, v13

    invoke-static {v14, v13}, Lcom/google/common/collect/Maps;->checkElementsNotNull(I[Ljava/lang/Object;)V

    invoke-virtual {v12, v14}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->ensureRoomFor(I)V

    iget-object v15, v12, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget v7, v12, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    invoke-static {v13, v11, v15, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, v12, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/2addr v7, v14

    iput v7, v12, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    new-instance v7, Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v12

    invoke-direct {v7, v12}, Landroidx/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    iget-object v12, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v7, v12}, Landroidx/media3/common/audio/AudioProcessingPipeline;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    :cond_0
    iget v12, v2, Landroidx/media3/common/Format;->encoderDelay:I

    iget v13, v2, Landroidx/media3/common/Format;->encoderPadding:I

    iget-object v14, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    iput v12, v14, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->trimStartFrames:I

    iput v13, v14, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->trimEndFrames:I

    iget-object v12, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->channelMappingAudioProcessor:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    move-object/from16 v13, p2

    iput-object v13, v12, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    new-instance v12, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-direct {v12, v3, v4, v5}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    :try_start_0
    iget-object v3, v7, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    sget-object v4, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-virtual {v12, v4}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v5, v12}, Landroidx/media3/common/audio/AudioProcessor;->configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object v13

    invoke-interface {v5}, Landroidx/media3/common/audio/AudioProcessor;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-virtual {v13, v5}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Landroidx/media3/common/util/Log;->checkState(Z)V
    :try_end_0
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v13

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget v3, v12, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget v4, v12, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    iget v5, v12, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    invoke-static {v3}, Landroidx/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v12

    invoke-static {v4}, Landroidx/media3/common/util/Util;->getByteDepth(I)I

    move-result v13

    mul-int/2addr v13, v3

    move v3, v8

    move v8, v4

    move v4, v3

    move v3, v6

    move v14, v11

    move v6, v5

    move v5, v12

    move v12, v14

    goto/16 :goto_2

    :cond_3
    :try_start_1
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, v12}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw v0
    :try_end_1
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;Landroidx/media3/common/Format;)V

    throw v1

    :cond_4
    new-instance v7, Landroidx/media3/common/audio/AudioProcessingPipeline;

    sget-object v5, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {v7, v5}, Landroidx/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    iget v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    if-eqz v5, :cond_5

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatOffloadSupport(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object v5

    goto :goto_1

    :cond_5
    sget-object v5, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    :goto_1
    iget v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    if-eqz v6, :cond_6

    iget-boolean v6, v5, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isFormatSupported:Z

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v2, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v6}, Landroidx/media3/common/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v4}, Landroidx/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v12

    iget-boolean v4, v5, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isGaplessSupported:Z

    move v8, v6

    move v14, v9

    move v13, v10

    move v5, v12

    move v6, v3

    move v12, v4

    move v4, v14

    move v3, v13

    goto :goto_2

    :cond_6
    iget-object v4, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v4, v2, v5}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getEncodingAndChannelConfigForPassthrough(Landroidx/media3/common/Format;Landroidx/media3/common/AudioAttributes;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_18

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move v6, v3

    move v4, v8

    move v3, v10

    move v13, v3

    const/4 v14, 0x2

    move v8, v5

    move v5, v12

    move v12, v11

    :goto_2
    const-string v15, ") for: "

    if-eqz v8, :cond_17

    if-eqz v5, :cond_16

    iget v15, v2, Landroidx/media3/common/Format;->bitrate:I

    const-string v11, "audio/vnd.dts.hd;profile=lbr"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-ne v15, v10, :cond_7

    const v15, 0xbb800

    :cond_7
    invoke-static {v6, v5, v8}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    const/4 v11, -0x2

    if-eq v1, v11, :cond_8

    move v11, v9

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    :goto_3
    invoke-static {v11}, Landroidx/media3/common/util/Log;->checkState(Z)V

    if-eq v13, v10, :cond_9

    move v11, v13

    goto :goto_4

    :cond_9
    move v11, v9

    :goto_4
    if-eqz v4, :cond_a

    const-wide/high16 v17, 0x4020000000000000L    # 8.0

    goto :goto_5

    :cond_a
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    :goto_5
    iget-object v10, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackBufferSizeProvider:Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v20, 0xf4240

    if-eqz v14, :cond_14

    if-eq v14, v9, :cond_13

    move/from16 v22, v9

    const/4 v9, 0x2

    if-ne v14, v9, :cond_12

    const/4 v9, 0x5

    const/16 v10, 0x8

    if-ne v8, v9, :cond_b

    const v9, 0x7a120

    :goto_6
    move/from16 v16, v10

    :goto_7
    const/4 v10, -0x1

    goto :goto_8

    :cond_b
    if-ne v8, v10, :cond_c

    const v9, 0xf4240

    goto :goto_6

    :cond_c
    move/from16 v16, v10

    const v9, 0x3d090

    goto :goto_7

    :goto_8
    if-eq v15, v10, :cond_11

    sget-object v10, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 v19, v15, 0x8

    mul-int v23, v16, v19

    sub-int v23, v15, v23

    if-nez v23, :cond_d

    goto :goto_a

    :cond_d
    xor-int/lit8 v15, v15, 0x8

    shr-int/lit8 v15, v15, 0x1f

    or-int/lit8 v15, v15, 0x1

    sget-object v24, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v24, v10

    packed-switch v10, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    sub-int v16, v16, v10

    sub-int v10, v10, v16

    if-nez v10, :cond_e

    sget-object v10, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    sget-object v10, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    goto :goto_a

    :cond_e
    if-lez v10, :cond_f

    goto :goto_9

    :pswitch_1
    if-lez v15, :cond_f

    goto :goto_9

    :pswitch_2
    if-gez v15, :cond_f

    :goto_9
    :pswitch_3
    add-int v19, v19, v15

    goto :goto_a

    :pswitch_4
    if-nez v23, :cond_10

    :cond_f
    :goto_a
    :pswitch_5
    move/from16 v16, v3

    move/from16 v10, v19

    goto :goto_b

    :cond_10
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-static {v8}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result v19

    goto :goto_a

    :goto_b
    int-to-long v2, v9

    int-to-long v9, v10

    mul-long/2addr v2, v9

    div-long v2, v2, v20

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v2

    :goto_c
    move/from16 p2, v4

    goto :goto_d

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_13
    move/from16 v16, v3

    move/from16 v22, v9

    invoke-static {v8}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result v2

    const v3, 0x2faf080

    int-to-long v9, v3

    int-to-long v2, v2

    mul-long/2addr v9, v2

    div-long v9, v9, v20

    invoke-static {v9, v10}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v2

    goto :goto_c

    :cond_14
    move/from16 v16, v3

    move/from16 v22, v9

    mul-int/lit8 v2, v1, 0x4

    const v3, 0x3d090

    int-to-long v9, v3

    move/from16 p2, v4

    int-to-long v3, v6

    mul-long/2addr v9, v3

    move-wide/from16 v23, v3

    int-to-long v3, v11

    mul-long/2addr v9, v3

    div-long v9, v9, v20

    invoke-static {v9, v10}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v9

    const v10, 0xb71b0

    move-wide/from16 v25, v3

    int-to-long v3, v10

    mul-long v3, v3, v23

    mul-long v3, v3, v25

    div-long v3, v3, v20

    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v3

    invoke-static {v2, v9, v3}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v2

    :goto_d
    int-to-double v2, v2

    mul-double v2, v2, v17

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v11

    mul-int v9, v1, v11

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    new-instance v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    move-object v10, v7

    move v7, v5

    move v5, v13

    iget-boolean v13, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    move-object/from16 v2, p1

    move/from16 v11, p2

    move v4, v14

    move/from16 v3, v16

    invoke-direct/range {v1 .. v13}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Landroidx/media3/common/Format;IIIIIIILandroidx/media3/common/audio/AudioProcessingPipeline;ZZZ)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v2

    if-eqz v2, :cond_15

    iput-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    return-void

    :cond_15
    iput-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    return-void

    :cond_16
    move v4, v14

    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid output channel config (mode="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;)V

    throw v0

    :cond_17
    move v4, v14

    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid output encoding (mode="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;)V

    throw v0

    :cond_18
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to configure passthrough for: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final drainOutputBuffer(J)V
    .locals 12

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v1, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    if-lez v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    goto/16 :goto_7

    :cond_4
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_d

    cmp-long v1, p1, v10

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, p1, v4

    if-nez v1, :cond_6

    iget-wide p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->lastTunnelingAvSyncPresentationTimeUs:J

    goto :goto_3

    :cond_6
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->lastTunnelingAvSyncPresentationTimeUs:J

    :goto_3
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v7, 0x1a

    const-wide/16 v8, 0x3e8

    if-lt v1, v7, :cond_7

    const/4 v7, 0x1

    mul-long/2addr v8, p1

    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p1

    goto :goto_4

    :cond_7
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_8

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const v7, 0x55550001

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_8
    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    if-nez v1, :cond_9

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v7, 0x4

    invoke-virtual {v1, v7, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v7, 0x8

    mul-long/2addr p1, v8

    invoke-virtual {v1, v7, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    :cond_9
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-lez p1, :cond_b

    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p2, p1, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    if-gez p2, :cond_a

    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    move p1, p2

    goto :goto_4

    :cond_a
    if-ge p2, p1, :cond_b

    move p1, v2

    goto :goto_4

    :cond_b
    invoke-virtual {v4, v5, v6, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    if-gez p1, :cond_c

    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    goto :goto_4

    :cond_c
    iget p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    goto :goto_4

    :cond_d
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v6, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    const-wide/16 v4, 0x0

    if-gez p1, :cond_15

    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p2, v1, :cond_e

    const/4 p2, -0x6

    if-eq p1, p2, :cond_f

    :cond_e
    const/16 p2, -0x20

    if-ne p1, p2, :cond_12

    :cond_f
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v6

    cmp-long p2, v6, v4

    if-lez p2, :cond_11

    :cond_10
    :goto_5
    move v2, v3

    goto :goto_6

    :cond_11
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget p2, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-ne p2, v3, :cond_10

    iput-boolean v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    goto :goto_5

    :cond_12
    :goto_6
    new-instance p2, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    invoke-direct {p2, p1, v1, v2}, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;-><init>(ILandroidx/media3/common/Format;Z)V

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    if-eqz p1, :cond_13

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/zzs;->onAudioSinkError(Ljava/lang/Exception;)V

    :cond_13
    iget-boolean p1, p2, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->isRecoverable:Z

    if-nez p1, :cond_14

    invoke-virtual {v0, p2}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V

    return-void

    :cond_14
    sget-object p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    throw p2

    :cond_15
    const/4 p2, 0x0

    iput-object p2, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    iput-wide v10, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    iput-wide v10, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_16

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    :cond_16
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    if-eqz v0, :cond_17

    if-ge p1, v6, :cond_17

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    if-nez v1, :cond_17

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->wakeupListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;

    if-eqz v0, :cond_17

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iput-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->requestForRendererSleep:Z

    :cond_17
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v0, :cond_18

    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    int-to-long v7, p1

    add-long/2addr v4, v7

    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    :cond_18
    if-ne p1, v6, :cond_1b

    if-eqz v0, :cond_1a

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-ne p1, v0, :cond_19

    move v2, v3

    :cond_19
    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    iget p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v2, p1

    iget p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    :cond_1a
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    :cond_1b
    :goto_7
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final drainToEndOfStream()Z
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainOutputBuffer(J)V

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->inputEnded:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v4, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->inputEnded:Z

    iget-object v0, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v0}, Landroidx/media3/common/audio/AudioProcessor;->queueEndOfStream()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->processBuffers(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    :goto_1
    return v4

    :cond_4
    return v3
.end method

.method public final flush()V
    .locals 11

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    new-instance v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    iput-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledOffloadOnPresentationEnded:Z

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->flush()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v5, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;

    invoke-virtual {v4, v5}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->buildAudioTrackConfig()Landroidx/media3/extractor/Ac4Util$Ac4Presentation;

    move-result-object v8

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_2

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->resetSyncParams()V

    iput-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    iput-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->onRoutingChangedListener:Landroidx/core/view/MenuHostHelper;

    if-eqz v0, :cond_3

    iget-object v4, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v4, Landroid/media/AudioTrack;

    iget-object v5, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v5}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    iput-object v3, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->onRoutingChangedListener:Landroidx/core/view/MenuHostHelper;

    :cond_3
    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v10, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_4

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_4
    :goto_0
    sget v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x14

    invoke-interface {v0, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

    iput-object v3, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    iput-wide v4, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

    iput-object v3, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    iput-wide v4, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    iput-wide v4, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skippedOutputFrameCountAtLastPosition:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final getFormatOffloadSupport(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 7

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOffloadSupportProvider:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_b

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_2
    invoke-static {v3}, Landroidx/appcompat/app/ActionBar;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v3

    const-string v4, "offloadVariableRateSupported"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "offloadVariableRateSupported=1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1
    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/media3/common/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v3}, Landroidx/media3/common/util/Util;->getApiLevelThatAudioFormatIntroducedAudioEncoding(I)I

    move-result v4

    if-ge v2, v4, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p1, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {p1}, Landroidx/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result p1

    if-nez p1, :cond_5

    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    :cond_5
    :try_start_0
    invoke-static {v1, p1, v3}, Landroidx/media3/common/util/Util;->getAudioFormat(III)Landroid/media/AudioFormat;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1f

    if-lt v2, v1, :cond_8

    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/room/ObservedTableVersions;

    move-result-object v0

    iget-object v0, v0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-static {p1, v0}, Landroid/media/AudioManager;->getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p1

    if-nez p1, :cond_6

    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    :cond_6
    new-instance v0, Landroidx/media3/extractor/mp4/BoxParser$StriData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x20

    if-le v2, v1, :cond_7

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    move v5, v6

    :cond_7
    iput-boolean v6, v0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasLeftEyeView:Z

    iput-boolean v5, v0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasRightEyeView:Z

    iput-boolean p0, v0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->eyeViewsReversed:Z

    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/BoxParser$StriData;->build()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/room/ObservedTableVersions;

    move-result-object v0

    iget-object v0, v0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-static {p1, v0}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    :cond_9
    new-instance p1, Landroidx/media3/extractor/mp4/BoxParser$StriData;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasLeftEyeView:Z

    iput-boolean p0, p1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->eyeViewsReversed:Z

    invoke-virtual {p1}, Landroidx/media3/extractor/mp4/BoxParser$StriData;->build()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object p0

    return-object p0

    :catch_0
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    :cond_a
    :goto_2
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    :cond_b
    :goto_3
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0
.end method

.method public final getFormatSupport(Landroidx/media3/common/Format;)I
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->maybeStartAudioCapabilitiesReceiver()V

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget v1, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroidx/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "DefaultAudioSink"

    const-string p1, "Invalid PCM encoding: "

    invoke-static {p1, v1, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_0
    if-eq v1, v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, p1, p0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getEncodingAndChannelConfigForPassthrough(Landroidx/media3/common/Format;Landroidx/media3/common/AudioAttributes;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_3

    :cond_2
    return v3

    :cond_3
    return v2
.end method

.method public final getSubmittedFrames()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    iget p0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    int-to-long v3, p0

    div-long/2addr v1, v3

    return-wide v1

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    return-wide v0
.end method

.method public final getWrittenFrames()J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    iget p0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    int-to-long v3, p0

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    add-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    div-long/2addr v1, v3

    return-wide v1

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    return-wide v0
.end method

.method public final handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    :goto_1
    invoke-static {v5}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    const/4 v8, 0x3

    iget-object v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    const/4 v10, 0x0

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    move/from16 v21, v7

    goto/16 :goto_1c

    :cond_2
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v11, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v12, v11, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    iget v13, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v13, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v13, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v13, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget v13, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    if-ne v12, v13, :cond_4

    iget-boolean v12, v11, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    iget-boolean v13, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    if-ne v12, v13, :cond_4

    iget-boolean v11, v11, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    iget-boolean v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    if-ne v11, v5, :cond_4

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iput-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iput-object v10, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v5, :cond_6

    invoke-static {v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-boolean v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    if-eqz v5, :cond_6

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    if-ne v5, v8, :cond_3

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    iput-boolean v6, v9, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->expectRawPlaybackHeadReset:Z

    iget-object v5, v9, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    if-eqz v5, :cond_3

    iget-object v5, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    if-eqz v5, :cond_3

    iput-boolean v6, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->expectTimestampFramePositionReset:Z

    :cond_3
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v11, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v11, v11, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    iget v12, v11, Landroidx/media3/common/Format;->encoderDelay:I

    iget v11, v11, Landroidx/media3/common/Format;->encoderPadding:I

    invoke-virtual {v5, v12, v11}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    iput-boolean v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playPendingData()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    :cond_6
    :goto_3
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    :cond_7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v5

    iget-object v11, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

    if-nez v5, :cond_9

    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializeAudioTrack()Z

    move-result v5
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_9

    goto/16 :goto_2

    :catch_0
    move-exception v0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->isRecoverable:Z

    if-nez v1, :cond_8

    invoke-virtual {v11, v0}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V

    return v7

    :cond_8
    throw v0

    :cond_9
    iput-object v10, v11, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v11, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    iput-wide v12, v11, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v12

    if-eqz v5, :cond_b

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    iput-boolean v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    iput-boolean v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setAudioTrackPlaybackParametersV23()V

    :cond_a
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->play()V

    :cond_b
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v11

    iget-object v5, v9, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    iget-boolean v13, v9, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    move-wide/from16 v18, v14

    const/4 v14, 0x2

    if-eqz v13, :cond_d

    if-ne v5, v14, :cond_c

    iput-boolean v7, v9, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    return v7

    :cond_c
    if-ne v5, v6, :cond_d

    invoke-virtual {v9}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v20

    cmp-long v13, v20, v18

    if-nez v13, :cond_d

    goto/16 :goto_2

    :cond_d
    iget-boolean v13, v9, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    invoke-virtual {v9, v11, v12}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result v11

    iput-boolean v11, v9, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    if-eqz v13, :cond_e

    if-nez v11, :cond_e

    if-eq v5, v6, :cond_e

    iget-object v5, v9, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/room/ObservedTableVersions;

    iget v11, v9, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSize:I

    iget-wide v12, v9, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    invoke-static {v12, v13}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v23

    iget-object v5, v5, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-object v12, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    if-eqz v12, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move/from16 v22, v11

    iget-wide v10, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    sub-long v25, v12, v10

    iget-object v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    iget-object v5, v5, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object v5, v5, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/tinder/StateMachine;

    iget-object v10, v5, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v10, Landroid/os/Handler;

    if-eqz v10, :cond_e

    new-instance v20, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;

    const/16 v27, 0x1

    move-object/from16 v21, v5

    invoke-direct/range {v20 .. v27}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;IJJI)V

    move-object/from16 v5, v20

    invoke-virtual {v10, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_38

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v10, :cond_f

    move v5, v6

    goto :goto_4

    :cond_f
    move v5, v7

    :goto_4
    invoke-static {v5}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_19

    :cond_10
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v10, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-eqz v10, :cond_2f

    iget v10, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v10, :cond_2f

    iget v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    const/16 v10, 0x14

    const/4 v11, 0x5

    if-eq v5, v10, :cond_2a

    const/16 v10, 0x1e

    const/4 v12, -0x2

    const/4 v13, -0x1

    if-eq v5, v10, :cond_22

    const/16 v10, 0xa

    packed-switch v5, :pswitch_data_0

    const/16 v14, 0x10

    packed-switch v5, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected audio encoding: "

    invoke-static {v5, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array v5, v14, [B

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v8

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v8, Landroidx/media3/extractor/VorbisBitArray;

    invoke-direct {v8, v14, v5}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    invoke-static {v8}, Landroidx/media3/extractor/AacUtil;->parseAc4SyncframeInfo(Landroidx/media3/extractor/VorbisBitArray;)Lcom/motorola/camera/utility/Error;

    move-result-object v5

    iget v13, v5, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    goto/16 :goto_18

    :cond_11
    :goto_5
    :pswitch_1
    const/16 v13, 0x400

    goto/16 :goto_18

    :pswitch_2
    const/16 v13, 0x200

    goto/16 :goto_18

    :pswitch_3
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v8

    sub-int/2addr v8, v10

    move v10, v5

    :goto_6
    if-gt v10, v8, :cond_14

    add-int/lit8 v11, v10, 0x4

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    move/from16 v21, v14

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v14

    sget-object v15, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v14, v15, :cond_12

    goto :goto_7

    :cond_12
    invoke-static {v11}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v11

    :goto_7
    and-int/2addr v11, v12

    const v14, -0x78d9046

    if-ne v11, v14, :cond_13

    sub-int/2addr v10, v5

    goto :goto_8

    :cond_13
    add-int/lit8 v10, v10, 0x1

    move/from16 v14, v21

    goto :goto_6

    :cond_14
    move/from16 v21, v14

    move v10, v13

    :goto_8
    if-ne v10, v13, :cond_15

    move v13, v7

    goto/16 :goto_18

    :cond_15
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/16 v8, 0xbb

    if-ne v5, v8, :cond_16

    move v5, v6

    goto :goto_9

    :cond_16
    move v5, v7

    :goto_9
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v10

    if-eqz v5, :cond_17

    const/16 v5, 0x9

    goto :goto_a

    :cond_17
    const/16 v5, 0x8

    :goto_a
    add-int/2addr v8, v5

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x7

    const/16 v8, 0x28

    shl-int v5, v8, v5

    mul-int/lit8 v13, v5, 0x10

    goto/16 :goto_18

    :pswitch_4
    const/16 v13, 0x800

    goto/16 :goto_18

    :pswitch_5
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v11, v12, :cond_18

    goto :goto_b

    :cond_18
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    :goto_b
    const/high16 v11, -0x200000

    and-int v12, v5, v11

    if-ne v12, v11, :cond_19

    ushr-int/lit8 v11, v5, 0x13

    and-int/2addr v11, v8

    if-ne v11, v6, :cond_1a

    :cond_19
    :goto_c
    move v5, v13

    goto :goto_d

    :cond_1a
    ushr-int/lit8 v12, v5, 0x11

    and-int/2addr v12, v8

    if-nez v12, :cond_1b

    goto :goto_c

    :cond_1b
    ushr-int/lit8 v15, v5, 0xc

    const/16 v7, 0xf

    and-int/2addr v15, v7

    ushr-int/2addr v5, v10

    and-int/2addr v5, v8

    if-eqz v15, :cond_19

    if-eq v15, v7, :cond_19

    if-ne v5, v8, :cond_1c

    goto :goto_c

    :cond_1c
    const/16 v5, 0x480

    if-eq v12, v6, :cond_1e

    if-eq v12, v14, :cond_20

    if-ne v12, v8, :cond_1d

    const/16 v5, 0x180

    goto :goto_d

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1e
    if-ne v11, v8, :cond_1f

    goto :goto_d

    :cond_1f
    const/16 v5, 0x240

    :cond_20
    :goto_d
    if-eq v5, v13, :cond_21

    move v13, v5

    goto/16 :goto_18

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_22
    :pswitch_6
    move v5, v7

    goto :goto_f

    :pswitch_7
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v11

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xf8

    shr-int/2addr v5, v8

    if-le v5, v10, :cond_24

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v5, v5, 0x6

    if-ne v5, v8, :cond_23

    goto :goto_e

    :cond_23
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v8, v5, 0x4

    :goto_e
    sget-object v5, Landroidx/media3/extractor/AacUtil;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v5, v5, v8

    mul-int/lit16 v13, v5, 0x100

    goto/16 :goto_18

    :cond_24
    const/16 v13, 0x600

    goto/16 :goto_18

    :goto_f
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    const v8, -0xde4bec0

    if-eq v7, v8, :cond_11

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    const v8, -0x17bd3b8f

    if-ne v7, v8, :cond_25

    goto/16 :goto_5

    :cond_25
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    const v5, 0x25205864

    if-ne v7, v5, :cond_26

    const/16 v13, 0x1000

    goto/16 :goto_18

    :cond_26
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-eq v7, v12, :cond_29

    if-eq v7, v13, :cond_28

    const/16 v8, 0x1f

    if-eq v7, v8, :cond_27

    add-int/lit8 v7, v5, 0x4

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v6

    shl-int/lit8 v7, v7, 0x6

    add-int/2addr v5, v11

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_10
    and-int/lit16 v5, v5, 0xfc

    :goto_11
    shr-int/2addr v5, v14

    or-int/2addr v5, v7

    goto :goto_13

    :cond_27
    add-int/lit8 v7, v5, 0x5

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_12
    and-int/lit8 v5, v5, 0x3c

    goto :goto_11

    :cond_28
    add-int/lit8 v7, v5, 0x4

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_12

    :cond_29
    add-int/lit8 v7, v5, 0x5

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v6

    shl-int/lit8 v7, v7, 0x6

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_10

    :goto_13
    add-int/2addr v5, v6

    mul-int/lit8 v13, v5, 0x20

    goto :goto_18

    :cond_2a
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/2addr v5, v14

    if-nez v5, :cond_2b

    const/4 v5, 0x0

    goto :goto_16

    :cond_2b
    const/16 v5, 0x1a

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    const/16 v7, 0x1c

    move v10, v7

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v5, :cond_2c

    add-int/lit8 v11, v8, 0x1b

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_2c
    add-int/lit8 v5, v10, 0x1a

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v5, :cond_2d

    add-int/lit8 v11, v10, 0x1b

    add-int/2addr v11, v8

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    add-int/2addr v7, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_2d
    add-int v5, v10, v7

    :goto_16
    add-int/lit8 v7, v5, 0x1a

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v7, v7, 0x1b

    add-int/2addr v7, v5

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v8

    sub-int/2addr v8, v7

    if-le v8, v6, :cond_2e

    add-int/2addr v7, v6

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    goto :goto_17

    :cond_2e
    const/4 v7, 0x0

    :goto_17
    invoke-static {v5, v7}, Landroidx/media3/extractor/AacUtil;->getPacketDurationUs(BB)J

    move-result-wide v7

    const-wide/32 v10, 0xbb80

    mul-long/2addr v7, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v7, v10

    long-to-int v13, v7

    :goto_18
    iput v13, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v13, :cond_2f

    :goto_19
    return v6

    :cond_2f
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    if-eqz v5, :cond_32

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_31

    :cond_30
    :goto_1a
    const/16 v21, 0x0

    goto/16 :goto_1c

    :cond_31
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    const/4 v15, 0x0

    iput-object v15, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    :cond_32
    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v10

    iget-object v12, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    iget-wide v12, v12, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    sub-long/2addr v10, v12

    iget-object v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    iget v5, v5, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {v5, v10, v11}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(IJ)J

    move-result-wide v10

    add-long/2addr v10, v7

    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    if-nez v5, :cond_34

    sub-long v7, v10, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v12, 0x30d40

    cmp-long v5, v7, v12

    if-lez v5, :cond_34

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    if-eqz v5, :cond_33

    new-instance v7, Landroidx/window/core/WindowStrictModeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "Unexpected audio track timestamp discontinuity: expected "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", got "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/google/android/gms/tasks/zzs;->onAudioSinkError(Ljava/lang/Exception;)V

    :cond_33
    iput-boolean v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    :cond_34
    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    if-eqz v5, :cond_36

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_35

    goto :goto_1a

    :cond_35
    sub-long v7, v2, v10

    iget-wide v10, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    add-long/2addr v10, v7

    iput-wide v10, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    const/4 v5, 0x0

    iput-boolean v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    if-eqz v5, :cond_36

    cmp-long v7, v7, v18

    if-eqz v7, :cond_36

    iget-object v5, v5, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iput-boolean v6, v5, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    :cond_36
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v5, :cond_37

    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v7, v10

    iput-wide v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    goto :goto_1b

    :cond_37
    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    iget v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v10, v5

    int-to-long v12, v4

    mul-long/2addr v10, v12

    add-long/2addr v10, v7

    iput-wide v10, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    :goto_1b
    iput-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    iput v4, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    :cond_38
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->processBuffers(J)V

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_39

    const/4 v15, 0x0

    iput-object v15, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    iput v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    return v6

    :cond_39
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    iget-wide v3, v9, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    cmp-long v3, v3, v16

    if-eqz v3, :cond_30

    cmp-long v1, v1, v18

    if-lez v1, :cond_30

    iget-object v1, v9, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v9, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_30

    const-string v1, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    return v6

    :goto_1c
    return v21

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final hasPendingData()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledOffloadOnPresentationEnded:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final initializeAudioTrack()Z
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

    iget-object v2, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    if-lez v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_3

    :goto_1
    return v3

    :cond_3
    :goto_2
    :try_start_1
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->buildAudioTrack(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const v6, 0xf4240

    if-le v5, v6, :cond_f

    new-instance v7, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v8, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    iget v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    iget v10, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    iget v11, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget v12, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v13, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v14, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    iget-boolean v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    iget-boolean v15, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->tunneling:Z

    move/from16 v18, v15

    const v15, 0xf4240

    move/from16 v19, v0

    move-object/from16 v16, v5

    move/from16 v17, v6

    invoke-direct/range {v7 .. v19}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Landroidx/media3/common/Format;IIIIIIILandroidx/media3/common/audio/AudioProcessingPipeline;ZZZ)V

    :try_start_2
    invoke-virtual {v1, v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->buildAudioTrack(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;
    :try_end_2
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    iput-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Landroidx/core/view/MenuHostHelper;

    if-nez v2, :cond_4

    new-instance v2, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    new-instance v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;

    invoke-direct {v5, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;-><init>(Landroidx/core/view/MenuHostHelper;)V

    iput-object v5, v2, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Landroidx/core/view/MenuHostHelper;

    :cond_4
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Landroidx/core/view/MenuHostHelper;

    iget-object v5, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v5, Landroid/os/Handler;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v2, v2, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;

    invoke-virtual {v0, v6, v2}, Landroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    iget v5, v0, Landroidx/media3/common/Format;->encoderDelay:I

    iget v0, v0, Landroidx/media3/common/Format;->encoderPadding:I

    invoke-virtual {v2, v5, v0}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    :cond_5
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_6

    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    if-eqz v2, :cond_6

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/analytics/PlayerId;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v2

    sget-object v6, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v2, v6}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5, v2}, Landroid/media/AudioTrack;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    :cond_6
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    iput v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v7, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    move v7, v4

    goto :goto_4

    :cond_7
    move v7, v3

    :goto_4
    iget v8, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v9, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget v6, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    iput-object v5, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    iput v6, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSize:I

    new-instance v10, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-direct {v10, v5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;-><init>(Landroid/media/AudioTrack;)V

    iput-object v10, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v5

    iput v5, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    const/16 v5, 0x17

    if-eqz v7, :cond_9

    if-ge v0, v5, :cond_9

    const/4 v7, 0x5

    if-eq v8, v7, :cond_8

    const/4 v7, 0x6

    if-ne v8, v7, :cond_9

    :cond_8
    move v7, v4

    goto :goto_5

    :cond_9
    move v7, v3

    :goto_5
    iput-boolean v7, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    invoke-static {v8}, Landroidx/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result v7

    iput-boolean v7, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v7, :cond_a

    div-int/2addr v6, v9

    int-to-long v6, v6

    iget v8, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v8, v6, v7}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(IJ)J

    move-result-wide v6

    goto :goto_6

    :cond_a
    move-wide v6, v10

    :goto_6
    iput-wide v6, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    const-wide/16 v6, 0x0

    iput-wide v6, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    iput-wide v6, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    iput-boolean v3, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->expectRawPlaybackHeadReset:Z

    iput-wide v6, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->sumRawPlaybackHeadPosition:J

    iput-wide v6, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    iput-boolean v3, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    iput-wide v10, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    iput-wide v10, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    iput-wide v6, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    iput-wide v6, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v3, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    invoke-virtual {v2, v3}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_b
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Lcom/google/android/gms/tasks/zzad;

    if-eqz v2, :cond_c

    if-lt v0, v5, :cond_c

    iget-object v3, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, v2, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v3, v2}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v2, :cond_c

    iget-object v3, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Lcom/google/android/gms/tasks/zzad;

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v3, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->setRoutedDevice(Landroid/media/AudioDeviceInfo;)V

    :cond_c
    const/16 v2, 0x18

    if-lt v0, v2, :cond_d

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v0, :cond_d

    new-instance v2, Landroidx/core/view/MenuHostHelper;

    iget-object v3, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0;-><init>(Landroidx/core/view/MenuHostHelper;)V

    iput-object v0, v2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v5, v2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v5, v0}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->onRoutingChangedListener:Landroidx/core/view/MenuHostHelper;

    :cond_d
    iput-boolean v4, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    if-eqz v0, :cond_e

    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->buildAudioTrackConfig()Landroidx/media3/extractor/Ac4Util$Ac4Presentation;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/tinder/StateMachine;

    iget-object v2, v0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    if-eqz v2, :cond_e

    new-instance v3, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v3, v0, v1, v5}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/tinder/StateMachine;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return v4

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-ne v0, v4, :cond_10

    iput-boolean v4, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    :cond_10
    throw v2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final isAudioTrackInitialized()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final maybeStartAudioCapabilitiesReceiver()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackLooper:Landroid/os/Looper;

    new-instance v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    new-instance v1, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Lcom/google/android/gms/tasks/zzad;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->context:Landroid/content/Context;

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;-><init>(Landroid/content/Context;Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;Landroidx/media3/common/AudioAttributes;Lcom/google/android/gms/tasks/zzad;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->registered:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->registered:Z

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Landroid/content/ContentResolver;

    iget-object v3, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->settingUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    iget-object v4, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    if-lt v1, v2, :cond_2

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioDeviceCallback:Lcom/motorola/camera/HeadsetReceiver$1;

    if-eqz v1, :cond_2

    invoke-static {v4}, Landroidx/appcompat/app/ActionBar;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->hdmiAudioPlugBroadcastReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v4, v5, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lcom/google/android/gms/tasks/zzad;

    invoke-static {v4, v1, v2, v3}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getCapabilitiesInternal(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Lcom/google/android/gms/tasks/zzad;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    :cond_3
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final play()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    iget-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    :cond_0
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    :cond_1
    return-void
.end method

.method public final playPendingData()V
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    iget-object v3, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    iput-wide v0, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledOffloadOnPresentationEnded:Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    :cond_1
    return-void
.end method

.method public final processBuffers(J)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainOutputBuffer(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setOutputBuffer(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainOutputBuffer(J)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isEnded()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    sget-object v1, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->processData(Ljava/nio/ByteBuffer;)V

    iget-object v1, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v0

    aget-object v0, v1, v0

    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setOutputBuffer(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainOutputBuffer(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->inputEnded:Z

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->processData(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method public final reset()V
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/RegularImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/ImmutableList$Itr;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Itr;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Itr;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v2}, Landroidx/media3/common/audio/AudioProcessor;->reset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/ImmutableList$Itr;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Itr;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Itr;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v2}, Landroidx/media3/common/audio/AudioProcessor;->reset()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    move v3, v1

    :goto_2
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v4}, Landroidx/media3/common/audio/AudioProcessor;->flush()V

    invoke-interface {v4}, Landroidx/media3/common/audio/AudioProcessor;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-array v2, v1, [Ljava/nio/ByteBuffer;

    iput-object v2, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    sget-object v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-boolean v1, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->inputEnded:Z

    :cond_3
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    return-void
.end method

.method public final setAudioTrackPlaybackParametersV23()V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->pitch:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultAudioSink"

    const-string v2, "Failed to set playback params"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->resetSyncParams()V

    :cond_1
    return-void
.end method

.method public final setOutputBuffer(Ljava/nio/ByteBuffer;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v3

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    int-to-long v5, v1

    const-wide/32 v7, 0xf4240

    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static/range {v3 .. v9}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    :goto_1
    move-object/from16 v3, p1

    goto/16 :goto_8

    :cond_3
    iget-object v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v7, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v6, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    long-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_17

    if-ge v2, v1, :cond_17

    const/high16 v12, 0x50000000

    const/high16 v13, 0x10000000

    const/16 v14, 0x16

    const/16 v15, 0x15

    const/high16 v16, 0x4f000000

    const/4 v9, 0x4

    const/high16 v17, -0x31000000

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v7, v11, :cond_d

    if-eq v7, v10, :cond_c

    if-eq v7, v9, :cond_a

    if-eq v7, v15, :cond_9

    if-eq v7, v14, :cond_8

    if-eq v7, v13, :cond_7

    if-eq v7, v12, :cond_6

    const/high16 v12, 0x60000000

    if-ne v7, v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    :goto_3
    or-int/2addr v12, v13

    goto/16 :goto_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    goto :goto_3

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    goto :goto_3

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    :goto_4
    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    goto :goto_3

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    goto :goto_4

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    const/high16 v13, -0x40800000    # -1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v12, v13, v14}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_b

    neg-float v12, v12

    mul-float v12, v12, v17

    :goto_5
    float-to-int v12, v12

    goto :goto_6

    :cond_b
    mul-float v12, v12, v16

    goto :goto_5

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    goto :goto_6

    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    goto :goto_4

    :goto_6
    int-to-long v12, v12

    int-to-long v9, v2

    mul-long/2addr v12, v9

    div-long/2addr v12, v4

    long-to-int v9, v12

    if-eq v7, v11, :cond_16

    const/4 v10, 0x3

    if-eq v7, v10, :cond_15

    const/4 v14, 0x4

    if-eq v7, v14, :cond_13

    if-eq v7, v15, :cond_12

    const/16 v10, 0x16

    if-eq v7, v10, :cond_11

    const/high16 v10, 0x10000000

    if-eq v7, v10, :cond_10

    const/high16 v10, 0x50000000

    if-eq v7, v10, :cond_f

    const/high16 v12, 0x60000000

    if-ne v7, v12, :cond_e

    shr-int/lit8 v10, v9, 0x18

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_7

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_f
    shr-int/lit8 v10, v9, 0x18

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_10
    shr-int/lit8 v10, v9, 0x18

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_11
    int-to-byte v10, v9

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_12
    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_13
    if-gez v9, :cond_14

    int-to-float v9, v9

    neg-float v9, v9

    div-float v9, v9, v17

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_14
    int-to-float v9, v9

    div-float v9, v9, v16

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_15
    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_16
    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v9

    add-int v10, v8, v6

    if-ne v9, v10, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    goto/16 :goto_2

    :cond_17
    move-object/from16 v1, p1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_8
    iput-object v3, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final useAudioTrackPlaybackParams()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    if-eqz p0, :cond_0

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
