.class public final Landroidx/media3/exoplayer/text/TextRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final cueDecoder:Lcom/google/mlkit/common/internal/zze;

.field public final cueDecoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field public cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

.field public decoderReplacementState:I

.field public finalStreamEndPositionUs:J

.field public final formatHolder:Landroidx/room/concurrent/FileLock;

.field public inputStreamEnded:Z

.field public lastRendererPositionUs:J

.field public nextSubtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

.field public nextSubtitleEventIndex:I

.field public nextSubtitleInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

.field public final output:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

.field public final outputHandler:Landroid/os/Handler;

.field public outputStreamEnded:Z

.field public streamError:Ljava/io/IOException;

.field public streamFormat:Landroidx/media3/common/Format;

.field public subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

.field public subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

.field public final subtitleDecoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

.field public waitingForKeyFrame:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroid/os/Looper;)V
    .locals 2

    sget-object v0, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->DEFAULT:Landroidx/room/ObservedTableVersions;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->output:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    new-instance p1, Lcom/google/mlkit/common/internal/zze;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/google/mlkit/common/internal/zze;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cueDecoder:Lcom/google/mlkit/common/internal/zze;

    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    new-instance p1, Landroidx/room/concurrent/FileLock;

    const/16 p2, 0x9

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroidx/room/concurrent/FileLock;-><init>(IZ)V

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->formatHolder:Landroidx/room/concurrent/FileLock;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    return-void
.end method


# virtual methods
.method public final assertLegacyDecodingEnabledIfRequired()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/cea-608"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/x-mp4-cea-608"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/cea-708"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Legacy decoding is disabled, can\'t handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " samples (expected application/x-media3-cues)."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/media3/common/util/Log;->checkState(Ljava/lang/String;Z)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "TextRenderer"

    return-object p0
.end method

.method public final getNextEventTime()J
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    invoke-virtual {v1}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-wide v2

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    iget p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    invoke-virtual {v0, p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->getEventTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPresentationTimeUs$1(J)J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/text/CueGroup;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/text/TextRenderer;->invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V

    return v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final initSubtitleDecoder()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    check-cast v2, Landroidx/room/ObservedTableVersions;

    iget-object v2, v2, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/dynamite/zzf;

    iget-object v3, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget v4, v1, Landroidx/media3/common/Format;->accessibilityChannel:I

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v0, v6

    goto :goto_1

    :sswitch_0
    const-string v0, "application/cea-708"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v5, "application/cea-608"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :sswitch_2
    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;

    iget-object v1, v1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, v1, v4}, Landroidx/media3/extractor/text/cea/Cea708Decoder;-><init>(Ljava/util/List;I)V

    goto :goto_3

    :pswitch_1
    new-instance v0, Landroidx/media3/extractor/text/cea/Cea608Decoder;

    invoke-direct {v0, v3, v4}, Landroidx/media3/extractor/text/cea/Cea608Decoder;-><init>(Ljava/lang/String;I)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/dynamite/zzf;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v1}, Lcom/google/android/gms/dynamite/zzf;->create(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleParser;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Decoder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;-><init>(Landroidx/media3/extractor/text/SubtitleParser;)V

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    iget-wide v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->lastResetPositionUs:J

    invoke-interface {v0, v1, v2}, Landroidx/media3/decoder/Decoder;->setOutputStartTimeUs(J)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempted to create decoder for unsupported MIME type: "

    invoke-static {v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x37713300 -> :sswitch_2
        0x5d578071 -> :sswitch_1
        0x5d578432 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V
    .locals 3

    iget-object v0, p1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->output:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    const/16 v0, 0x1b

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final isEnded()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    return p0
.end method

.method public final isReady()Z
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamError:Ljava/io/IOException;

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->maybeThrowStreamError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamError:Ljava/io/IOException;

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamError:Ljava/io/IOException;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "application/x-media3-cues"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-interface {v0, v3, v4}, Landroidx/media3/exoplayer/text/CuesResolver;->getNextCueChangeTimeUs(J)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long p0, v3, v5

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    iget-wide v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->getEventTimeCount()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v0, v5}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->getEventTime(I)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gtz v0, :cond_7

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    iget-wide v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->getEventTimeCount()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v0, v5}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->getEventTime(I)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gtz v0, :cond_7

    :cond_5
    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    if-eqz p0, :cond_7

    :cond_6
    return v2

    :cond_7
    :goto_2
    return v1
