.class public final Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;
.super Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# instance fields
.field public allowPositionDiscontinuity:Z

.field public final audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

.field public audioSinkNeedsReset:Z

.field public codecMaxInputSize:I

.field public codecNeedsDiscardChannelsWorkaround:Z

.field public codecNeedsVorbisToAndroidChannelMappingWorkaround:Z

.field public final context:Landroid/content/Context;

.field public currentPositionUs:J

.field public decryptOnlyCodecFormat:Landroidx/media3/common/Format;

.field public final eventDispatcher:Lcom/tinder/StateMachine;

.field public hasPendingReportedSkippedSilence:Z

.field public inputFormat:Landroidx/media3/common/Format;

.field public final loudnessCodecController:Landroidx/core/view/MenuHostHelper;

.field public rendererPriority:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V
    .locals 3

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const v2, 0x472c4400    # 44100.0f

    invoke-direct {p0, v1, p2, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;-><init>(ILandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;F)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->context:Landroid/content/Context;

    iput-object p5, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->loudnessCodecController:Landroidx/core/view/MenuHostHelper;

    const/16 p1, -0x3e8

    iput p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->rendererPriority:I

    new-instance p1, Lcom/tinder/StateMachine;

    const/16 p2, 0xa

    invoke-direct {p1, p2, p3, p4}, Lcom/tinder/StateMachine;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/tinder/StateMachine;

    new-instance p1, Lcom/google/android/gms/tasks/zzs;

    const/16 p2, 0x11

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/tasks/zzs;-><init>(ILjava/lang/Object;)V

    iput-object p1, p5, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    return-void
.end method


# virtual methods
.method public final canReuseCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 8

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->canReuseCodec(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v0

    iget v1, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/gms/tasks/zzad;

    if-nez v2, :cond_0

    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->shouldUseBypass(Landroidx/media3/common/Format;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x8000

    or-int/2addr v1, v2

    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result v2

    iget p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    if-le v2, p0, :cond_1

    or-int/lit8 v1, v1, 0x40

    :cond_1
    move v7, v1

    new-instance v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v3, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_2

    const/4 p0, 0x0

    :goto_0
    move v6, p0

    move-object v4, p2

    move-object v5, p3

    goto :goto_1

    :cond_2
    iget p0, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    goto :goto_0

    :goto_1
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v2
.end method

.method public final getAudioOffloadSupport(Landroidx/media3/common/Format;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatOffloadSupport(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object p0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isFormatSupported:Z

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isGaplessSupported:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x600

    goto :goto_0

    :cond_1
    const/16 p1, 0x200

    :goto_0
    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isSpeedChangeSupported:Z

    if-eqz p0, :cond_2

    or-int/lit16 p0, p1, 0x800

    return p0

    :cond_2
    return p1
.end method

.method public final getCodecMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I
    .locals 1

    const-string v0, "OMX.google.raw.decoder"

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/media3/common/util/Util;->isTv(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    iget p0, p2, Landroidx/media3/common/Format;->maxInputSize:I

    return p0
.end method

.method public final getCodecOperatingRateV23(F[Landroidx/media3/common/Format;)F
    .locals 4

    array-length p0, p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v3, p2, v1

    iget v3, v3, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v3, v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_2
    int-to-float p0, v2

    mul-float/2addr p0, p1

    return p0
.end method

.method public final getDecoderInfos(Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;Landroidx/media3/common/Format;Z)Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatSupport(Landroidx/media3/common/Format;)I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string p0, "audio/raw"

    invoke-static {p0, v0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p1, p2, p3, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosSoftMatch(Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;Landroidx/media3/common/Format;ZZ)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    :goto_1
    sget-object p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 p3, 0xb

    invoke-direct {p0, p3, p2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p3, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public final getMediaClock()Landroidx/media3/exoplayer/MediaClock;
    .locals 0

    return-object p0
.end method

.method public final getMediaCodecConfiguration(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Lcom/motorola/camera/fsm/Fsm;
    .locals 13

    move/from16 v2, p4

    iget-object v4, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamFormats:[Landroidx/media3/common/Format;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p2}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result v5

    iget-object v6, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    array-length v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    array-length v7, v4

    move v10, v8

    :goto_0
    if-ge v10, v7, :cond_2

    aget-object v11, v4, v10

    invoke-virtual {p1, p2, v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->canReuseCodec(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v12

    iget v12, v12, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-eqz v12, :cond_1

    invoke-virtual {p0, p1, v11}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput v5, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_4

    const-string v7, "OMX.SEC.aac.dec"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "samsung"

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v10, "zeroflte"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "herolte"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "heroqlte"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move v7, v9

    goto :goto_2

    :cond_4
    move v7, v8

    :goto_2
    iput-boolean v7, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    const-string v7, "OMX.google.opus.decoder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "c2.android.opus.decoder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "OMX.google.vorbis.decoder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "c2.android.vorbis.decoder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    move v6, v8

    goto :goto_4

    :cond_6
    :goto_3
    move v6, v9

    :goto_4
    iput-boolean v6, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->codecNeedsVorbisToAndroidChannelMappingWorkaround:Z

    iget-object v6, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    iget v7, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    new-instance v10, Landroid/media/MediaFormat;

    invoke-direct {v10}, Landroid/media/MediaFormat;-><init>()V

    const-string v11, "mime"

    invoke-virtual {v10, v11, v6}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p2, Landroidx/media3/common/Format;->channelCount:I

    iget-object v11, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v12, "channel-count"

    invoke-virtual {v10, v12, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v6, p2, Landroidx/media3/common/Format;->sampleRate:I

    const-string/jumbo v12, "sample-rate"

    invoke-virtual {v10, v12, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v12, p2, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-static {v10, v12}, Landroidx/media3/common/util/Log;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string v12, "max-input-size"

    invoke-static {v10, v12, v7}, Landroidx/media3/common/util/Log;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/16 v7, 0x17

    if-lt v4, v7, :cond_8

    const-string/jumbo v12, "priority"

    invoke-virtual {v10, v12, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v12, v2, v12

    if-eqz v12, :cond_8

    if-ne v4, v7, :cond_7

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v12, "ZTE B2017G"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "AXON 7 mini"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    const-string v7, "operating-rate"

    invoke-virtual {v10, v7, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_8
    :goto_5
    const/16 v2, 0x1c

    if-gt v4, v2, :cond_9

    const-string v2, "audio/ac4"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "ac4-is-sync"

    invoke-virtual {v10, v2, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_9
    const-string v2, "audio/raw"

    if-lt v4, v5, :cond_a

    iget v5, p2, Landroidx/media3/common/Format;->channelCount:I

    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v5, v7, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v6, v7, Landroidx/media3/common/Format$Builder;->sampleRate:I

    const/4 v5, 0x4

    iput v5, v7, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    new-instance v6, Landroidx/media3/common/Format;

    invoke-direct {v6, v7}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget-object v7, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-virtual {v7, v6}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatSupport(Landroidx/media3/common/Format;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    const-string/jumbo v6, "pcm-encoding"

    invoke-virtual {v10, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a
    const/16 v5, 0x20

    if-lt v4, v5, :cond_b

    const-string v5, "max-output-channel-count"

    const/16 v6, 0x63

    invoke-virtual {v10, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_b
    const/16 v5, 0x23

    if-lt v4, v5, :cond_c

    iget v4, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->rendererPriority:I

    neg-int v4, v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const-string v5, "importance"

    invoke-virtual {v10, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_c
    iget-object v4, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object v2, p2

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    :goto_6
    iput-object v2, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->decryptOnlyCodecFormat:Landroidx/media3/common/Format;

    new-instance v2, Lcom/motorola/camera/fsm/Fsm;

    const/4 v4, 0x0

    const/4 v7, 0x4

    iget-object v6, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->loudnessCodecController:Landroidx/core/view/MenuHostHelper;

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object v0, v2

    move-object v2, v10

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/fsm/Fsm;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaCodecAudioRenderer"

    return-object p0
.end method

.method public final getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public final getPositionUs()J
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->updateCurrentPosition()V

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method public final handleInputBufferSupplementalData(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 4

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->format:Landroidx/media3/common/Format;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/opus"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->format:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/media3/common/Format;->encoderDelay:I

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    const-wide/32 v2, 0xbb80

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    :cond_0
    return-void
.end method

.method public final handleMessage(ILjava/lang/Object;)V
    .locals 8

    const/4 v0, 0x2

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    if-eq p1, v0, :cond_15

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    const/4 v0, 0x6

    if-eq p1, v0, :cond_e

    const/16 v0, 0xc

    const/4 v2, 0x0

    if-eq p1, v0, :cond_a

    const/16 v0, 0x10

    const/4 v3, 0x0

    const/16 v4, 0x23

    if-eq p1, v0, :cond_8

    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_16

    check-cast p2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->wakeupListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    if-eq p2, p1, :cond_2

    iput p1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    :cond_2
    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt p2, v4, :cond_16

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->loudnessCodecController:Landroidx/core/view/MenuHostHelper;

    if-eqz p0, :cond_16

    iget-object p2, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast p2, Landroid/media/LoudnessCodecController;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/media/LoudnessCodecController;->close()V

    iput-object v2, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    :cond_3
    new-instance p2, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$1;

    invoke-direct {p2, p0}, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$1;-><init>(Landroidx/core/view/MenuHostHelper;)V

    sget-object v0, Lcom/google/common/util/concurrent/DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;

    invoke-static {p1, v0, p2}, Landroid/media/LoudnessCodecController;->create(ILjava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)Landroid/media/LoudnessCodecController;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/MediaCodec;

    invoke-virtual {p1, p2}, Landroid/media/LoudnessCodecController;->addMediaCodec(Landroid/media/MediaCodec;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    :goto_1
    move-object v3, p0

    goto :goto_2

    :cond_6
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    goto :goto_1

    :goto_2
    new-instance v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result p0

    if-eqz p0, :cond_7

    iput-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    return-void

    :cond_7
    iput-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    return-void

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->rendererPriority:I

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez p1, :cond_9

    goto/16 :goto_5

    :cond_9
    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt p2, v4, :cond_16

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->rendererPriority:I

    neg-int p0, p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const-string v0, "importance"

    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    return-void

    :cond_a
    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p1, 0x17

    if-lt p0, p1, :cond_16

    check-cast p2, Landroid/media/AudioDeviceInfo;

    if-nez p2, :cond_b

    move-object p0, v2

    goto :goto_3

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/android/gms/tasks/zzad;

    const/16 p1, 0xe

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    :goto_3
    iput-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Lcom/google/android/gms/tasks/zzad;

    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->setRoutedDevice(Landroid/media/AudioDeviceInfo;)V

    :cond_c
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p0, :cond_16

    iget-object p1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Lcom/google/android/gms/tasks/zzad;

    if-nez p1, :cond_d

    goto :goto_4

    :cond_d
    iget-object p1, p1, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroid/media/AudioDeviceInfo;

    :goto_4
    invoke-virtual {p0, v2}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void

    :cond_e
    check-cast p2, Landroidx/media3/common/AuxEffectInfo;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    invoke-virtual {p0, p2}, Landroidx/media3/common/AuxEffectInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_5

    :cond_f
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p0, :cond_10

    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_10
    iput-object p2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    return-void

    :cond_11
    check-cast p2, Landroidx/media3/common/AudioAttributes;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {p0, p2}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_5

    :cond_12
    iput-object p2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-boolean p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-eqz p0, :cond_13

    goto :goto_5

    :cond_13
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz p0, :cond_14

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lcom/google/android/gms/tasks/zzad;

    invoke-static {p1, p2, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getCapabilitiesInternal(Landroid/content/Context;Landroidx/media3/common/AudioAttributes;Lcom/google/android/gms/tasks/zzad;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    :cond_14
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    return-void

    :cond_15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget p1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    cmpl-float p1, p1, p0

    if-eqz p1, :cond_16

    iput p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result p0

    if-eqz p0, :cond_16

    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget p1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_16
    :goto_5
    return-void
.end method

.method public final hasSkippedSilenceSinceLastCall()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->hasPendingReportedSkippedSilence:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->hasPendingReportedSkippedSilence:Z

    return v0
.end method

.method public final isEnded()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->hasPendingData()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isReady()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onCodecError(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/tinder/StateMachine;

    iget-object v0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;-><init>(Lcom/tinder/StateMachine;Ljava/lang/Exception;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onCodecInitialized(JLjava/lang/String;J)V
    .locals 8

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/tinder/StateMachine;

    iget-object p0, v1, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;

    const/4 v7, 0x0

    move-wide v3, p1

    move-object v2, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Ljava/lang/String;JJI)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onCodecReleased(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/tinder/StateMachine;

    iget-object v0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0, p1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onDisabled()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/tinder/StateMachine;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/tinder/StateMachine;->disabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/tinder/StateMachine;->disabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/tinder/StateMachine;->disabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    throw v1

    :catchall_2
    move-exception v1

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, p0}, Lcom/tinder/StateMachine;->disabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    throw v1
.end method

.method public final onEnabled(ZZ)V
    .locals 3

    new-instance p1, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget-object p2, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/tinder/StateMachine;

    iget-object v0, p2, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/tinder/StateMachine;Landroidx/media3/exoplayer/DecoderCounters;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    iget-object p2, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    if-eqz p1, :cond_1

    iget-boolean p1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-boolean p1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    iput-object p0, p1, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Landroidx/media3/common/util/SystemClock;

    return-void
.end method

.method public final onInputFormatChanged(Landroidx/room/concurrent/FileLock;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 4

    iget-object v0, p1, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-super {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/room/concurrent/FileLock;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/tinder/StateMachine;

    iget-object v1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v0, p1, v3}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method

.method public final onOutputFormatChanged(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->decryptOnlyCodecFormat:Landroidx/media3/common/Format;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget v4, p1, Landroidx/media3/common/Format;->channelCount:I

    const-string v5, "audio/raw"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x2

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    goto :goto_0

    :cond_2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v0, v7, :cond_3

    const-string/jumbo v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "v-bits-per-sample"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v6

    :goto_0
    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v0, v7, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    iget v0, p1, Landroidx/media3/common/Format;->encoderDelay:I

    iput v0, v7, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    iget v0, p1, Landroidx/media3/common/Format;->encoderPadding:I

    iput v0, v7, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    iget-object v0, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iput-object v0, v7, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    iget-object v0, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    iput-object v0, v7, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    iput-object v0, v7, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/Format;->labels:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, v7, Landroidx/media3/common/Format$Builder;->labels:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iput-object v0, v7, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iget v0, p1, Landroidx/media3/common/Format;->selectionFlags:I

    iput v0, v7, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    iget p1, p1, Landroidx/media3/common/Format;->roleFlags:I

    iput p1, v7, Landroidx/media3/common/Format$Builder;->roleFlags:I

    const-string p1, "channel-count"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, v7, Landroidx/media3/common/Format$Builder;->channelCount:I

    const-string/jumbo p1, "sample-rate"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, v7, Landroidx/media3/common/Format$Builder;->sampleRate:I

    new-instance p1, Landroidx/media3/common/Format;

    invoke-direct {p1, v7}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget-boolean p2, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    const/4 v0, 0x6

    iget v5, p1, Landroidx/media3/common/Format;->channelCount:I

    if-eqz p2, :cond_5

    if-ne v5, v0, :cond_5

    if-ge v4, v0, :cond_5

    new-array v3, v4, [I

    move p2, v2

    :goto_1
    if-ge p2, v4, :cond_b

    aput p2, v3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    iget-boolean p2, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->codecNeedsVorbisToAndroidChannelMappingWorkaround:Z

    if-eqz p2, :cond_b

    const/4 p2, 0x3

    if-eq v5, p2, :cond_a

    const/4 v4, 0x5

    if-eq v5, v4, :cond_9

    if-eq v5, v0, :cond_8

    const/4 p2, 0x7

    if-eq v5, p2, :cond_7

    const/16 p2, 0x8

    if-eq v5, p2, :cond_6

    goto :goto_2

    :cond_6
    new-array v3, p2, [I

    fill-array-data v3, :array_0

    goto :goto_2

    :cond_7
    new-array v3, p2, [I

    fill-array-data v3, :array_1

    goto :goto_2

    :cond_8
    new-array v3, v0, [I

    fill-array-data v3, :array_2

    goto :goto_2

    :cond_9
    const/4 v0, 0x4

    filled-new-array {v2, v6, v1, p2, v0}, [I

    move-result-object v3

    goto :goto_2

    :cond_a
    filled-new-array {v2, v6, v1}, [I

    move-result-object v3

    :cond_b
    :goto_2
    :try_start_0
    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x1d

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    if-lt p2, v0, :cond_f

    :try_start_1
    iget-boolean v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Landroidx/media3/exoplayer/BaseRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v5, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    if-eqz v5, :cond_d

    iget-object v5, p0, Landroidx/media3/exoplayer/BaseRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v5, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt p2, v0, :cond_c

    goto :goto_3

    :cond_c
    move v1, v2

    :goto_3
    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput v5, v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_6

    :cond_d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt p2, v0, :cond_e

    goto :goto_4

    :cond_e
    move v1, v2

    :goto_4
    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput v2, v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    :cond_f
    :goto_5
    invoke-virtual {v4, p1, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configure(Landroidx/media3/common/Format;[I)V
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_6
    iget-object p2, p1, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;->format:Landroidx/media3/common/Format;

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x7
        0x5
        0x6
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x1
        0x6
        0x5
        0x3
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x1
        0x5
        0x3
        0x4
    .end array-data
.end method

.method public final onOutputStreamOffsetUsChanged()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    iget-object p3, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-virtual {p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->hasPendingReportedSkippedSilence:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    return-void
.end method

.method public final onProcessedStreamChange()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    return-void
.end method

.method public final onRelease()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->registered:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioDeviceCallback:Lcom/motorola/camera/HeadsetReceiver$1;

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroidx/appcompat/app/ActionBar;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    :cond_1
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->hdmiAudioPlugBroadcastReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->registered:Z

    :cond_3
    :goto_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_4

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->loudnessCodecController:Landroidx/core/view/MenuHostHelper;

    if-eqz p0, :cond_4

    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast p0, Landroid/media/LoudnessCodecController;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/media/LoudnessCodecController;->close()V

    :cond_4
    return-void
.end method

.method public final onReset()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->hasPendingReportedSkippedSilence:Z

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->disableBypass()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/gms/tasks/zzad;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Lcom/google/android/gms/tasks/zzad;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :goto_0
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/gms/tasks/zzad;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reset()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_2
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/gms/tasks/zzad;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/tasks/zzad;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_2
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/gms/tasks/zzad;

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-boolean v3, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    if-eqz v3, :cond_3

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reset()V

    :cond_3
    throw v2
.end method

.method public final onStarted()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->play()V

    return-void
.end method

.method public final onStopped()V
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->updateCurrentPosition()V

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->resetSyncParams()V

    iget-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public final processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
    .locals 0

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->decryptOnlyCodecFormat:Landroidx/media3/common/Format;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p5, p7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(I)V

    return p2

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5, p7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(I)V

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p3, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr p3, p9

    iput p3, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iput-boolean p2, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    return p2

    :cond_2
    :try_start_0
    invoke-virtual {p1, p6, p10, p11, p9}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    invoke-interface {p5, p7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(I)V

    :cond_3
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p1, p9

    iput p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    return p2

    :cond_4
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p2, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    if-eqz p2, :cond_5

    const/16 p2, 0x138b

    goto :goto_0

    :cond_5
    const/16 p2, 0x138a

    :goto_0
    iget-boolean p3, p1, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, p1, p14, p3, p2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    iget-object p2, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-boolean p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p3, p3, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    if-eqz p3, :cond_6

    const/16 p3, 0x138c

    goto :goto_1

    :cond_6
    const/16 p3, 0x1389

    :goto_1
    iget-boolean p4, p1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->isRecoverable:Z

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method public final renderToEndOfStream()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playPendingData()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x138b

    goto :goto_0

    :cond_1
    const/16 v1, 0x138a

    :goto_0
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->format:Landroidx/media3/common/Format;

    iget-boolean v3, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method public final setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 7

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v1, v2, v3}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result v1

    iget v4, p1, Landroidx/media3/common/PlaybackParameters;->pitch:F

    invoke-static {v4, v2, v3}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setAudioTrackPlaybackParametersV23()V

    return-void

    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    return-void

    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    return-void
.end method

.method public final shouldUseBypass(Landroidx/media3/common/Format;)Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->getAudioOffloadSupport(Landroidx/media3/common/Format;)I

    move-result v0

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v2, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    iget v0, p1, Landroidx/media3/common/Format;->encoderDelay:I

    if-nez v0, :cond_1

    iget v0, p1, Landroidx/media3/common/Format;->encoderPadding:I

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatSupport(Landroidx/media3/common/Format;)I

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final supportsFormat(Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;Landroidx/media3/common/Format;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result v4

    iget-object v5, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v6, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3, v3, v3, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result v0

    return v0

    :cond_0
    iget v5, v1, Landroidx/media3/common/Format;->cryptoType:I

    if-eqz v5, :cond_1

    move v7, v2

    goto :goto_0

    :cond_1
    move v7, v3

    :goto_0
    const/4 v8, 0x2

    if-eqz v5, :cond_3

    if-ne v5, v8, :cond_2

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v2

    :goto_2
    const/16 v9, 0x20

    const/4 v10, 0x0

    const-string v11, "audio/raw"

    const/16 v12, 0x8

    const/4 v13, 0x4

    iget-object v14, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    if-eqz v5, :cond_6

    if-eqz v7, :cond_5

    invoke-static {v11, v3, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v7, v10

    goto :goto_3

    :cond_4
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    :goto_3
    if-eqz v7, :cond_6

    :cond_5
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->getAudioOffloadSupport(Landroidx/media3/common/Format;)I

    move-result v0

    invoke-virtual {v14, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatSupport(Landroidx/media3/common/Format;)I

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v13, v12, v9, v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result v0

    return v0

    :cond_6
    move v0, v3

    :cond_7
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v14, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatSupport(Landroidx/media3/common/Format;)I

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    return v4

    :cond_9
    :goto_4
    iget v7, v1, Landroidx/media3/common/Format;->channelCount:I

    iget v15, v1, Landroidx/media3/common/Format;->sampleRate:I

    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    move/from16 v17, v9

    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v7, v2, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v15, v2, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput v8, v2, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    new-instance v7, Landroidx/media3/common/Format;

    invoke-direct {v7, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-virtual {v14, v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatSupport(Landroidx/media3/common/Format;)I

    move-result v2

    if-eqz v2, :cond_15

    if-nez v6, :cond_a

    sget-object v2, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_6

    :cond_a
    invoke-virtual {v14, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatSupport(Landroidx/media3/common/Format;)I

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v11, v3, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_5

    :cond_b
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    :goto_5
    if-eqz v10, :cond_c

    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v2

    goto :goto_6

    :cond_c
    move-object/from16 v2, p1

    invoke-static {v2, v1, v3, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosSoftMatch(Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;Landroidx/media3/common/Format;ZZ)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v2

    :goto_6
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    return v4

    :cond_d
    if-nez v5, :cond_e

    invoke-static {v8, v3, v3, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result v0

    return v0

    :cond_e
    invoke-virtual {v2, v3}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v6, 0x1

    :goto_7
    iget v7, v2, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v6, v7, :cond_10

    invoke-virtual {v2, v6}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v7, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v8

    if-eqz v8, :cond_f

    move/from16 v16, v3

    move-object v4, v7

    const/4 v2, 0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_10
    move v2, v5

    const/16 v16, 0x1

    :goto_8
    if-eqz v2, :cond_11

    goto :goto_9

    :cond_11
    const/4 v13, 0x3

    :goto_9
    if-eqz v2, :cond_12

    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media3/common/Format;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v12, 0x10

    :cond_12
    iget-boolean v1, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    if-eqz v1, :cond_13

    const/16 v1, 0x40

    goto :goto_a

    :cond_13
    move v1, v3

    :goto_a
    if-eqz v16, :cond_14

    const/16 v3, 0x80

    :cond_14
    or-int v2, v13, v12

    or-int/lit8 v2, v2, 0x20

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    or-int/2addr v0, v1

    return v0

    :cond_15
    return v4
.end method

.method public final updateCurrentPosition()V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->isEnded()Z

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    if-eqz v3, :cond_1

    :cond_0
    const-wide/high16 v18, -0x8000000000000000L

    goto/16 :goto_3

    :cond_1
    iget-object v3, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getCurrentPositionUs()J

    move-result-wide v6

    iget-object v3, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v8

    iget v3, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    invoke-static {v3, v8, v9}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(IJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-object v3, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v8, v8, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iput-object v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_0

    :cond_2
    iget-object v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v9, v8, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    sub-long v11, v6, v9

    iget-object v6, v8, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v6, v6, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-static {v6, v11, v12}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(FJ)J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/audio/SonicAudioProcessor;

    invoke-virtual {v3}, Landroidx/media3/common/audio/SonicAudioProcessor;->isActive()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-wide v8, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->outputBytes:J

    const-wide/16 v13, 0x400

    cmp-long v8, v8, v13

    if-ltz v8, :cond_5

    iget-wide v8, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->inputBytes:J

    iget-object v10, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->sonic:Landroidx/media3/common/audio/Sonic;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v13, v10, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iget v10, v10, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v13, v10

    mul-int/lit8 v13, v13, 0x2

    int-to-long v13, v13

    sub-long v13, v8, v13

    iget-object v8, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v8, v8, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget-object v9, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v9, v9, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-ne v8, v9, :cond_4

    iget-wide v8, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->outputBytes:J

    sget-object v17, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v15, v8

    invoke-static/range {v11 .. v17}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v11

    :cond_3
    const-wide/high16 v18, -0x8000000000000000L

    goto :goto_1

    :cond_4
    const-wide/high16 v18, -0x8000000000000000L

    int-to-long v4, v8

    mul-long/2addr v13, v4

    iget-wide v3, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->outputBytes:J

    int-to-long v8, v9

    mul-long v15, v3, v8

    sget-object v17, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v11 .. v17}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v11

    goto :goto_1

    :cond_5
    const-wide/high16 v18, -0x8000000000000000L

    iget v3, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->speed:F

    float-to-double v3, v3

    long-to-double v8, v11

    mul-double/2addr v3, v8

    double-to-long v11, v3

    :goto_1
    iget-object v3, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v4, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    add-long/2addr v4, v11

    sub-long/2addr v11, v6

    iput-wide v11, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaPositionDriftUs:J

    goto :goto_2

    :cond_6
    const-wide/high16 v18, -0x8000000000000000L

    iget-object v3, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v4, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    add-long/2addr v4, v6

    iget-wide v6, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaPositionDriftUs:J

    add-long/2addr v4, v6

    :goto_2
    iget-object v2, v2, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    iget-wide v2, v2, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget-object v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v6, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    invoke-static {v6, v2, v3}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(IJ)J

    move-result-wide v6

    add-long/2addr v6, v4

    iget-wide v4, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skippedOutputFrameCountAtLastPosition:J

    cmp-long v8, v2, v4

    if-lez v8, :cond_8

    iget-object v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    sub-long v4, v2, v4

    iget v8, v8, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    invoke-static {v8, v4, v5}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(IJ)J

    move-result-wide v4

    iput-wide v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skippedOutputFrameCountAtLastPosition:J

    iget-wide v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    if-nez v2, :cond_7

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    :cond_7
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    new-instance v3, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v1}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :goto_3
    move-wide/from16 v6, v18

    :cond_8
    :goto_4
    cmp-long v1, v6, v18

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    iget-wide v1, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_5
    iput-wide v6, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    :cond_a
    return-void
.end method
