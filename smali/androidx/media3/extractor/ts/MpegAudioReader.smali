.class public final Landroidx/media3/extractor/ts/MpegAudioReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public final containerMimeType:Ljava/lang/String;

.field public formatId:Ljava/lang/String;

.field public frameBytesRead:I

.field public frameDurationUs:J

.field public frameSize:I

.field public hasOutputFormat:Z

.field public final header:Landroidx/media3/extractor/MpegAudioUtil$Header;

.field public final headerScratch:Landroidx/media3/common/util/ParsableByteArray;

.field public final language:Ljava/lang/String;

.field public lastByteWasFF:Z

.field public output:Landroidx/media3/extractor/TrackOutput;

.field public final roleFlags:I

.field public state:I

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    new-instance v0, Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    iput-object p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->roleFlags:I

    iput-object p3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->containerMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 12

    iget-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_c

    iget v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    iget-object v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameSize:I

    iget v3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iget v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object v5, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v6, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    iget v9, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    iput v2, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput v2, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v5, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    const/4 v6, 0x4

    rsub-int/lit8 v5, v5, 0x4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v5, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v7, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    invoke-virtual {p1, v7, v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    iget v5, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v5, v0

    iput v5, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    if-ge v5, v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v5, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-virtual {v5, v0}, Landroidx/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    move-result v0

    if-nez v0, :cond_5

    iput v2, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput v4, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    goto/16 :goto_0

    :cond_5
    iget v0, v5, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    iput v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameSize:I

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez v0, :cond_6

    iget v0, v5, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v7, v0

    const-wide/32 v9, 0xf4240

    mul-long/2addr v7, v9

    iget v0, v5, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v9, v0

    div-long/2addr v7, v9

    iput-wide v7, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameDurationUs:J

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v7, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    iput-object v7, v0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    iget-object v7, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->containerMimeType:Ljava/lang/String;

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    iget-object v7, v5, Landroidx/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/io/Serializable;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    const/16 v7, 0x1000

    iput v7, v0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    iget v7, v5, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    iput v7, v0, Landroidx/media3/common/Format$Builder;->channelCount:I

    iget v5, v5, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    iput v5, v0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iget-object v5, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    iput-object v5, v0, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iget v5, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->roleFlags:I

    iput v5, v0, Landroidx/media3/common/Format$Builder;->roleFlags:I

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v0, v5}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iput-boolean v4, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    :cond_6
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v0, v1, v6, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iput v3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v6, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    :goto_2
    if-ge v5, v6, :cond_b

    aget-byte v7, v0, v5

    and-int/lit16 v8, v7, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_8

    move v8, v4

    goto :goto_3

    :cond_8
    move v8, v2

    :goto_3
    iget-boolean v9, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v9, :cond_9

    and-int/lit16 v7, v7, 0xe0

    const/16 v9, 0xe0

    if-ne v7, v9, :cond_9

    move v7, v4

    goto :goto_4

    :cond_9
    move v7, v2

    :goto_4
    iput-boolean v8, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v7, :cond_a

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iput-boolean v2, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    iget-object v1, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v5

    aput-byte v0, v1, v4

    iput v3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput v4, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {p1, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    return-void
.end method

.method public final packetFinished(Z)V
    .locals 0

    return-void
.end method

.method public final packetStarted(IJ)V
    .locals 0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    return-void
.end method

.method public final seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    return-void
.end method
