.class public final Landroidx/media3/extractor/ts/PsBinarySearchSeeker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final minimumSearchRange:I

.field public final seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

.field public seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

.field public final timestampSeeker:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->timestampSeeker:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;

    iput p13, p0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->minimumSearchRange:I

    move-object p2, p1

    new-instance p1, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    invoke-direct/range {p1 .. p12}, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJ)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    return-void
.end method

.method public static access$100(I[B)I
    .locals 2

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p0, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x3

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I
    .locals 2

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p3, Landroidx/media3/extractor/PositionHolder;->position:J

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final handlePendingSeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :goto_0
    iget-object v3, v0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    iget-wide v6, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iget-wide v8, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    sub-long/2addr v6, v4

    iget v10, v0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->minimumSearchRange:I

    int-to-long v10, v10

    cmp-long v6, v6, v10

    const/4 v7, 0x0

    iget-object v10, v0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->timestampSeeker:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;

    if-gtz v6, :cond_0

    iput-object v7, v0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-interface {v10}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->onSeekFinished()V

    invoke-static {v1, v4, v5, v2}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_0
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v8, v4

    const-wide/16 v11, 0x0

    cmp-long v6, v4, v11

    if-ltz v6, :cond_6

    const-wide/32 v13, 0x40000

    cmp-long v6, v4, v13

    if-gtz v6, :cond_6

    long-to-int v4, v4

    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    invoke-interface {v10, v1, v4, v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->searchForTimestamp(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v4

    iget v5, v4, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    move-wide v15, v11

    iget-wide v11, v4, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    move-wide/from16 v17, v13

    iget-wide v13, v4, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    const/4 v4, -0x3

    if-eq v5, v4, :cond_5

    const/4 v4, -0x2

    if-eq v5, v4, :cond_4

    const/4 v4, -0x1

    if-eq v5, v4, :cond_3

    if-nez v5, :cond_2

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    sub-long v3, v13, v3

    cmp-long v5, v3, v15

    if-ltz v5, :cond_1

    cmp-long v5, v3, v17

    if-gtz v5, :cond_1

    long-to-int v3, v3

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_1
    iput-object v7, v0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-interface {v10}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->onSeekFinished()V

    invoke-static {v1, v13, v14, v2}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid case"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-wide v11, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    iput-wide v13, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iget-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    iget-wide v6, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    iget-wide v8, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    move-wide v15, v4

    iget-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    move-wide/from16 v25, v4

    move-wide/from16 v17, v6

    move-wide/from16 v21, v8

    move-wide/from16 v19, v11

    move-wide/from16 v23, v13

    invoke-static/range {v15 .. v26}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    goto/16 :goto_0

    :cond_4
    move-wide v4, v11

    move-wide v6, v13

    iput-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    iput-wide v6, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    iget-wide v8, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    iget-wide v10, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    iget-wide v12, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iget-wide v14, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    move-wide/from16 v17, v4

    move-wide/from16 v21, v6

    move-wide/from16 v19, v10

    move-wide/from16 v23, v12

    move-wide/from16 v25, v14

    move-wide v15, v8

    invoke-static/range {v15 .. v26}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    goto/16 :goto_0

    :cond_5
    iput-object v7, v0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-interface {v10}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->onSeekFinished()V

    invoke-static {v1, v8, v9, v2}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_6
    invoke-static {v1, v8, v9, v2}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0
.end method

.method public final setSeekTargetUs(J)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    iget-object v1, v0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v1, :cond_0

    iget-wide v4, v1, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    iget-object v4, v0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    iget-object v5, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;

    invoke-interface {v5, v2, v3}, Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;->timeUsToTargetTime(J)J

    move-result-wide v5

    move-wide v8, v5

    iget-wide v6, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    move-wide v10, v8

    iget-wide v8, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    move-wide v12, v10

    iget-wide v10, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    iget-wide v4, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    move-wide v14, v12

    move-wide v12, v4

    move-wide v4, v14

    invoke-direct/range {v1 .. v13}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;-><init>(JJJJJJ)V

    iput-object v1, v0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    return-void
.end method
