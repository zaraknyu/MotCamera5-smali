.class public final Landroidx/media3/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final continuityCounters:Landroid/util/SparseIntArray;

.field public final durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

.field public final extractorFlags:I

.field public hasOutputSeekMap:Z

.field public output:Landroidx/media3/extractor/ExtractorOutput;

.field public final payloadReaderFactory:Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

.field public pcrPid:I

.field public pendingSeekToStart:Z

.field public remainingPmts:I

.field public final subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public final timestampAdjusters:Ljava/util/List;

.field public final trackIds:Landroid/util/SparseBooleanArray;

.field public final trackPids:Landroid/util/SparseBooleanArray;

.field public tracksEnded:Z

.field public tsBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

.field public final tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public final tsPayloadReaders:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroidx/media3/extractor/ts/TsExtractor;->payloadReaderFactory:Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    iput p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->extractorFlags:I

    iput-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I[B)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance p4, Landroid/util/SparseIntArray;

    invoke-direct {p4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p4, p0, Landroidx/media3/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    new-instance p4, Landroidx/media3/extractor/ts/PsDurationReader;

    const/4 v0, 0x1

    invoke-direct {p4, v0}, Landroidx/media3/extractor/ts/PsDurationReader;-><init>(I)V

    iput-object p4, p0, Landroidx/media3/extractor/ts/TsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    sget-object p4, Landroidx/media3/extractor/ExtractorOutput;->PLACEHOLDER:Landroidx/transition/Transition$1;

    iput-object p4, p0, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    const/4 p4, -0x1

    iput p4, p0, Landroidx/media3/extractor/ts/TsExtractor;->pcrPid:I

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p4

    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/ts/TsPayloadReader;

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/extractor/ts/SectionReader;

    new-instance p4, Lcom/tinder/StateMachine;

    invoke-direct {p4, p0}, Lcom/tinder/StateMachine;-><init>(Landroidx/media3/extractor/ts/TsExtractor;)V

    invoke-direct {p1, p4}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->extractorFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/Latch;

    iget-object v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/compose/runtime/Latch;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v12

    iget-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    const/16 v4, 0x47

    const-wide/16 v17, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_14

    cmp-long v3, v12, v17

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    if-eqz v3, :cond_f

    iget-boolean v3, v9, Landroidx/media3/extractor/ts/PsDurationReader;->isDurationRead:Z

    if-nez v3, :cond_f

    iget v0, v0, Landroidx/media3/extractor/ts/TsExtractor;->pcrPid:I

    iget-object v3, v9, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-object v10, v9, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    if-gtz v0, :cond_0

    invoke-virtual {v9, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)V

    return v6

    :cond_0
    iget-boolean v11, v9, Landroidx/media3/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    const v12, 0x1b8a0

    if-nez v11, :cond_7

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v13

    int-to-long v11, v12

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v3, v11

    int-to-long v11, v3

    sub-long/2addr v13, v11

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    cmp-long v11, v11, v13

    if-eqz v11, :cond_1

    iput-wide v13, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    return v5

    :cond_1
    invoke-virtual {v10, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v2, v10, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v6, v3, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    iget v1, v10, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v2, v10, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/lit16 v3, v2, -0xbc

    :goto_0
    if-lt v3, v1, :cond_6

    iget-object v11, v10, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v12, -0x4

    move v13, v6

    :goto_1
    const/4 v14, 0x4

    if-gt v12, v14, :cond_5

    mul-int/lit16 v14, v12, 0xbc

    add-int/2addr v14, v3

    if-lt v14, v1, :cond_3

    if-ge v14, v2, :cond_3

    aget-byte v14, v11, v14

    if-eq v14, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v13, v5

    const/4 v14, 0x5

    if-ne v13, v14, :cond_4

    invoke-static {v10, v3, v0}, Landroidx/media3/extractor/ts/TsUtil;->readPcrFromPacket(Landroidx/media3/common/util/ParsableByteArray;II)J

    move-result-wide v11

    cmp-long v13, v11, v7

    if-eqz v13, :cond_5

    move-wide v7, v11

    goto :goto_3

    :cond_3
    :goto_2
    move v13, v6

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    iput-wide v7, v9, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    iput-boolean v5, v9, Landroidx/media3/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    return v6

    :cond_7
    iget-wide v13, v9, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    cmp-long v11, v13, v7

    if-nez v11, :cond_8

    invoke-virtual {v9, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)V

    return v6

    :cond_8
    iget-boolean v11, v9, Landroidx/media3/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    if-nez v11, :cond_d

    int-to-long v11, v12

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v3, v11

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    int-to-long v13, v6

    cmp-long v11, v11, v13

    if-eqz v11, :cond_9

    iput-wide v13, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    return v5

    :cond_9
    invoke-virtual {v10, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v2, v10, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v6, v3, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    iget v1, v10, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v2, v10, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    :goto_4
    if-ge v1, v2, :cond_c

    iget-object v3, v10, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v1

    if-eq v3, v4, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/ts/TsUtil;->readPcrFromPacket(Landroidx/media3/common/util/ParsableByteArray;II)J

    move-result-wide v11

    cmp-long v3, v11, v7

    if-eqz v3, :cond_b

    move-wide v7, v11

    goto :goto_6

    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    :goto_6
    iput-wide v7, v9, Landroidx/media3/extractor/ts/PsDurationReader;->firstScrValue:J

    iput-boolean v5, v9, Landroidx/media3/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    return v6

    :cond_d
    iget-wide v4, v9, Landroidx/media3/extractor/ts/PsDurationReader;->firstScrValue:J

    cmp-long v0, v4, v7

    if-nez v0, :cond_e

    invoke-virtual {v9, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)V

    return v6

    :cond_e
    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v4

    iget-wide v7, v9, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    invoke-virtual {v3, v7, v8}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestampGreaterThanPreviousTimestamp(J)J

    move-result-wide v2

    sub-long/2addr v2, v4

    iput-wide v2, v9, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    invoke-virtual {v9, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)V

    return v6

    :cond_f
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    if-nez v3, :cond_11

    iput-boolean v5, v0, Landroidx/media3/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    move v3, v6

    move-wide v10, v7

    iget-wide v6, v9, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    cmp-long v8, v6, v10

    if-eqz v8, :cond_10

    move v8, v3

    new-instance v3, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v9, v9, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget v10, v0, Landroidx/media3/extractor/ts/TsExtractor;->pcrPid:I

    move v11, v4

    new-instance v4, Lcom/google/mlkit/common/internal/zze;

    const/4 v14, 0x7

    invoke-direct {v4, v14}, Lcom/google/mlkit/common/internal/zze;-><init>(I)V

    move v14, v5

    new-instance v5, Lcom/google/common/base/Splitter;

    invoke-direct {v5, v10, v9}, Lcom/google/common/base/Splitter;-><init>(ILandroidx/media3/common/util/TimestampAdjuster;)V

    const-wide/16 v9, 0x1

    add-long/2addr v9, v6

    move/from16 v16, v14

    const-wide/16 v14, 0xbc

    move/from16 v19, v16

    const/16 v16, 0x3ac

    move/from16 v21, v8

    move-wide v8, v9

    move/from16 v20, v11

    const-wide/16 v10, 0x0

    move/from16 v1, v21

    invoke-direct/range {v3 .. v16}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V

    iput-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v3, v3, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    invoke-interface {v4, v3}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_7

    :cond_10
    move v1, v3

    move/from16 v19, v5

    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v4, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v4, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_7

    :cond_11
    move/from16 v19, v5

    move v1, v6

    :goto_7
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    if-eqz v3, :cond_12

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v3, v4}, Landroidx/media3/extractor/ts/TsExtractor;->seek(JJ)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_12

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    return v19

    :cond_12
    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz v3, :cond_13

    iget-object v4, v3, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v4, :cond_13

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v2}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->handlePendingSeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_13
    move-object/from16 v4, p1

    goto :goto_8

    :cond_14
    move-object v4, v1

    move/from16 v19, v5

    move v1, v6

    :goto_8
    iget-object v2, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    rsub-int v5, v5, 0x24b8

    const/16 v6, 0xbc

    if-ge v5, v6, :cond_16

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-lez v5, :cond_15

    iget v7, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v3, v7, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    invoke-virtual {v2, v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    :cond_16
    :goto_9
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    iget-object v7, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    if-ge v5, v6, :cond_1a

    iget v5, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    rsub-int v8, v5, 0x24b8

    invoke-interface {v4, v3, v5, v8}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_19

    move v6, v1

    :goto_a
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_18

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ts/TsPayloadReader;

    instance-of v1, v0, Landroidx/media3/extractor/ts/PesReader;

    if-eqz v1, :cond_17

    check-cast v0, Landroidx/media3/extractor/ts/PesReader;

    iget v1, v0, Landroidx/media3/extractor/ts/PesReader;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    iget v1, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-ne v1, v9, :cond_17

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    move/from16 v14, v19

    invoke-virtual {v0, v14, v1}, Landroidx/media3/extractor/ts/PesReader;->consume(ILandroidx/media3/common/util/ParsableByteArray;)V

    :cond_17
    add-int/lit8 v6, v6, 0x1

    const/16 v19, 0x1

    goto :goto_a

    :cond_18
    return v9

    :cond_19
    add-int/2addr v5, v8

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    const/16 v19, 0x1

    goto :goto_9

    :cond_1a
    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget-object v5, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    :goto_b
    if-ge v3, v4, :cond_1b

    aget-byte v8, v5, v3

    const/16 v11, 0x47

    if-eq v8, v11, :cond_1b

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1b
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v3, v6

    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-le v3, v4, :cond_1c

    return v1

    :cond_1c
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    const/high16 v6, 0x800000

    and-int/2addr v6, v5

    if-eqz v6, :cond_1d

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v1

    :cond_1d
    const/high16 v6, 0x400000

    and-int/2addr v6, v5

    if-eqz v6, :cond_1e

    const/4 v6, 0x1

    goto :goto_c

    :cond_1e
    move v6, v1

    :goto_c
    const v8, 0x1fff00

    and-int/2addr v8, v5

    shr-int/lit8 v8, v8, 0x8

    and-int/lit8 v9, v5, 0x20

    if-eqz v9, :cond_1f

    const/4 v9, 0x1

    goto :goto_d

    :cond_1f
    move v9, v1

    :goto_d
    and-int/lit8 v10, v5, 0x10

    if-eqz v10, :cond_20

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/ts/TsPayloadReader;

    goto :goto_e

    :cond_20
    const/4 v7, 0x0

    :goto_e
    if-nez v7, :cond_21

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v1

    :cond_21
    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v10, v5, -0x1

    iget-object v11, v0, Landroidx/media3/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    invoke-virtual {v11, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v10, v5, :cond_22

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v1

    :cond_22
    const/16 v19, 0x1

    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v10, v10, 0xf

    if-eq v5, v10, :cond_23

    invoke-interface {v7}, Landroidx/media3/extractor/ts/TsPayloadReader;->seek()V

    :cond_23
    if-eqz v9, :cond_25

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    and-int/lit8 v9, v9, 0x40

    if-eqz v9, :cond_24

    const/4 v9, 0x2

    goto :goto_f

    :cond_24
    move v9, v1

    :goto_f
    or-int/2addr v6, v9

    const/16 v19, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_25
    iget-boolean v5, v0, Landroidx/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    if-nez v5, :cond_26

    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    if-nez v8, :cond_27

    :cond_26
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    invoke-interface {v7, v6, v2}, Landroidx/media3/extractor/ts/TsPayloadReader;->consume(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    :cond_27
    if-nez v5, :cond_28

    iget-boolean v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    if-eqz v4, :cond_28

    cmp-long v4, v12, v17

    if-eqz v4, :cond_28

    const/4 v14, 0x1

    iput-boolean v14, v0, Landroidx/media3/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    :cond_28
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v1
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const-wide/16 v8, 0x0

    if-ge v7, v5, :cond_4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/common/util/TimestampAdjuster;

    monitor-enter v10

    :try_start_0
    iget-wide v11, v10, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v11, v13

    const/4 v12, 0x1

    if-nez v11, :cond_0

    move v11, v12

    goto :goto_1

    :cond_0
    move v11, v6

    :goto_1
    if-nez v11, :cond_2

    invoke-virtual {v10}, Landroidx/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v15

    cmp-long v11, v15, v13

    if-eqz v11, :cond_1

    cmp-long v8, v15, v8

    if-eqz v8, :cond_1

    cmp-long v8, v15, v1

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    move v12, v6

    :goto_2
    move v11, v12

    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v10, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;->reset(J)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    cmp-long v4, v1, v8

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v1, v2}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_5
    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v0, v0, Landroidx/media3/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    :goto_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ts/TsPayloadReader;

    invoke-interface {v0}, Landroidx/media3/extractor/ts/TsPayloadReader;->seek()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5

    iget-object p0, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object p0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v0, 0x0

    const/16 v1, 0x3ac

    invoke-virtual {p1, v0, v0, p0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    move v1, v0

    :goto_0
    const/16 v2, 0xbc

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    mul-int/lit16 v3, v2, 0xbc

    add-int/2addr v3, v1

    aget-byte v3, p0, v3

    const/16 v4, 0x47

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->skipFully(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method
