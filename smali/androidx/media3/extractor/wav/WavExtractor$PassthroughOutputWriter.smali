.class public final Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;


# instance fields
.field public final extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public final format:Landroidx/media3/common/Format;

.field public outputFrameCount:J

.field public pendingOutputBytes:I

.field public startTimeUs:J

.field public final targetSampleSizeBytes:I

.field public final trackOutput:Landroidx/media3/extractor/TrackOutput;

.field public final wavFormat:Landroidx/media3/extractor/wav/WavFormat;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iput-object p2, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object p3, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget p1, p3, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    iget p2, p3, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    iget v0, p3, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x8

    iget p3, p3, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    if-ne p3, v0, :cond_0

    mul-int p3, p2, v0

    mul-int/lit8 v1, p3, 0x8

    div-int/lit8 p3, p3, 0xa

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v2, "audio/wav"

    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    invoke-static {p4}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v1, v0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    iput p3, v0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    iput p1, v0, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput p2, v0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput p5, v0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    new-instance p1, Landroidx/media3/common/Format;

    invoke-direct {p1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Landroidx/media3/common/Format;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Expected block size: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final init(IJ)V
    .locals 7

    new-instance v0, Landroidx/media3/extractor/wav/WavSeekMap;

    const/4 v2, 0x1

    int-to-long v3, p1

    iget-object v1, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/wav/WavSeekMap;-><init>(Landroidx/media3/extractor/wav/WavFormat;IJJ)V

    iget-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iget-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final reset(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    return-void
.end method

.method public final sampleData(Landroidx/media3/extractor/ExtractorInput;J)Z
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_1

    iget v7, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    iget v8, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v7, v8

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    iget-object v7, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    move-object/from16 v8, p1

    invoke-interface {v7, v8, v5, v6}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget v3, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    add-int/2addr v3, v5

    iput v3, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    int-to-long v3, v5

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v2, v1, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    iget v3, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    div-int/2addr v3, v2

    if-lez v3, :cond_2

    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    iget-wide v9, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    iget v1, v1, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v13, v1

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v15}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v3, v2

    iget v1, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    sub-int v16, v1, v15

    const/4 v14, 0x1

    const/16 v17, 0x0

    iget-object v11, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface/range {v11 .. v17}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    move/from16 v1, v16

    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    int-to-long v2, v3

    add-long/2addr v7, v2

    iput-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    iput v1, v0, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    :cond_2
    if-gtz v5, :cond_3

    return v6

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
