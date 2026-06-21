.class public final Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

.field public final bufferSize:I

.field public final enableAudioTrackPlaybackParams:Z

.field public final enableOffloadGapless:Z

.field public final inputFormat:Landroidx/media3/common/Format;

.field public final inputPcmFrameSize:I

.field public final outputChannelConfig:I

.field public final outputEncoding:I

.field public final outputMode:I

.field public final outputPcmFrameSize:I

.field public final outputSampleRate:I

.field public final tunneling:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;IIIIIIILandroidx/media3/common/audio/AudioProcessingPipeline;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    iput p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    iput p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    iput p4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iput p5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iput p6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iput p7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iput p8, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    iput-object p9, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    iput-boolean p10, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    iput-boolean p11, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    iput-boolean p12, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->tunneling:Z

    return-void
.end method


# virtual methods
.method public final buildAudioTrackConfig()Landroidx/media3/extractor/Ac4Util$Ac4Presentation;
    .locals 3

    new-instance v0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iput v1, v0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iput v1, v0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iput v1, v0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->tunneling:Z

    iput-boolean v1, v0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    iput-boolean v2, v0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    iput p0, v0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    return-object v0
.end method
