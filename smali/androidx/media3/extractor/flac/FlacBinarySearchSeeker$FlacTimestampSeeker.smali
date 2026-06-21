.class public final Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;


# instance fields
.field public final flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

.field public final frameStartMarker:I

.field public final sampleNumberHolder:Landroidx/media3/extractor/PositionHolder;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iput p2, p0, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->frameStartMarker:I

    new-instance p1, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->sampleNumberHolder:Landroidx/media3/extractor/PositionHolder;

    return-void
.end method


# virtual methods
.method public final findNextFrame(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 14

    :goto_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    iget-object v1, p0, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->sampleNumberHolder:Landroidx/media3/extractor/PositionHolder;

    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    if-gez v0, :cond_3

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v6

    const/4 v0, 0x2

    new-array v3, v0, [B

    const/4 v8, 0x0

    invoke-interface {p1, v8, v0, v3}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    aget-byte v9, v3, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x1

    aget-byte v11, v3, v10

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v9, v11

    iget v11, p0, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->frameStartMarker:I

    if-eq v9, v11, :cond_0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    sub-long/2addr v6, v11

    long-to-int v0, v6

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_3

    :cond_0
    new-instance v9, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v12, 0x10

    invoke-direct {v9, v12}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v12, v9, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v3, v8, v12, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v9, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    :goto_1
    const/16 v12, 0xe

    if-ge v8, v12, :cond_2

    add-int v12, v0, v8

    rsub-int/lit8 v13, v8, 0xe

    invoke-interface {p1, v12, v13, v3}, Landroidx/media3/extractor/ExtractorInput;->peek(II[B)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v8, v12

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v9, v8}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    sub-long/2addr v6, v12

    long-to-int v0, v6

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    invoke-static {v9, v2, v11, v1}, Landroidx/media3/extractor/AacUtil;->checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/PositionHolder;)Z

    move-result v8

    :goto_3
    if-nez v8, :cond_3

    invoke-interface {p1, v10}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v6

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v8

    sub-long/2addr v8, v4

    cmp-long p0, v6, v8

    if-ltz p0, :cond_4

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v3

    sub-long/2addr v0, v3

    long-to-int p0, v0

    invoke-interface {p1, p0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    iget-wide p0, v2, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    return-wide p0

    :cond_4
    iget-wide p0, v1, Landroidx/media3/extractor/PositionHolder;->position:J

    return-wide p0
.end method

.method public final searchForTimestamp(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 18

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->findNextFrame(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v1, v1, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    const/4 v6, 0x6

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v6, p1

    invoke-interface {v6, v1}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->findNextFrame(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v14

    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v16

    cmp-long v0, v2, p2

    if-gtz v0, :cond_0

    cmp-long v0, v14, p2

    if-lez v0, :cond_0

    new-instance v6, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6

    :cond_0
    cmp-long v0, v14, p2

    if-gtz v0, :cond_1

    new-instance v12, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v13, -0x2

    invoke-direct/range {v12 .. v17}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v12

    :cond_1
    new-instance v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v0
.end method
