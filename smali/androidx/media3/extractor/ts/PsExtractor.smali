.class public final Landroidx/media3/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

.field public foundAllTracks:Z

.field public foundAudioTrack:Z

.field public foundVideoTrack:Z

.field public hasOutputSeekMap:Z

.field public lastTrackPosition:J

.field public output:Landroidx/media3/extractor/ExtractorOutput;

.field public psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

.field public final psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public final psPayloadReaders:Landroid/util/SparseArray;

.field public final timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    new-instance v0, Landroidx/media3/extractor/ts/PsDurationReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/extractor/ts/PsDurationReader;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v13

    const-wide/16 v18, -0x1

    cmp-long v3, v13, v18

    const/4 v4, 0x3

    const/16 v7, 0x1ba

    iget-object v8, v0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_a

    iget-boolean v12, v8, Landroidx/media3/extractor/ts/PsDurationReader;->isDurationRead:Z

    if-nez v12, :cond_a

    iget-object v0, v8, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-object v3, v8, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-boolean v12, v8, Landroidx/media3/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    const-wide/16 v13, 0x4e20

    if-nez v12, :cond_3

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v0, v12

    int-to-long v12, v0

    sub-long/2addr v5, v12

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    cmp-long v4, v12, v5

    if-eqz v4, :cond_0

    iput-wide v5, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    return v10

    :cond_0
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v11, v0, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    iget v0, v3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v1, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    sub-int/2addr v1, v9

    :goto_0
    if-lt v1, v0, :cond_2

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v1, v2}, Landroidx/media3/extractor/ts/PsDurationReader;->peekIntAtPosition(I[B)I

    move-result v2

    if-ne v2, v7, :cond_1

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static {v3}, Landroidx/media3/extractor/ts/PsDurationReader;->readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v4

    cmp-long v2, v4, v15

    if-eqz v2, :cond_1

    move-wide v5, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    move-wide v5, v15

    :goto_1
    iput-wide v5, v8, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    iput-boolean v10, v8, Landroidx/media3/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    return v11

    :cond_3
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v5, v8, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    cmp-long v5, v5, v15

    if-nez v5, :cond_4

    invoke-virtual {v8, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)V

    return v11

    :cond_4
    iget-boolean v5, v8, Landroidx/media3/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    if-nez v5, :cond_8

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v0, v5

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    int-to-long v12, v11

    cmp-long v5, v5, v12

    if-eqz v5, :cond_5

    iput-wide v12, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    return v10

    :cond_5
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v11, v0, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    iget v0, v3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v1, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    :goto_2
    add-int/lit8 v2, v1, -0x3

    if-ge v0, v2, :cond_7

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v0, v2}, Landroidx/media3/extractor/ts/PsDurationReader;->peekIntAtPosition(I[B)I

    move-result v2

    if-ne v2, v7, :cond_6

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static {v3}, Landroidx/media3/extractor/ts/PsDurationReader;->readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v5

    cmp-long v2, v5, v15

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move-wide v5, v15

    :goto_3
    iput-wide v5, v8, Landroidx/media3/extractor/ts/PsDurationReader;->firstScrValue:J

    iput-boolean v10, v8, Landroidx/media3/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    return v11

    :cond_8
    iget-wide v2, v8, Landroidx/media3/extractor/ts/PsDurationReader;->firstScrValue:J

    cmp-long v4, v2, v15

    if-nez v4, :cond_9

    invoke-virtual {v8, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)V

    return v11

    :cond_9
    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v2

    iget-wide v4, v8, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    invoke-virtual {v0, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestampGreaterThanPreviousTimestamp(J)J

    move-result-wide v4

    sub-long/2addr v4, v2

    iput-wide v4, v8, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    invoke-virtual {v8, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)V

    return v11

    :cond_a
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    iget-boolean v5, v0, Landroidx/media3/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    if-nez v5, :cond_c

    iput-boolean v10, v0, Landroidx/media3/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    iget-wide v5, v8, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    cmp-long v12, v5, v15

    if-eqz v12, :cond_b

    move v12, v4

    new-instance v4, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v8, v8, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    move-wide v15, v5

    new-instance v5, Lcom/google/mlkit/common/internal/zze;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Lcom/google/mlkit/common/internal/zze;-><init>(I)V

    new-instance v6, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v6, v8}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Landroidx/media3/common/util/TimestampAdjuster;)V

    const-wide/16 v20, 0x1

    add-long v20, v15, v20

    move/from16 v17, v7

    move-wide v7, v15

    const-wide/16 v15, 0xbc

    move/from16 v22, v17

    const/16 v17, 0x3e8

    move/from16 v24, v11

    move/from16 v23, v12

    const-wide/16 v11, 0x0

    move/from16 v25, v3

    move v3, v9

    move-wide/from16 v9, v20

    invoke-direct/range {v4 .. v17}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V

    iput-object v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v5, v0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v4, v4, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    invoke-interface {v5, v4}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_4

    :cond_b
    move/from16 v25, v3

    move-wide v7, v5

    move v3, v9

    iget-object v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v5, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v5, v7, v8}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v4, v5}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_4

    :cond_c
    move/from16 v25, v3

    move v3, v9

    :goto_4
    iget-object v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz v4, :cond_d

    iget-object v5, v4, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v5, :cond_d

    invoke-virtual {v4, v1, v2}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->handlePendingSeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_d
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    if-eqz v25, :cond_e

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    sub-long/2addr v13, v4

    goto :goto_5

    :cond_e
    move-wide/from16 v13, v18

    :goto_5
    cmp-long v2, v13, v18

    if-eqz v2, :cond_f

    const-wide/16 v4, 0x4

    cmp-long v2, v13, v4

    if-gez v2, :cond_f

    goto :goto_6

    :cond_f
    iget-object v2, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v1, v6, v5, v4, v3}, Landroidx/media3/extractor/ExtractorInput;->peekFully(IZ[BI)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const/16 v7, 0x1b9

    if-ne v4, v7, :cond_11

    :goto_6
    const/4 v0, -0x1

    return v0

    :cond_11
    const/16 v7, 0x1ba

    if-ne v4, v7, :cond_12

    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v3, 0xa

    invoke-interface {v1, v6, v3, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0xe

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return v6

    :cond_12
    const/16 v7, 0x1bb

    const/4 v8, 0x2

    const/4 v9, 0x6

    if-ne v4, v7, :cond_13

    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v6, v8, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    add-int/2addr v0, v9

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return v6

    :cond_13
    and-int/lit16 v7, v4, -0x100

    const/16 v10, 0x8

    shr-int/2addr v7, v10

    if-eq v7, v5, :cond_14

    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return v6

    :cond_14
    and-int/lit16 v7, v4, 0xff

    iget-object v11, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    iget-boolean v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v13, :cond_1a

    if-nez v12, :cond_18

    const/16 v13, 0xbd

    const-string/jumbo v14, "video/mp2p"

    if-ne v7, v13, :cond_15

    new-instance v4, Landroidx/media3/extractor/ts/Ac3Reader;

    invoke-direct {v4, v14}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    iput-boolean v5, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundAudioTrack:Z

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v13

    iput-wide v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_7

    :cond_15
    and-int/lit16 v13, v4, 0xe0

    const/16 v15, 0xc0

    const/4 v3, 0x0

    if-ne v13, v15, :cond_16

    new-instance v4, Landroidx/media3/extractor/ts/MpegAudioReader;

    invoke-direct {v4, v3, v6, v14}, Landroidx/media3/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-boolean v5, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundAudioTrack:Z

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v13

    iput-wide v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_7

    :cond_16
    and-int/lit16 v4, v4, 0xf0

    const/16 v13, 0xe0

    if-ne v4, v13, :cond_17

    new-instance v4, Landroidx/media3/extractor/ts/H262Reader;

    invoke-direct {v4, v3, v14}, Landroidx/media3/extractor/ts/H262Reader;-><init>(Lcom/motorola/camera/CameraKpi;Ljava/lang/String;)V

    iput-boolean v5, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundVideoTrack:Z

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v13

    iput-wide v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_7

    :cond_17
    move-object v4, v3

    :goto_7
    if-eqz v4, :cond_18

    new-instance v3, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v12, 0x100

    invoke-direct {v3, v7, v12}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    iget-object v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v4, v12, v3}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    new-instance v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    iget-object v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-direct {v12, v4, v3}, Landroidx/media3/extractor/ts/PsExtractor$PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;Landroidx/media3/common/util/TimestampAdjuster;)V

    invoke-virtual {v11, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_18
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz v3, :cond_19

    iget-boolean v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-eqz v3, :cond_19

    iget-wide v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    const-wide/16 v13, 0x2000

    add-long/2addr v3, v13

    goto :goto_8

    :cond_19
    const-wide/32 v3, 0x100000

    :goto_8
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v13

    cmp-long v3, v13, v3

    if-lez v3, :cond_1a

    iput-boolean v5, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundAllTracks:Z

    iget-object v0, v0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    :cond_1a
    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v6, v8, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    add-int/2addr v0, v9

    if-nez v12, :cond_1b

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return v6

    :cond_1b
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v3, v6, v0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    iget-object v1, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/extractor/VorbisBitArray;

    iget-object v3, v1, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    const/4 v4, 0x3

    invoke-virtual {v2, v6, v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v1, v6}, Landroidx/media3/extractor/VorbisBitArray;->setPosition(I)V

    invoke-virtual {v1, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v3

    iput-boolean v3, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v3

    iput-boolean v3, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v1, v10}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    iget-object v4, v1, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    invoke-virtual {v2, v6, v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v1, v6}, Landroidx/media3/extractor/VorbisBitArray;->setPosition(I)V

    iget-object v3, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v7, 0x0

    iput-wide v7, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timeUs:J

    iget-boolean v4, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    if-eqz v4, :cond_1d

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v7

    int-to-long v7, v7

    const/16 v4, 0x1e

    shl-long/2addr v7, v4

    invoke-virtual {v1, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/16 v9, 0xf

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    shl-int/2addr v10, v9

    int-to-long v10, v10

    or-long/2addr v7, v10

    invoke-virtual {v1, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    int-to-long v10, v10

    or-long/2addr v7, v10

    invoke-virtual {v1, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    iget-boolean v10, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    if-nez v10, :cond_1c

    iget-boolean v10, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    if-eqz v10, :cond_1c

    const/4 v10, 0x4

    invoke-virtual {v1, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    int-to-long v10, v10

    shl-long/2addr v10, v4

    invoke-virtual {v1, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    shl-int/2addr v4, v9

    int-to-long v13, v4

    or-long/2addr v10, v13

    invoke-virtual {v1, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    int-to-long v13, v4

    or-long v9, v10, v13

    invoke-virtual {v1, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v3, v9, v10}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    iput-boolean v5, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    :cond_1c
    invoke-virtual {v3, v7, v8}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v3

    iput-wide v3, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timeUs:J

    :cond_1d
    iget-wide v3, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timeUs:J

    const/4 v10, 0x4

    invoke-interface {v0, v10, v3, v4}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetStarted(IJ)V

    invoke-interface {v0, v2}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    invoke-interface {v0, v6}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetFinished(Z)V

    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v0, v0

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    return v6
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 7

    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    monitor-enter p2

    :try_start_0
    iget-wide v0, p2, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroidx/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    cmp-long v0, v5, p3

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p2, p3, p4}, Landroidx/media3/common/util/TimestampAdjuster;->reset(J)V

    :cond_3
    iget-object p0, p0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p3, p4}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_4
    move p0, v4

    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p0, p2, :cond_5

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    iput-boolean v4, p2, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    iget-object p2, p2, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {p2}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->seek()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 8

    const/16 p0, 0xe

    new-array v0, p0, [B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr p0, v3

    const/4 v3, 0x2

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr p0, v4

    const/4 v4, 0x3

    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    or-int/2addr p0, v6

    const/16 v6, 0x1ba

    if-eq v6, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    aget-byte v6, v0, p0

    and-int/lit16 v6, v6, 0xc4

    const/16 v7, 0x44

    if-eq v6, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x6

    aget-byte v6, v0, v6

    and-int/2addr v6, p0

    if-eq v6, p0, :cond_2

    goto :goto_0

    :cond_2
    aget-byte v6, v0, v5

    and-int/2addr v6, p0

    if-eq v6, p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 p0, 0x9

    aget-byte p0, v0, p0

    and-int/2addr p0, v2

    if-eq p0, v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0xc

    aget-byte p0, v0, p0

    and-int/2addr p0, v4

    if-eq p0, v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 p0, 0xd

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x7

    invoke-virtual {p1, p0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    invoke-virtual {p1, v1, v1, v0, v4}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    aget-byte p1, v0, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v5

    or-int/2addr p0, p1

    aget-byte p1, v0, v3

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    if-ne v2, p0, :cond_6

    return v2

    :cond_6
    :goto_0
    return v1
.end method