.end method

.method public final onDisabled()V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    new-instance v3, Landroidx/media3/common/text/CueGroup;

    sget-object v4, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iget-wide v5, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-virtual {p0, v5, v6}, Landroidx/media3/exoplayer/text/TextRenderer;->getPresentationTimeUs$1(J)J

    invoke-direct {v3, v4}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;)V

    iget-object v4, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/text/TextRenderer;->invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V

    :goto_0
    iput-wide v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/decoder/Decoder;->release()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    :cond_1
    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 2

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/exoplayer/text/CuesResolver;->clear()V

    :cond_0
    new-instance p1, Landroidx/media3/common/text/CueGroup;

    sget-object p2, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iget-wide v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/text/TextRenderer;->getPresentationTimeUs$1(J)J

    invoke-direct {p1, p2}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/text/TextRenderer;->invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    if-eqz p2, :cond_3

    iget-object p2, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string p3, "application/x-media3-cues"

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Landroidx/media3/decoder/Decoder;->release()V

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    iput p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->initSubtitleDecoder()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/media3/decoder/Decoder;->flush()V

    iget-wide p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->lastResetPositionUs:J

    invoke-interface {p1, p2, p3}, Landroidx/media3/decoder/Decoder;->setOutputStartTimeUs(J)V

    :cond_3
    return-void
.end method

