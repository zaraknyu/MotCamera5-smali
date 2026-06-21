.class public final Landroidx/media3/extractor/flac/FlacExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public binarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

.field public final buffer:Landroidx/media3/common/util/ParsableByteArray;

.field public currentFrameBytesWritten:I

.field public currentFrameFirstSampleNumber:J

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

.field public frameStartMarker:I

.field public id3Metadata:Landroidx/media3/common/Metadata;

.field public final id3MetadataDisabled:Z

.field public minFrameSize:I

.field public final sampleNumberHolder:Landroidx/media3/extractor/PositionHolder;

.field public state:I

.field public final streamMarkerAndInfoBlock:[B

.field public trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I[B)V

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    iput-boolean v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    new-instance v0, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroidx/media3/extractor/PositionHolder;

    iput v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_28

    iget-object v5, v0, Landroidx/media3/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    const/4 v6, 0x2

    if-eq v2, v3, :cond_27

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v2, v6, :cond_25

    const/4 v10, 0x7

    const/4 v11, 0x6

    if-eq v2, v9, :cond_1c

    const-wide/16 v12, 0x0

    const-wide/16 v14, -0x1

    const/4 v5, 0x5

    if-eq v2, v8, :cond_16

    if-ne v2, v5, :cond_15

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz v2, :cond_0

    iget-object v5, v2, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v5, :cond_0

    move-object/from16 v5, p2

    invoke-virtual {v2, v1, v5}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->handlePendingSeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_0
    iget-wide v8, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    cmp-long v2, v8, v14

    const/4 v5, -0x1

    if-nez v2, :cond_7

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    new-array v8, v3, [B

    invoke-interface {v1, v4, v3, v8}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    aget-byte v8, v8, v4

    and-int/2addr v8, v3

    if-ne v8, v3, :cond_1

    move v8, v3

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    invoke-interface {v1, v6}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move v10, v11

    :goto_1
    new-instance v6, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v6, v10}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v9, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    move v11, v4

    :goto_2
    if-ge v11, v10, :cond_4

    sub-int v14, v10, v11

    invoke-interface {v1, v11, v14, v9}, Landroidx/media3/extractor/ExtractorInput;->peek(II[B)I

    move-result v14

    if-ne v14, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v11, v14

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v6, v11}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    :try_start_0
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUtf8EncodedLong()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_5

    :goto_4
    move-wide v12, v5

    goto :goto_5

    :cond_5
    iget v1, v2, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    int-to-long v1, v1

    mul-long/2addr v5, v1

    goto :goto_4

    :catch_0
    move v3, v4

    :goto_5
    if-eqz v3, :cond_6

    iput-wide v12, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    goto/16 :goto_d

    :cond_6
    invoke-static {v7, v7}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    iget v6, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    const-wide/32 v7, 0xf4240

    const v9, 0x8000

    if-ge v6, v9, :cond_a

    iget-object v10, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    sub-int/2addr v9, v6

    invoke-interface {v1, v10, v6, v9}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v1

    if-ne v1, v5, :cond_8

    goto :goto_6

    :cond_8
    move v3, v4

    :goto_6
    if-nez v3, :cond_9

    add-int/2addr v6, v1

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-nez v1, :cond_b

    iget-wide v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    mul-long/2addr v1, v7

    iget-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget v3, v3, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v3, v3

    div-long v7, v1, v3

    iget-object v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v10, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    return v5

    :cond_a
    move v3, v4

    :cond_b
    :goto_7
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v5, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iget v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    if-ge v5, v6, :cond_c

    sub-int/2addr v6, v5

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_c
    iget-object v5, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    :goto_8
    iget v6, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    const/16 v9, 0x10

    sub-int/2addr v6, v9

    iget-object v10, v0, Landroidx/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroidx/media3/extractor/PositionHolder;

    if-gt v5, v6, :cond_e

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v11, v0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    invoke-static {v2, v6, v11, v10}, Landroidx/media3/extractor/AacUtil;->checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/PositionHolder;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-wide v5, v10, Landroidx/media3/extractor/PositionHolder;->position:J

    goto :goto_c

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_e
    if-eqz v3, :cond_12

    :goto_9
    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    sub-int v6, v3, v6

    if-gt v5, v6, :cond_11

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :try_start_1
    iget-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    invoke-static {v2, v3, v6, v10}, Landroidx/media3/extractor/AacUtil;->checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/PositionHolder;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move v3, v4

    :goto_a
    iget v6, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v11, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-le v6, v11, :cond_f

    move v3, v4

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-wide v5, v10, Landroidx/media3/extractor/PositionHolder;->position:J

    goto :goto_c

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_b

    :cond_12
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_b
    move-wide v5, v14

    :goto_c
    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, v2, v3, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    add-int/2addr v1, v3

    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    cmp-long v3, v5, v14

    if-eqz v3, :cond_13

    iget-wide v10, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    mul-long/2addr v10, v7

    iget-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget v3, v3, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v7, v3

    div-long v17, v10, v7

    iget-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move/from16 v20, v1

    move-object/from16 v16, v3

    invoke-interface/range {v16 .. v22}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput v4, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iput-wide v5, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    :cond_13
    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v0, v0

    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    sub-int/2addr v0, v1

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-ge v1, v9, :cond_14

    if-ge v0, v9, :cond_14

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget-object v1, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v1, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    :cond_14
    :goto_d
    return v4

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_16
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v4, v6, v8}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    shr-int/lit8 v6, v2, 0x2

    const/16 v8, 0x3ffe

    if-ne v6, v8, :cond_1b

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iput v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    sget v6, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v25

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v8, v1, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-eqz v8, :cond_17

    new-instance v8, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v8, v1, v6, v7, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(Ljava/lang/Object;JI)V

    move/from16 v30, v4

    goto/16 :goto_11

    :cond_17
    cmp-long v3, v25, v14

    if-eqz v3, :cond_1a

    iget-wide v8, v1, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    cmp-long v3, v8, v12

    if-lez v3, :cond_1a

    new-instance v16, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget v8, v1, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    new-instance v9, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 v10, 0xe

    invoke-direct {v9, v10, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance v10, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;

    invoke-direct {v10, v1, v3}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;I)V

    invoke-virtual {v1}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v19

    iget-wide v12, v1, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iget v3, v1, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    if-lez v3, :cond_18

    int-to-long v14, v3

    move/from16 v30, v4

    int-to-long v4, v8

    add-long/2addr v14, v4

    const-wide/16 v3, 0x2

    div-long/2addr v14, v3

    const-wide/16 v3, 0x1

    add-long/2addr v14, v3

    :goto_e
    move-wide/from16 v27, v14

    goto :goto_10

    :cond_18
    move/from16 v30, v4

    iget v3, v1, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v4, v1, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    if-ne v3, v4, :cond_19

    if-lez v3, :cond_19

    int-to-long v3, v3

    goto :goto_f

    :cond_19
    const-wide/16 v3, 0x1000

    :goto_f
    iget v5, v1, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    int-to-long v14, v5

    mul-long/2addr v3, v14

    iget v1, v1, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    int-to-long v14, v1

    mul-long/2addr v3, v14

    const-wide/16 v14, 0x8

    div-long/2addr v3, v14

    const-wide/16 v14, 0x40

    add-long/2addr v14, v3

    goto :goto_e

    :goto_10
    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v29

    move-wide/from16 v23, v6

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-wide/from16 v21, v12

    invoke-direct/range {v16 .. v29}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V

    move-object/from16 v1, v16

    iput-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v8, v1, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    goto :goto_11

    :cond_1a
    move/from16 v30, v4

    new-instance v8, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-virtual {v1}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v3

    invoke-direct {v8, v3, v4}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_11
    invoke-interface {v2, v8}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 v1, 0x5

    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    return v30

    :cond_1b
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const-string v0, "First frame does not start with sync code."

    invoke-static {v7, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1c
    move/from16 v30, v4

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    move/from16 v3, v30

    :goto_12
    if-nez v3, :cond_24

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    new-instance v3, Landroidx/media3/extractor/VorbisBitArray;

    new-array v4, v8, [B

    invoke-direct {v3, v8, v4}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    move/from16 v6, v30

    invoke-interface {v1, v6, v8, v4}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v3}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    invoke-virtual {v3, v10}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v7

    const/16 v12, 0x18

    invoke-virtual {v3, v12}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    add-int/2addr v3, v8

    if-nez v7, :cond_1d

    const/16 v2, 0x26

    new-array v3, v2, [B

    invoke-interface {v1, v3, v6, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    new-instance v2, Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-direct {v2, v8, v3}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(I[B)V

    goto/16 :goto_18

    :cond_1d
    if-eqz v2, :cond_23

    iget-object v12, v2, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    if-ne v7, v9, :cond_1e

    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v7, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v12, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v12, v6, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-static {v7}, Landroidx/media3/extractor/AacUtil;->readSeekTableMetadataBlock(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/sqlite/db/SimpleSQLiteQuery;

    move-result-object v23

    new-instance v13, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v14, v2, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v15, v2, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v3, v2, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v6, v2, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v7, v2, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    iget v12, v2, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iget v10, v2, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    move/from16 v20, v10

    iget-wide v9, v2, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v2, v2, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    move-object/from16 v24, v2

    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    move-wide/from16 v21, v9

    move/from16 v19, v12

    invoke-direct/range {v13 .. v24}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/sqlite/db/SimpleSQLiteQuery;Landroidx/media3/common/Metadata;)V

    move-object v2, v13

    goto/16 :goto_18

    :cond_1e
    if-ne v7, v8, :cond_20

    new-instance v6, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v6, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v7, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    invoke-interface {v1, v7, v9, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {v6, v9, v9}, Landroidx/media3/extractor/AacUtil;->readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/room/ObservedTableVersions;

    move-result-object v3

    iget-object v3, v3, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/extractor/AacUtil;->parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object v3

    if-nez v12, :cond_1f

    :goto_13
    move-object/from16 v23, v3

    goto :goto_14

    :cond_1f
    invoke-virtual {v12, v3}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v3

    goto :goto_13

    :goto_14
    new-instance v12, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v13, v2, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v14, v2, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v15, v2, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v3, v2, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v6, v2, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    iget v7, v2, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iget v9, v2, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    move/from16 v19, v9

    iget-wide v8, v2, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v2, v2, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/sqlite/db/SimpleSQLiteQuery;

    move-object/from16 v22, v2

    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    move-wide/from16 v20, v8

    invoke-direct/range {v12 .. v23}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/sqlite/db/SimpleSQLiteQuery;Landroidx/media3/common/Metadata;)V

    :goto_15
    move-object v2, v12

    goto :goto_18

    :cond_20
    if-ne v7, v11, :cond_22

    new-instance v6, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v6, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v7, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    invoke-interface {v1, v7, v9, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {v6}, Landroidx/media3/extractor/metadata/flac/PictureFrame;->fromPictureBlock(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/flac/PictureFrame;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v3

    new-instance v6, Landroidx/media3/common/Metadata;

    invoke-direct {v6, v3}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    if-nez v12, :cond_21

    :goto_16
    move-object/from16 v23, v6

    goto :goto_17

    :cond_21
    invoke-virtual {v12, v6}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v6

    goto :goto_16

    :goto_17
    new-instance v12, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v13, v2, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v14, v2, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v15, v2, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v3, v2, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v6, v2, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    iget v7, v2, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iget v8, v2, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v10, v2, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v2, v2, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/sqlite/db/SimpleSQLiteQuery;

    move-object/from16 v22, v2

    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move-wide/from16 v20, v10

    invoke-direct/range {v12 .. v23}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/sqlite/db/SimpleSQLiteQuery;Landroidx/media3/common/Metadata;)V

    goto :goto_15

    :cond_22
    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :goto_18
    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    iput-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    move v3, v4

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/16 v30, 0x0

    goto/16 :goto_12

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_24
    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v1, v1, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    const/4 v9, 0x6

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->id3Metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v1, v5, v2}, Landroidx/media3/extractor/FlacStreamMetadata;->getFormat([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    const-string v3, "audio/flac"

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v2}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x4

    iput v10, v0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    const/4 v9, 0x0

    return v9

    :cond_25
    move v9, v4

    move v10, v8

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v10}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v3, v9, v10}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long v1, v1, v3

    if-nez v1, :cond_26

    const/4 v1, 0x3

    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    return v9

    :cond_26
    const-string v0, "Failed to read FLAC stream marker."

    invoke-static {v7, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_27
    move v9, v4

    array-length v2, v5

    invoke-interface {v1, v9, v2, v5}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iput v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    return v9

    :cond_28
    iget-boolean v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    xor-int/2addr v2, v3

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    invoke-static {v1, v2}, Landroidx/media3/extractor/AacUtil;->peekId3Metadata(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/common/Metadata;

    move-result-object v2

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v6

    sub-long/2addr v6, v4

    long-to-int v4, v6

    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->id3Metadata:Landroidx/media3/common/Metadata;

    iput v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    const/16 v30, 0x0

    return v30
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    iput p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iget-object p0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 4

    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroidx/media3/extractor/AacUtil;->peekId3Metadata(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/common/Metadata;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    invoke-virtual {p1, p0, p0, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x664c6143

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method