.method public final onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string p2, "application/x-media3-cues"

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->assertLegacyDecodingEnabledIfRequired()V

    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    if-eqz p1, :cond_0

    iput p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->initSubtitleDecoder()V

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    iget p1, p1, Landroidx/media3/common/Format;->cueReplacementBehavior:I

    if-ne p1, p2, :cond_2

    new-instance p1, Landroidx/media3/exoplayer/text/MergingCuesResolver;

    invoke-direct {p1}, Landroidx/media3/exoplayer/text/MergingCuesResolver;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/jvm/internal/SpreadBuilder;

    invoke-direct {p1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>()V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    return-void
.end method

.method public final releaseSubtitleBuffers()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderOutputBuffer;->release()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderOutputBuffer;->release()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    :cond_1
    return-void
.end method

.method public final render(JJ)V
    .locals 18

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-boolean v0, v1, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-wide v5, v1, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v7

    if-eqz v0, :cond_0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    :cond_0
    iget-boolean v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_1

    goto/16 :goto_10

    :cond_1
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "application/x-media3-cues"

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v5, v1, Landroidx/media3/exoplayer/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    const/4 v7, -0x4

    iget-object v8, v1, Landroidx/media3/exoplayer/text/TextRenderer;->formatHolder:Landroidx/room/concurrent/FileLock;

    const/4 v9, 0x0

    if-eqz v0, :cond_a

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v8, v0, v9}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/room/concurrent/FileLock;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v8

    if-eq v8, v7, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0, v6}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    iget-object v6, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v11, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v6

    iget-object v10, v1, Landroidx/media3/exoplayer/text/TextRenderer;->cueDecoder:Lcom/google/mlkit/common/internal/zze;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    invoke-virtual {v10, v7, v8, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v10, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class v6, Landroid/os/Bundle;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    const-string v7, "c"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroidx/media3/extractor/text/CuesWithTiming;

    new-instance v8, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    const/16 v13, 0x18

    invoke-direct {v8, v13}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v13

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_5

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v14}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v13}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v15

    const-string v7, "d"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-direct/range {v10 .. v15}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(JJLjava/util/List;)V

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-interface {v0, v10, v2, v3}, Landroidx/media3/exoplayer/text/CuesResolver;->addCues(Landroidx/media3/extractor/text/CuesWithTiming;J)Z

    move-result v9

    :goto_1
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    iget-wide v6, v1, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-interface {v0, v6, v7}, Landroidx/media3/exoplayer/text/CuesResolver;->getNextCueChangeTimeUs(J)J

    move-result-wide v6

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v0, v6, v10

    if-nez v0, :cond_6

    iget-boolean v8, v1, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    if-eqz v8, :cond_6

    if-nez v9, :cond_6

    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    :cond_6
    if-eqz v0, :cond_7

    cmp-long v0, v6, v2

    if-gtz v0, :cond_7

    move v9, v4

    :cond_7
    if-eqz v9, :cond_9

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/text/CuesResolver;->getCuesAtTimeUs(J)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v6, v1, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-interface {v6, v2, v3}, Landroidx/media3/exoplayer/text/CuesResolver;->getPreviousCueChangeTimeUs(J)J

    move-result-wide v6

    new-instance v8, Landroidx/media3/common/text/CueGroup;

    invoke-virtual {v1, v6, v7}, Landroidx/media3/exoplayer/text/TextRenderer;->getPresentationTimeUs$1(J)J

    invoke-direct {v8, v0}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;)V

    if-eqz v5, :cond_8

    invoke-virtual {v5, v4, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v8}, Landroidx/media3/exoplayer/text/TextRenderer;->invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V

    :goto_2
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->cuesResolver:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-interface {v0, v6, v7}, Landroidx/media3/exoplayer/text/CuesResolver;->discardCuesBeforeTimeUs(J)V

    :cond_9
    iput-wide v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    return-void

    :cond_a
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->assertLegacyDecodingEnabledIfRequired()V

    iput-wide v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    const-string v10, "Subtitle decoding failed. streamFormat="

    const-string v11, "TextRenderer"

    const/4 v12, 0x0

    if-nez v0, :cond_c

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2, v3}, Landroidx/media3/extractor/text/SubtitleDecoder;->setPositionUs(J)V

    :try_start_0
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    iput-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroidx/media3/common/text/CueGroup;

    sget-object v2, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iget-wide v6, v1, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-virtual {v1, v6, v7}, Landroidx/media3/exoplayer/text/TextRenderer;->getPresentationTimeUs$1(J)J

    invoke-direct {v0, v2}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;)V

    if-eqz v5, :cond_b

    invoke-virtual {v5, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_b
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/text/TextRenderer;->invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V

    :goto_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->release()V

    iput-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    iput v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->initSubtitleDecoder()V

    goto/16 :goto_10

    :cond_c
    :goto_4
    iget v0, v1, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    const/4 v13, 0x2

    if-eq v0, v13, :cond_d

    goto/16 :goto_10

    :cond_d
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->getNextEventTime()J

    move-result-wide v14

    move v0, v9

    :goto_5
    cmp-long v14, v14, v2

    if-gtz v14, :cond_f

    iget v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    add-int/2addr v0, v4

    iput v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->getNextEventTime()J

    move-result-wide v14

    move v0, v4

    goto :goto_5

    :cond_e
    move v0, v9

    :cond_f
    iget-object v14, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    if-eqz v14, :cond_10

    invoke-virtual {v14, v6}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v15

    if-eqz v15, :cond_12

    if-nez v0, :cond_10

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->getNextEventTime()J

    move-result-wide v14

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v14, v14, v16

    if-nez v14, :cond_10

    iget v14, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-ne v14, v13, :cond_11

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    iget-object v14, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v14}, Landroidx/media3/decoder/Decoder;->release()V

    iput-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    iput v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->initSubtitleDecoder()V

    :cond_10
    :goto_6
    move-object v15, v8

    goto :goto_7

    :cond_11
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    goto :goto_6

    :cond_12
    move-object v15, v8

    iget-wide v7, v14, Landroidx/media3/decoder/DecoderOutputBuffer;->timeUs:J

    cmp-long v7, v7, v2

    if-gtz v7, :cond_14

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderOutputBuffer;->release()V

    :cond_13
    invoke-virtual {v14, v2, v3}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->getNextEventTimeIndex(J)I

    move-result v0

    iput v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    iput-object v14, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    iput-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    move v0, v4

    :cond_14
    :goto_7
    if-eqz v0, :cond_19

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    invoke-virtual {v0, v2, v3}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->getNextEventTimeIndex(J)I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v7, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    invoke-virtual {v7}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->getEventTimeCount()I

    move-result v7

    if-nez v7, :cond_15

    goto :goto_8

    :cond_15
    const/4 v7, -0x1

    if-ne v0, v7, :cond_16

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    invoke-virtual {v0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->getEventTimeCount()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v0, v7}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->getEventTime(I)J

    move-result-wide v7

    goto :goto_9

    :cond_16
    iget-object v7, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    sub-int/2addr v0, v4

    invoke-virtual {v7, v0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->getEventTime(I)J

    move-result-wide v7

    goto :goto_9

    :cond_17
    :goto_8
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    iget-wide v7, v0, Landroidx/media3/decoder/DecoderOutputBuffer;->timeUs:J

    :goto_9
    invoke-virtual {v1, v7, v8}, Landroidx/media3/exoplayer/text/TextRenderer;->getPresentationTimeUs$1(J)J

    new-instance v0, Landroidx/media3/common/text/CueGroup;

    iget-object v7, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    invoke-virtual {v7, v2, v3}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->getCues(J)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;)V

    if-eqz v5, :cond_18

    invoke-virtual {v5, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    :cond_18
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/text/TextRenderer;->invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V

    :cond_19
    :goto_a
    iget v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-ne v0, v13, :cond_1a

    goto/16 :goto_10

    :cond_1a
    :goto_b
    :try_start_1
    iget-boolean v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_22

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    if-nez v0, :cond_1c

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    if-nez v0, :cond_1b

    goto/16 :goto_10

    :cond_1b
    iput-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_e

    :cond_1c
    :goto_c
    iget v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-ne v2, v4, :cond_1d

    iput v6, v0, Landroidx/media3/decoder/Buffer;->flags:I

    iget-object v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    iput-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    iput v13, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    return-void

    :cond_1d
    invoke-virtual {v1, v15, v0, v9}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/room/concurrent/FileLock;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_20

    invoke-virtual {v0, v6}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    iput-boolean v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    goto :goto_d

    :cond_1e
    iget-object v2, v15, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/Format;

    if-nez v2, :cond_1f

    goto :goto_10

    :cond_1f
    iget-wide v7, v2, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iput-wide v7, v0, Landroidx/media3/extractor/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    iget-boolean v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    invoke-virtual {v0, v4}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v7

    xor-int/2addr v7, v4

    and-int/2addr v2, v7

    iput-boolean v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    :goto_d
    iget-boolean v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    if-nez v2, :cond_1a

    iget-object v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    iput-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;
    :try_end_1
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :cond_20
    const/4 v0, -0x3

    if-ne v2, v0, :cond_1a

    goto :goto_10

    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroidx/media3/common/text/CueGroup;

    sget-object v2, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iget-wide v6, v1, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-virtual {v1, v6, v7}, Landroidx/media3/exoplayer/text/TextRenderer;->getPresentationTimeUs$1(J)J

    invoke-direct {v0, v2}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;)V

    if-eqz v5, :cond_21

    invoke-virtual {v5, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_f

    :cond_21
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/text/TextRenderer;->invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V

    :goto_f
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->release()V

    iput-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    iput v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->initSubtitleDecoder()V

    :cond_22
    :goto_10
    return-void
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 3

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/x-media3-cues"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitleDecoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    check-cast p0, Landroidx/room/ObservedTableVersions;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/dynamite/zzf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamite/zzf;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "application/cea-608"

    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "application/x-mp4-cea-608"

    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "application/cea-708"

    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-static {p0, v2, v2, v2}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result p0

    return p0

    :cond_1
    invoke-static {v2, v2, v2, v2}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    iget p0, p1, Landroidx/media3/common/Format;->cryptoType:I

    if-nez p0, :cond_3

    const/4 p0, 0x4

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    :goto_1
    invoke-static {p0, v2, v2, v2}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result p0

    return p0
.end method
