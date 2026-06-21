.class public final Landroidx/media3/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field public accumulatedSampleSizes:[[J

.field public atomData:Landroidx/media3/common/util/ParsableByteArray;

.field public final atomHeader:Landroidx/media3/common/util/ParsableByteArray;

.field public atomHeaderBytesRead:I

.field public atomSize:J

.field public atomType:I

.field public axteAtomOffset:J

.field public final containerAtoms:Ljava/util/ArrayDeque;

.field public durationUs:J

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public fileType:I

.field public firstVideoTrackIndex:I

.field public final flags:I

.field public isSampleDependedOn:Z

.field public lastSniffFailures:Lcom/google/common/collect/RegularImmutableList;

.field public motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

.field public final nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

.field public final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field public parserState:I

.field public readingAuxiliaryTracks:Z

.field public sampleBytesRead:I

.field public sampleBytesWritten:I

.field public sampleCurrentNalBytesRemaining:I

.field public sampleOffsetForAuxiliaryTracks:J

.field public sampleTrackIndex:I

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public seekToAxteAtom:Z

.field public seenFtypAtom:Z

.field public final sefReader:Landroidx/media3/extractor/mp4/SefReader;

.field public final slowMotionMetadataEntries:Ljava/util/ArrayList;

.field public final subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iput p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    sget-object p1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object p1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->lastSniffFailures:Lcom/google/common/collect/RegularImmutableList;

    and-int/lit8 p1, p2, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    new-instance p1, Landroidx/media3/extractor/mp4/SefReader;

    invoke-direct {p1}, Landroidx/media3/extractor/mp4/SefReader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/ArrayList;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v0, Landroidx/media3/container/ObuParser;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    sget-object p1, Landroidx/media3/extractor/ExtractorOutput;->PLACEHOLDER:Landroidx/transition/Transition$1;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-array p1, p2, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v4, v3

    sget-object v5, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    if-nez v4, :cond_0

    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v0, v5, v5}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v0

    :cond_0
    iget v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    const/4 v6, 0x0

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    if-eq v4, v9, :cond_5

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v4, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    invoke-static {v4, v1, v2, v6}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v12

    :goto_0
    if-ltz v12, :cond_2

    iget-object v13, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    aget v13, v13, v12

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :cond_2
    move v12, v9

    :goto_1
    if-ne v12, v9, :cond_3

    invoke-virtual {v3, v1, v2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v12

    :cond_3
    iget-object v13, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    if-ne v12, v9, :cond_4

    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v0, v5, v5}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v0

    :cond_4
    aget-wide v14, v4, v12

    aget-wide v16, v13, v12

    cmp-long v5, v14, v1

    if-gez v5, :cond_6

    iget v5, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v12, v5, :cond_6

    invoke-virtual {v3, v1, v2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    if-eq v1, v9, :cond_6

    if-eq v1, v12, :cond_6

    aget-wide v2, v4, v1

    aget-wide v10, v13, v1

    goto :goto_2

    :cond_5
    const-wide v16, 0x7fffffffffffffffL

    move-wide v14, v1

    :cond_6
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    move v1, v6

    move-wide/from16 v4, v16

    :goto_3
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v13, v12

    if-ge v1, v13, :cond_11

    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    if-eq v1, v13, :cond_10

    aget-object v12, v12, v1

    iget-object v12, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v13, v12, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v7, v12, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    iget-object v8, v12, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    invoke-static {v8, v14, v15, v6}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v18

    :goto_4
    if-ltz v18, :cond_8

    aget v19, v7, v18

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_7

    move/from16 v6, v18

    goto :goto_5

    :cond_7
    add-int/lit8 v18, v18, -0x1

    goto :goto_4

    :cond_8
    move v6, v9

    :goto_5
    if-ne v6, v9, :cond_9

    invoke-virtual {v12, v14, v15}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v6

    :cond_9
    if-ne v6, v9, :cond_a

    move-wide/from16 p1, v10

    goto :goto_6

    :cond_a
    move-wide/from16 p1, v10

    aget-wide v9, v13, v6

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :goto_6
    cmp-long v6, v2, v16

    if-eqz v6, :cond_f

    const/4 v6, 0x0

    invoke-static {v8, v2, v3, v6}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v8

    :goto_7
    if-ltz v8, :cond_c

    aget v9, v7, v8

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_b

    :goto_8
    const/4 v7, -0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    :cond_c
    const/4 v8, -0x1

    goto :goto_8

    :goto_9
    if-ne v8, v7, :cond_d

    invoke-virtual {v12, v2, v3}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v8

    :cond_d
    if-ne v8, v7, :cond_e

    move-wide/from16 v10, p1

    goto :goto_a

    :cond_e
    aget-wide v8, v13, v8

    move-wide/from16 v10, p1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    goto :goto_a

    :cond_f
    move-wide/from16 v10, p1

    const/4 v6, 0x0

    const/4 v7, -0x1

    goto :goto_a

    :cond_10
    move v7, v9

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :goto_a
    add-int/lit8 v1, v1, 0x1

    move v9, v7

    goto :goto_3

    :cond_11
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v0, v14, v15, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    cmp-long v1, v2, v16

    if-nez v1, :cond_12

    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v0, v0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v1

    :cond_12
    new-instance v1, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v1, v2, v3, v10, v11}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance v2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v2, v0, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v2
.end method

.method public final getSniffFailureDetails()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->lastSniffFailures:Lcom/google/common/collect/RegularImmutableList;

    return-object p0
.end method

.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/Latch;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/compose/runtime/Latch;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final processAtomEnded(J)V
    .locals 37

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6f

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-wide v5, v2, Landroidx/media3/container/Mp4Box$ContainerBox;->endPosition:J

    cmp-long v2, v5, p1

    if-nez v2, :cond_6f

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v2, v5, Landroidx/media3/decoder/Buffer;->flags:I

    const v6, 0x6d6f6f76

    if-ne v2, v6, :cond_6e

    const v2, 0x6d657461

    invoke-virtual {v5, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const v8, 0x68646c72    # 4.3148E24f

    const/4 v9, 0x4

    const/16 v10, 0x10

    const v11, 0x64617461

    const/16 v12, 0xc

    const-wide/16 v16, 0x0

    const v13, 0x696c7374

    iget v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    const/16 v2, 0x8

    move-object/from16 v19, v7

    const/4 v7, 0x1

    if-eqz v6, :cond_13

    sget-object v20, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    invoke-virtual {v6, v8}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v15

    const v8, 0x6b657973

    invoke-virtual {v6, v8}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v8

    invoke-virtual {v6, v13}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v6

    if-eqz v15, :cond_8

    if-eqz v8, :cond_8

    if-eqz v6, :cond_8

    iget-object v15, v15, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v15, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    const v10, 0x6d647461

    if-eq v15, v10, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v8, v8, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    new-array v15, v10, [Ljava/lang/String;

    move v12, v3

    :goto_1
    if-ge v12, v10, :cond_2

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v24

    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v13, v24, -0x8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v13, v9}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v15, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x4

    const v13, 0x696c7374

    goto :goto_1

    :cond_2
    iget-object v6, v6, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    if-le v9, v2, :cond_7

    iget v9, v6, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    sub-int/2addr v13, v7

    if-ltz v13, :cond_5

    if-ge v13, v10, :cond_5

    aget-object v13, v15, v13

    add-int v2, v9, v12

    :goto_3
    iget v4, v6, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v4, v2, :cond_4

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v27

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v11, :cond_3

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    add-int/lit8 v7, v27, -0x10

    new-array v11, v7, [B

    invoke-virtual {v6, v3, v7, v11}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance v7, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-direct {v7, v13, v11, v4, v2}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    goto :goto_4

    :cond_3
    add-int v4, v4, v27

    invoke-virtual {v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v7, 0x1

    const v11, 0x64617461

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_6

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    const-string v2, "BoxParsers"

    const-string v4, "Skipped metadata with unknown key index: "

    invoke-static {v4, v13, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    :cond_6
    :goto_5
    add-int/2addr v9, v12

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 v2, 0x8

    const/4 v7, 0x1

    const v11, 0x64617461

    goto :goto_2

    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    new-instance v2, Landroidx/media3/common/Metadata;

    invoke-direct {v2, v8}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_7
    iget-boolean v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->readingAuxiliaryTracks:Z

    if-eqz v4, :cond_10

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    const-string v4, "auxiliary.tracks.interleaved"

    invoke-static {v2, v4}, Landroidx/media3/extractor/mp4/Sniffer;->findMdtaMetadataEntryWithKey(Landroidx/media3/common/Metadata;Ljava/lang/String;)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, v4, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    aget-byte v4, v4, v3

    if-nez v4, :cond_a

    iget-wide v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->axteAtomOffset:J

    const-wide/16 v8, 0x10

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleOffsetForAuxiliaryTracks:J

    :cond_a
    const-string v4, "auxiliary.tracks.map"

    invoke-static {v2, v4}, Landroidx/media3/extractor/mp4/Sniffer;->findMdtaMetadataEntryWithKey(Landroidx/media3/common/Metadata;Ljava/lang/String;)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroidx/media3/container/MdtaMetadataEntry;->getAuxiliaryTrackTypesFromMap()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v3

    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_f

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_e

    const/4 v9, 0x1

    if-eq v8, v9, :cond_d

    const/4 v9, 0x2

    if-eq v8, v9, :cond_c

    const/4 v9, 0x3

    if-eq v8, v9, :cond_b

    move v8, v3

    goto :goto_9

    :cond_b
    const/4 v8, 0x4

    goto :goto_9

    :cond_c
    const/4 v8, 0x3

    goto :goto_9

    :cond_d
    const/4 v8, 0x2

    goto :goto_9

    :cond_e
    const/4 v8, 0x1

    :goto_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_f
    move-object v4, v7

    const/4 v9, 0x1

    goto :goto_b

    :cond_10
    if-nez v2, :cond_12

    :cond_11
    const/4 v9, 0x1

    goto :goto_a

    :cond_12
    and-int/lit8 v4, v14, 0x40

    if-eqz v4, :cond_11

    const-string v4, "auxiliary.tracks.offset"

    invoke-static {v2, v4}, Landroidx/media3/extractor/mp4/Sniffer;->findMdtaMetadataEntryWithKey(Landroidx/media3/common/Metadata;Ljava/lang/String;)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v4

    if-eqz v4, :cond_11

    new-instance v6, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-direct {v6, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    cmp-long v4, v6, v16

    if-lez v4, :cond_11

    iput-wide v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->axteAtomOffset:J

    const/4 v9, 0x1

    iput-boolean v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seekToAxteAtom:Z

    move-object/from16 v31, v1

    goto/16 :goto_3b

    :goto_a
    move-object/from16 v4, v19

    goto :goto_b

    :cond_13
    move v9, v7

    move-object/from16 v4, v19

    const/4 v2, 0x0

    :goto_b
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    if-ne v6, v9, :cond_14

    const/4 v11, 0x1

    goto :goto_c

    :cond_14
    move v11, v3

    :goto_c
    new-instance v6, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v6}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    const v7, 0x75647461

    invoke-virtual {v5, v7}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v7

    if-eqz v7, :cond_52

    sget-object v9, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    iget-object v7, v7, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-instance v10, Landroidx/media3/common/Metadata;

    new-array v12, v3, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v10, v12}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    :goto_d
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v12

    if-lt v12, v9, :cond_51

    iget v12, v7, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v19

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    const v15, 0x6d657461

    if-ne v8, v15, :cond_41

    invoke-virtual {v7, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int v8, v12, v19

    invoke-virtual {v7, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget v9, v7, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const/4 v15, 0x4

    invoke-virtual {v7, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    const v3, 0x68646c72    # 4.3148E24f

    if-eq v15, v3, :cond_15

    add-int/lit8 v9, v9, 0x4

    :cond_15
    invoke-virtual {v7, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_e
    iget v9, v7, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v9, v8, :cond_3f

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    move-object/from16 v31, v1

    const v1, 0x696c7374

    if-ne v3, v1, :cond_3e

    invoke-virtual {v7, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v9, v15

    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    iget v8, v7, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v8, v9, :cond_3c

    const-string v15, "Skipped unknown metadata entry: "

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v25

    add-int v8, v25, v8

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    move/from16 v32, v9

    shr-int/lit8 v9, v1, 0x18

    and-int/lit16 v9, v9, 0xff

    move/from16 v33, v11

    const/16 v11, 0xa9

    move/from16 v34, v14

    const-string v14, "MetadataUtil"

    move-object/from16 v35, v13

    const-string v13, "TCON"

    if-eq v9, v11, :cond_16

    const/16 v11, 0xfd

    if-ne v9, v11, :cond_17

    :cond_16
    const v9, 0x64617461

    goto/16 :goto_16

    :cond_17
    const v9, 0x676e7265

    if-ne v1, v9, :cond_19

    :try_start_0
    invoke-static {v7}, Landroidx/media3/extractor/mp4/Sniffer;->parseIntegerAttribute(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v1

    const/16 v28, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Landroidx/media3/extractor/metadata/id3/Id3Util;->resolveV1Genre(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    new-instance v9, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    const/4 v11, 0x0

    invoke-direct {v9, v13, v11, v1}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/RegularImmutableList;)V

    goto :goto_10

    :cond_18
    const/4 v11, 0x0

    const-string v1, "Failed to parse standard genre code"

    invoke-static {v14, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v11

    :goto_10
    invoke-virtual {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_19

    :cond_19
    const/4 v11, 0x0

    const v9, 0x6469736b

    if-ne v1, v9, :cond_1a

    :try_start_1
    const-string v9, "TPOS"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseIndexAndCountAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto :goto_10

    :catchall_0
    move-exception v0

    goto/16 :goto_1a

    :cond_1a
    const v9, 0x74726b6e

    if-ne v1, v9, :cond_1b

    const-string v9, "TRCK"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseIndexAndCountAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto :goto_10

    :cond_1b
    const v9, 0x746d706f

    if-ne v1, v9, :cond_1c

    const-string v9, "TBPM"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v1, v9, v7, v14, v13}, Landroidx/media3/extractor/mp4/Sniffer;->parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v9

    goto :goto_10

    :cond_1c
    const v9, 0x6370696c

    if-ne v1, v9, :cond_1d

    const-string v9, "TCMP"

    const/4 v14, 0x1

    invoke-static {v1, v9, v7, v14, v14}, Landroidx/media3/extractor/mp4/Sniffer;->parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v9

    goto :goto_10

    :cond_1d
    const v9, 0x636f7672

    if-ne v1, v9, :cond_1e

    invoke-static {v7}, Landroidx/media3/extractor/mp4/Sniffer;->parseCoverArt(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/ApicFrame;

    move-result-object v9

    goto :goto_10

    :cond_1e
    const v9, 0x61415254

    if-ne v1, v9, :cond_1f

    const-string v9, "TPE2"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto :goto_10

    :cond_1f
    const v9, 0x736f6e6d

    if-ne v1, v9, :cond_20

    const-string v9, "TSOT"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto :goto_10

    :cond_20
    const v9, 0x736f616c

    if-ne v1, v9, :cond_21

    const-string v9, "TSOA"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto :goto_10

    :cond_21
    const v9, 0x736f6172

    if-ne v1, v9, :cond_22

    const-string v9, "TSOP"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto :goto_10

    :cond_22
    const v9, 0x736f6161

    if-ne v1, v9, :cond_23

    const-string v9, "TSO2"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto/16 :goto_10

    :cond_23
    const v9, 0x736f636f

    if-ne v1, v9, :cond_24

    const-string v9, "TSOC"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto/16 :goto_10

    :cond_24
    const v9, 0x72746e67

    if-ne v1, v9, :cond_25

    const-string v9, "ITUNESADVISORY"

    const/4 v13, 0x0

    invoke-static {v1, v9, v7, v13, v13}, Landroidx/media3/extractor/mp4/Sniffer;->parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v9

    goto/16 :goto_10

    :cond_25
    const v9, 0x70676170

    if-ne v1, v9, :cond_26

    const-string v9, "ITUNESGAPLESS"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v1, v9, v7, v13, v14}, Landroidx/media3/extractor/mp4/Sniffer;->parseIntegerAttribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v9

    goto/16 :goto_10

    :cond_26
    const v9, 0x736f736e

    if-ne v1, v9, :cond_27

    const-string v9, "TVSHOWSORT"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto/16 :goto_10

    :cond_27
    const v9, 0x74767368

    if-ne v1, v9, :cond_28

    const-string v9, "TVSHOW"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto/16 :goto_10

    :cond_28
    const v9, 0x2d2d2d2d

    if-ne v1, v9, :cond_38

    move-object v13, v11

    move-object v14, v13

    const/4 v1, -0x1

    const/4 v9, -0x1

    :goto_11
    iget v15, v7, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v15, v8, :cond_2c

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v20

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    move/from16 v36, v9

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const v9, 0x6d65616e

    if-ne v11, v9, :cond_29

    add-int/lit8 v9, v20, -0xc

    invoke-virtual {v7, v9}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v13

    :goto_12
    const v9, 0x64617461

    goto :goto_13

    :cond_29
    const v9, 0x6e616d65

    if-ne v11, v9, :cond_2a

    add-int/lit8 v9, v20, -0xc

    invoke-virtual {v7, v9}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_12

    :cond_2a
    const v9, 0x64617461

    if-ne v11, v9, :cond_2b

    move v1, v15

    move/from16 v36, v20

    :cond_2b
    add-int/lit8 v11, v20, -0xc

    invoke-virtual {v7, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :goto_13
    move/from16 v9, v36

    const/4 v11, 0x0

    goto :goto_11

    :cond_2c
    move/from16 v36, v9

    const v9, 0x64617461

    if-eqz v13, :cond_2e

    if-eqz v14, :cond_2e

    const/4 v11, -0x1

    if-ne v1, v11, :cond_2d

    goto :goto_14

    :cond_2d
    invoke-virtual {v7, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 v1, 0x10

    invoke-virtual {v7, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v1, v36, -0x10

    invoke-virtual {v7, v1}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Landroidx/media3/extractor/metadata/id3/InternalFrame;

    invoke-direct {v11, v13, v14, v1}, Landroidx/media3/extractor/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_15

    :cond_2e
    :goto_14
    const/4 v11, 0x0

    :goto_15
    invoke-virtual {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move-object v9, v11

    goto/16 :goto_19

    :goto_16
    const v11, 0xffffff

    and-int/2addr v11, v1

    const v9, 0x636d74

    if-ne v11, v9, :cond_2f

    :try_start_2
    invoke-static {v1, v7}, Landroidx/media3/extractor/mp4/Sniffer;->parseCommentAttribute(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/CommentFrame;

    move-result-object v9

    goto/16 :goto_10

    :cond_2f
    const v9, 0x6e616d

    if-eq v11, v9, :cond_3a

    const v9, 0x74726b

    if-ne v11, v9, :cond_30

    goto/16 :goto_18

    :cond_30
    const v9, 0x636f6d

    if-eq v11, v9, :cond_39

    const v9, 0x777274

    if-ne v11, v9, :cond_31

    goto/16 :goto_17

    :cond_31
    const v9, 0x646179

    if-ne v11, v9, :cond_32

    const-string v9, "TDRC"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto/16 :goto_10

    :cond_32
    const v9, 0x415254

    if-ne v11, v9, :cond_33

    const-string v9, "TPE1"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto/16 :goto_10

    :cond_33
    const v9, 0x746f6f

    if-ne v11, v9, :cond_34

    const-string v9, "TSSE"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto/16 :goto_10

    :cond_34
    const v9, 0x616c62

    if-ne v11, v9, :cond_35

    const-string v9, "TALB"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto/16 :goto_10

    :cond_35
    const v9, 0x6c7972

    if-ne v11, v9, :cond_36

    const-string v9, "USLT"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto/16 :goto_10

    :cond_36
    const v9, 0x67656e

    if-ne v11, v9, :cond_37

    invoke-static {v1, v7, v13}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto/16 :goto_10

    :cond_37
    const v9, 0x677270

    if-ne v11, v9, :cond_38

    const-string v9, "TIT1"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto/16 :goto_10

    :cond_38
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/media3/decoder/Buffer;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v9, 0x0

    goto :goto_19

    :cond_39
    :goto_17
    :try_start_3
    const-string v9, "TCOM"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9

    goto/16 :goto_10

    :cond_3a
    :goto_18
    const-string v9, "TIT2"

    invoke-static {v1, v7, v9}, Landroidx/media3/extractor/mp4/Sniffer;->parseTextAttribute(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_10

    :goto_19
    if-eqz v9, :cond_3b

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    move/from16 v9, v32

    move/from16 v11, v33

    move/from16 v14, v34

    move-object/from16 v13, v35

    const v1, 0x696c7374

    goto/16 :goto_f

    :goto_1a
    invoke-virtual {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    throw v0

    :cond_3c
    move/from16 v33, v11

    move-object/from16 v35, v13

    move/from16 v34, v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    :goto_1b
    const v29, 0x64617461

    goto :goto_1c

    :cond_3d
    new-instance v1, Landroidx/media3/common/Metadata;

    invoke-direct {v1, v3}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_1b

    :cond_3e
    move/from16 v33, v11

    move-object/from16 v35, v13

    move/from16 v34, v14

    const v29, 0x64617461

    add-int/2addr v9, v15

    invoke-virtual {v7, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v1, v31

    const v3, 0x68646c72    # 4.3148E24f

    goto/16 :goto_e

    :cond_3f
    move-object/from16 v31, v1

    move/from16 v33, v11

    move-object/from16 v35, v13

    move/from16 v34, v14

    const v29, 0x64617461

    const/4 v1, 0x0

    :goto_1c
    invoke-virtual {v10, v1}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v1

    move-object v10, v1

    const/16 v9, 0x8

    const/16 v13, 0xc

    const/4 v15, 0x4

    :cond_40
    :goto_1d
    const/16 v28, 0x1

    goto/16 :goto_27

    :cond_41
    move-object/from16 v31, v1

    move/from16 v33, v11

    move-object/from16 v35, v13

    move/from16 v34, v14

    const v29, 0x64617461

    const v1, 0x736d7461

    if-ne v8, v1, :cond_50

    invoke-virtual {v7, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int v1, v12, v19

    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :goto_1e
    iget v3, v7, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v3, v1, :cond_4f

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    const v11, 0x73617574

    if-ne v9, v11, :cond_4e

    const/16 v9, 0x10

    if-ge v8, v9, :cond_42

    const/4 v3, 0x0

    const/16 v9, 0x8

    const/16 v13, 0xc

    const/4 v15, 0x4

    goto/16 :goto_25

    :cond_42
    const/4 v15, 0x4

    invoke-virtual {v7, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v3, -0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_1f
    const/4 v13, 0x2

    if-ge v8, v13, :cond_45

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v14

    if-nez v13, :cond_43

    move v3, v14

    goto :goto_20

    :cond_43
    const/4 v9, 0x1

    if-ne v13, v9, :cond_44

    move v11, v14

    :cond_44
    :goto_20
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x10

    goto :goto_1f

    :cond_45
    const v8, -0x7fffffff

    const/16 v9, 0xc

    if-ne v3, v9, :cond_46

    const/16 v1, 0xf0

    :goto_21
    const/16 v9, 0x8

    const/16 v13, 0xc

    goto :goto_23

    :cond_46
    const/16 v9, 0xd

    if-ne v3, v9, :cond_47

    const/16 v1, 0x78

    goto :goto_21

    :cond_47
    const/16 v9, 0x15

    if-eq v3, v9, :cond_48

    move v1, v8

    goto :goto_21

    :cond_48
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/16 v9, 0x8

    if-lt v3, v9, :cond_49

    iget v3, v7, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v3, v9

    if-le v3, v1, :cond_4a

    :cond_49
    const/16 v13, 0xc

    goto :goto_22

    :cond_4a
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    const/16 v13, 0xc

    if-lt v1, v13, :cond_4c

    const v1, 0x73726672

    if-eq v3, v1, :cond_4b

    goto :goto_22

    :cond_4b
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v1

    goto :goto_23

    :cond_4c
    :goto_22
    move v1, v8

    :goto_23
    if-ne v1, v8, :cond_4d

    :goto_24
    const/4 v3, 0x0

    goto :goto_25

    :cond_4d
    new-instance v3, Landroidx/media3/common/Metadata;

    new-instance v8, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    int-to-float v1, v1

    invoke-direct {v8, v1, v11}, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    filled-new-array {v8}, [Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    invoke-direct {v3, v1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_25

    :cond_4e
    const/16 v9, 0x8

    const/16 v13, 0xc

    const/4 v15, 0x4

    add-int/2addr v3, v8

    invoke-virtual {v7, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_1e

    :cond_4f
    const/16 v9, 0x8

    const/16 v13, 0xc

    const/4 v15, 0x4

    goto :goto_24

    :goto_25
    invoke-virtual {v10, v3}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v1

    move-object v10, v1

    goto/16 :goto_1d

    :cond_50
    const/16 v9, 0x8

    const/16 v13, 0xc

    const/4 v15, 0x4

    const v1, -0x56878686

    if-ne v8, v1, :cond_40

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/16 v8, 0x2d

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v28, 0x1

    add-int/lit8 v11, v11, -0x1

    :try_start_5
    invoke-virtual {v1, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    new-instance v3, Landroidx/media3/common/Metadata;

    new-instance v11, Landroidx/media3/container/Mp4LocationData;

    invoke-direct {v11, v8, v1}, Landroidx/media3/container/Mp4LocationData;-><init>(FF)V

    filled-new-array {v11}, [Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    invoke-direct {v3, v1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_26

    :catch_0
    const/16 v28, 0x1

    :catch_1
    const/4 v3, 0x0

    :goto_26
    invoke-virtual {v10, v3}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v1

    move-object v10, v1

    :goto_27
    add-int v12, v12, v19

    invoke-virtual {v7, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v1, v31

    move/from16 v11, v33

    move/from16 v14, v34

    move-object/from16 v13, v35

    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_51
    move-object/from16 v31, v1

    move/from16 v33, v11

    move-object/from16 v35, v13

    move/from16 v34, v14

    const/16 v28, 0x1

    invoke-virtual {v6, v10}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromMetadata(Landroidx/media3/common/Metadata;)V

    move-object v1, v10

    goto :goto_28

    :cond_52
    move-object/from16 v31, v1

    move/from16 v33, v11

    move-object/from16 v35, v13

    move/from16 v34, v14

    const/16 v28, 0x1

    const/4 v1, 0x0

    :goto_28
    new-instance v3, Landroidx/media3/common/Metadata;

    const v7, 0x6d766864

    invoke-virtual {v5, v7}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v7}, Landroidx/media3/extractor/mp4/BoxParser;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v7

    filled-new-array {v7}, [Landroidx/media3/common/Metadata$Entry;

    move-result-object v7

    invoke-direct {v3, v7}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    and-int/lit8 v7, v34, 0x1

    if-eqz v7, :cond_53

    move/from16 v10, v28

    goto :goto_29

    :cond_53
    const/4 v10, 0x0

    :goto_29
    new-instance v12, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    const/16 v9, 0x15

    invoke-direct {v12, v9}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    move/from16 v14, v28

    move/from16 v11, v33

    const/16 v20, 0x0

    invoke-static/range {v5 .. v12}, Landroidx/media3/extractor/mp4/BoxParser;->parseTraks(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object v5

    iget-boolean v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->readingAuxiliaryTracks:Z

    if-eqz v7, :cond_55

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v7, v8, :cond_54

    move v7, v14

    goto :goto_2a

    :cond_54
    const/4 v7, 0x0

    :goto_2a
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-string v10, ") is not same as the number of auxiliary tracks ("

    const-string v11, ")"

    const-string v12, "The number of auxiliary track types from metadata ("

    invoke-static {v8, v9, v12, v10, v11}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroidx/media3/common/util/Log;->checkState(Ljava/lang/String;Z)V

    :cond_55
    invoke-static {v5}, Landroidx/media3/extractor/mp4/Sniffer;->getContainerMimeType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_68

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v15, v13, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    iget v14, v13, Landroidx/media3/extractor/mp4/TrackSampleTable;->maximumSize:I

    if-nez v15, :cond_56

    move-object/from16 v24, v1

    move-object v13, v2

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v23, v12

    move-object/from16 v5, v35

    const/4 v2, -0x1

    const/4 v7, 0x3

    move-object v12, v6

    goto/16 :goto_37

    :cond_56
    iget-object v15, v13, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    move-object/from16 v21, v5

    new-instance v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v22, v7

    iget-object v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    add-int/lit8 v23, v12, 0x1

    move/from16 v24, v14

    iget v14, v15, Landroidx/media3/extractor/mp4/Track;->type:I

    move-object/from16 v25, v2

    iget-object v2, v15, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-interface {v7, v12, v14}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v7

    invoke-direct {v5, v15, v13, v7}, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/TrackOutput;)V

    move-object/from16 v26, v5

    move-object v12, v6

    iget-wide v5, v15, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    cmp-long v15, v5, v18

    if-eqz v15, :cond_57

    goto :goto_2c

    :cond_57
    iget-wide v5, v13, Landroidx/media3/extractor/mp4/TrackSampleTable;->durationUs:J

    :goto_2c
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    const-string v5, "audio/true-hd"

    iget-object v6, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    mul-int/lit8 v5, v24, 0x10

    goto :goto_2d

    :cond_58
    add-int/lit8 v5, v24, 0x1e

    :goto_2d
    invoke-virtual {v2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v6

    iput v5, v6, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    const/4 v13, 0x2

    if-ne v14, v13, :cond_5c

    iget v5, v2, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v7, v34, 0x8

    if-eqz v7, :cond_5a

    const/4 v7, -0x1

    if-ne v11, v7, :cond_59

    const/4 v7, 0x1

    goto :goto_2e

    :cond_59
    const/4 v7, 0x2

    :goto_2e
    or-int/2addr v5, v7

    :cond_5a
    iget-boolean v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->readingAuxiliaryTracks:Z

    if-eqz v7, :cond_5b

    const v7, 0x8000

    or-int/2addr v5, v7

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Landroidx/media3/common/Format$Builder;->auxiliaryTrackType:I

    :cond_5b
    iput v5, v6, Landroidx/media3/common/Format$Builder;->roleFlags:I

    :cond_5c
    const/4 v5, 0x1

    if-ne v14, v5, :cond_5d

    iget v5, v12, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_5d

    iget v13, v12, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v13, v7, :cond_5d

    iput v5, v6, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    iput v13, v6, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    :cond_5d
    iget-object v2, v2, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5e

    move-object/from16 v7, v20

    goto :goto_2f

    :cond_5e
    new-instance v7, Landroidx/media3/common/Metadata;

    invoke-direct {v7, v5}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_2f
    filled-new-array {v7, v1, v3}, [Landroidx/media3/common/Metadata;

    move-result-object v5

    if-eqz v2, :cond_5f

    goto :goto_30

    :cond_5f
    new-instance v2, Landroidx/media3/common/Metadata;

    const/4 v13, 0x0

    new-array v7, v13, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v2, v7}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    :goto_30
    if-eqz v25, :cond_62

    move-object/from16 v13, v25

    const/4 v7, 0x0

    :goto_31
    iget-object v15, v13, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    move-object/from16 v24, v1

    array-length v1, v15

    if-ge v7, v1, :cond_63

    aget-object v1, v15, v7

    instance-of v15, v1, Landroidx/media3/container/MdtaMetadataEntry;

    if-eqz v15, :cond_61

    check-cast v1, Landroidx/media3/container/MdtaMetadataEntry;

    iget-object v15, v1, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    move-object/from16 v25, v1

    const-string v1, "com.android.capture.fps"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 v1, 0x2

    if-ne v14, v1, :cond_61

    filled-new-array/range {v25 .. v25}, [Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v1

    :goto_32
    move-object v2, v1

    goto :goto_33

    :cond_60
    filled-new-array/range {v25 .. v25}, [Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v1

    goto :goto_32

    :cond_61
    :goto_33
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v24

    goto :goto_31

    :cond_62
    move-object/from16 v24, v1

    move-object/from16 v13, v25

    :cond_63
    const/4 v1, 0x0

    const/4 v7, 0x3

    :goto_34
    if-ge v1, v7, :cond_64

    aget-object v15, v5, v1

    invoke-virtual {v2, v15}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_64
    iget-object v1, v2, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length v1, v1

    if-lez v1, :cond_65

    iput-object v2, v6, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    :cond_65
    invoke-static/range {v22 .. v22}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    move-object/from16 v1, v26

    iget-object v2, v1, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v6, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    const/4 v2, 0x2

    if-ne v14, v2, :cond_67

    const/4 v2, -0x1

    if-ne v11, v2, :cond_66

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v11

    :cond_66
    :goto_35
    move-object/from16 v5, v35

    goto :goto_36

    :cond_67
    const/4 v2, -0x1

    goto :goto_35

    :goto_36
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_37
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v35, v5

    move-object v6, v12

    move-object v2, v13

    move-object/from16 v5, v21

    move-object/from16 v7, v22

    move/from16 v12, v23

    move-object/from16 v1, v24

    const/4 v14, 0x1

    goto/16 :goto_2b

    :cond_68
    move-object/from16 v5, v35

    const/4 v2, -0x1

    iput v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    iput-wide v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->durationUs:J

    const/4 v13, 0x0

    new-array v1, v13, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v3, v1

    new-array v3, v3, [[J

    array-length v4, v1

    new-array v4, v4, [I

    array-length v5, v1

    new-array v5, v5, [J

    array-length v6, v1

    new-array v6, v6, [Z

    const/4 v13, 0x0

    :goto_38
    array-length v7, v1

    if-ge v13, v7, :cond_69

    aget-object v7, v1, v13

    iget-object v7, v7, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v7, v7, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v7, v7, [J

    aput-object v7, v3, v13

    aget-object v7, v1, v13

    iget-object v7, v7, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v7, v7, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/16 v30, 0x0

    aget-wide v7, v7, v30

    aput-wide v7, v5, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_38

    :cond_69
    const/4 v13, 0x0

    :goto_39
    array-length v7, v1

    if-ge v13, v7, :cond_6d

    const-wide v7, 0x7fffffffffffffffL

    move v11, v2

    const/4 v9, 0x0

    :goto_3a
    array-length v10, v1

    if-ge v9, v10, :cond_6b

    aget-boolean v10, v6, v9

    if-nez v10, :cond_6a

    aget-wide v14, v5, v9

    cmp-long v10, v14, v7

    if-gtz v10, :cond_6a

    move v11, v9

    move-wide v7, v14

    :cond_6a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    :cond_6b
    aget v7, v4, v11

    aget-object v8, v3, v11

    aput-wide v16, v8, v7

    aget-object v9, v1, v11

    iget-object v9, v9, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v10, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v10, v10, v7

    int-to-long v14, v10

    add-long v16, v16, v14

    const/16 v28, 0x1

    add-int/lit8 v7, v7, 0x1

    aput v7, v4, v11

    array-length v8, v8

    if-ge v7, v8, :cond_6c

    iget-object v8, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v7, v8, v7

    aput-wide v7, v5, v11

    goto :goto_39

    :cond_6c
    aput-boolean v28, v6, v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_39

    :cond_6d
    iput-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    :goto_3b
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayDeque;->clear()V

    iget-boolean v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seekToAxteAtom:Z

    if-nez v1, :cond_0

    const/4 v13, 0x2

    iput v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    goto/16 :goto_0

    :cond_6e
    move-object/from16 v31, v1

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-object v1, v1, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6f
    iget v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v13, 0x2

    if-eq v1, v13, :cond_70

    const/4 v13, 0x0

    iput v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    iput v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    :cond_70
    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :cond_0
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    iget-object v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v11, 0x0

    const/4 v15, 0x4

    const-wide/16 v16, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_45

    const-wide/32 v19, 0x40000

    if-eq v3, v4, :cond_36

    const-wide/16 v21, 0x8

    if-eq v3, v10, :cond_19

    const/4 v5, 0x3

    if-ne v3, v5, :cond_18

    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    iget-object v6, v3, Landroidx/media3/extractor/mp4/SefReader;->dataReferences:Ljava/util/ArrayList;

    iget v8, v3, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    if-eqz v8, :cond_14

    if-eq v8, v4, :cond_12

    const/16 v7, 0xb01

    const/16 v24, 0x8

    const/16 v12, 0xb00

    const/16 v4, 0x890

    if-eq v8, v10, :cond_d

    if-ne v8, v5, :cond_c

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v16

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v18

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v20

    sub-long v18, v18, v20

    iget v3, v3, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    int-to-long v13, v3

    sub-long v13, v18, v13

    long-to-int v3, v13

    new-instance v13, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v13, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v14, v13, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v14, v9, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    move v1, v9

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_b

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    iget-wide v8, v3, Landroidx/media3/extractor/mp4/SefReader$DataReference;->startOffset:J

    sub-long v8, v8, v16

    long-to-int v8, v8

    invoke-virtual {v13, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v13, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v8, v9}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :goto_1
    const/4 v14, -0x1

    goto :goto_2

    :sswitch_0
    const-string v15, "Super_SlowMotion_BGM"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_1

    :cond_1
    const/4 v14, 0x4

    goto :goto_2

    :sswitch_1
    const-string v15, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_1

    :cond_2
    move v14, v5

    goto :goto_2

    :sswitch_2
    const-string v15, "Super_SlowMotion_Data"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_1

    :cond_3
    move v14, v10

    goto :goto_2

    :sswitch_3
    const-string v15, "Super_SlowMotion_Edit_Data"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_1

    :cond_4
    const/4 v14, 0x1

    goto :goto_2

    :sswitch_4
    const-string v15, "SlowMotion_Data"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    :goto_2
    packed-switch v14, :pswitch_data_0

    const-string v0, "Invalid SEF name"

    invoke-static {v11, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_0
    move v14, v7

    goto :goto_3

    :pswitch_1
    const/16 v14, 0xb04

    goto :goto_3

    :pswitch_2
    move v14, v12

    goto :goto_3

    :pswitch_3
    const/16 v14, 0xb03

    goto :goto_3

    :pswitch_4
    move v14, v4

    :goto_3
    iget v3, v3, Landroidx/media3/extractor/mp4/SefReader$DataReference;->size:I

    add-int/lit8 v8, v8, 0x8

    sub-int/2addr v3, v8

    if-eq v14, v4, :cond_7

    if-eq v14, v12, :cond_a

    if-eq v14, v7, :cond_a

    const/16 v3, 0xb03

    if-eq v14, v3, :cond_a

    const/16 v8, 0xb04

    if-ne v14, v8, :cond_6

    goto/16 :goto_5

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_7
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v3, v9}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Landroidx/media3/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v9, v3}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_9

    sget-object v14, Landroidx/media3/extractor/mp4/SefReader;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v8, v18

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v14, v8}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ne v14, v5, :cond_8

    const/4 v14, 0x0

    :try_start_0
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    const/4 v14, 0x1

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v27, 0x1

    add-int/lit8 v8, v8, -0x1

    shl-int v29, v27, v8

    new-instance v28, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    invoke-direct/range {v28 .. v33}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;-><init>(IJJ)V

    move-object/from16 v8, v28

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0, v11}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_8
    invoke-static {v11, v11}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_9
    new-instance v3, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    invoke-direct {v3, v15}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;-><init>(Ljava/util/ArrayList;)V

    iget-object v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_5
    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x0

    const/4 v15, 0x4

    goto/16 :goto_0

    :cond_b
    const-wide/16 v8, 0x0

    iput-wide v8, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_b

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_d
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v8

    iget v11, v3, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 v11, v11, -0x14

    new-instance v13, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v13, v11}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v14, v13, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v15, 0x0

    invoke-interface {v1, v14, v15, v11}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    const/4 v1, 0x0

    :goto_7
    div-int/lit8 v15, v11, 0xc

    if-ge v1, v15, :cond_10

    invoke-virtual {v13, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget-object v15, v13, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v14, v13, Landroidx/media3/common/util/ParsableByteArray;->position:I

    move/from16 v28, v10

    add-int/lit8 v10, v14, 0x1

    iput v10, v13, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v5, v15, v14

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v14, v14, 0x2

    iput v14, v13, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v10, v15, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v5, v10

    int-to-short v5, v5

    if-eq v5, v4, :cond_e

    if-eq v5, v12, :cond_e

    if-eq v5, v7, :cond_e

    const/16 v10, 0xb03

    const/16 v14, 0xb04

    if-eq v5, v10, :cond_f

    if-eq v5, v14, :cond_f

    move/from16 v5, v24

    invoke-virtual {v13, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move/from16 v17, v11

    goto :goto_8

    :cond_e
    const/16 v10, 0xb03

    const/16 v14, 0xb04

    :cond_f
    iget v5, v3, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    int-to-long v4, v5

    sub-long v4, v8, v4

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v7

    move/from16 v17, v11

    int-to-long v10, v7

    sub-long/2addr v4, v10

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v7

    new-instance v10, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    invoke-direct {v10, v4, v5, v7}, Landroidx/media3/extractor/mp4/SefReader$DataReference;-><init>(JI)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move/from16 v11, v17

    move/from16 v10, v28

    const/16 v4, 0x890

    const/4 v5, 0x3

    const/16 v7, 0xb01

    const/16 v24, 0x8

    goto :goto_7

    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const-wide/16 v8, 0x0

    iput-wide v8, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    const/4 v14, 0x0

    goto/16 :goto_6

    :cond_11
    const/4 v1, 0x3

    iput v1, v3, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    iget-wide v3, v1, Landroidx/media3/extractor/mp4/SefReader$DataReference;->startOffset:J

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    goto/16 :goto_6

    :cond_12
    move v14, v9

    move/from16 v28, v10

    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v6, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v6, v14, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v3, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x53454654

    if-eq v4, v5, :cond_13

    const-wide/16 v8, 0x0

    iput-wide v8, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    goto/16 :goto_6

    :cond_13
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v1, v3, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 v1, v1, -0xc

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    move/from16 v1, v28

    iput v1, v3, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    goto/16 :goto_6

    :cond_14
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    cmp-long v1, v4, v16

    if-eqz v1, :cond_16

    cmp-long v1, v4, v21

    if-gez v1, :cond_15

    goto :goto_9

    :cond_15
    sub-long v4, v4, v21

    goto :goto_a

    :cond_16
    :goto_9
    const-wide/16 v4, 0x0

    :goto_a
    iput-wide v4, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    const/4 v1, 0x1

    iput v1, v3, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    :goto_b
    iget-wide v2, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    const-wide/16 v25, 0x0

    cmp-long v2, v2, v25

    if-nez v2, :cond_17

    const/4 v14, 0x0

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    return v1

    :cond_17
    move v4, v1

    goto/16 :goto_20

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_19
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_24

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v15, 0x1

    const-wide v16, 0x7fffffffffffffffL

    const-wide v29, 0x7fffffffffffffffL

    const-wide v31, 0x7fffffffffffffffL

    const-wide v33, 0x7fffffffffffffffL

    :goto_c
    iget-object v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v10, v9

    if-ge v5, v10, :cond_21

    aget-object v9, v9, v5

    iget v10, v9, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    iget-object v9, v9, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v14, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v10, v14, :cond_1a

    goto :goto_f

    :cond_1a
    iget-object v9, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v35, v9, v10

    iget-object v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    sget v14, Landroidx/media3/common/util/Util;->SDK_INT:I

    aget-object v9, v9, v5

    aget-wide v9, v9, v10

    sub-long v35, v35, v3

    const-wide/16 v25, 0x0

    cmp-long v14, v35, v25

    if-ltz v14, :cond_1c

    cmp-long v14, v35, v19

    if-ltz v14, :cond_1b

    goto :goto_d

    :cond_1b
    const/4 v14, 0x0

    goto :goto_e

    :cond_1c
    :goto_d
    const/4 v14, 0x1

    :goto_e
    if-nez v14, :cond_1d

    if-nez v15, :cond_1e

    :cond_1d
    if-ne v14, v15, :cond_1f

    cmp-long v24, v35, v31

    if-gez v24, :cond_1f

    :cond_1e
    move v12, v5

    move-wide/from16 v29, v9

    move v15, v14

    move-wide/from16 v31, v35

    :cond_1f
    cmp-long v24, v9, v16

    if-gez v24, :cond_20

    move v7, v5

    move-wide/from16 v16, v9

    move v13, v14

    :cond_20
    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_21
    cmp-long v5, v16, v33

    if-eqz v5, :cond_22

    if-eqz v13, :cond_22

    const-wide/32 v9, 0xa00000

    add-long v16, v16, v9

    cmp-long v5, v29, v16

    if-gez v5, :cond_23

    :cond_22
    move v7, v12

    :cond_23
    iput v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v5, -0x1

    if-ne v7, v5, :cond_24

    move/from16 v23, v5

    goto/16 :goto_29

    :cond_24
    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    aget-object v5, v5, v7

    iget-object v7, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object v9, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v10, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v12, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    iget-object v13, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    iget-object v15, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget-wide v13, v13, v12

    move/from16 v16, v12

    iget-wide v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleOffsetForAuxiliaryTracks:J

    add-long/2addr v13, v11

    aget v11, v15, v16

    iget-object v12, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    sub-long v3, v13, v3

    move-wide/from16 v29, v3

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    int-to-long v3, v3

    add-long v3, v29, v3

    const-wide/16 v25, 0x0

    cmp-long v17, v3, v25

    if-ltz v17, :cond_25

    cmp-long v17, v3, v19

    if-ltz v17, :cond_26

    :cond_25
    const/16 v27, 0x1

    goto/16 :goto_19

    :cond_26
    iget v2, v10, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    iget v13, v10, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    iget-object v10, v10, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    const/4 v14, 0x1

    if-ne v2, v14, :cond_27

    add-long v3, v3, v21

    add-int/lit8 v11, v11, -0x8

    :cond_27
    long-to-int v2, v3

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iget-object v2, v10, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, v10, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v4, "video/avc"

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    and-int/lit8 v2, v6, 0x20

    if-eqz v2, :cond_28

    goto :goto_10

    :cond_28
    const/4 v14, 0x1

    goto :goto_11

    :cond_29
    const-string/jumbo v2, "video/hevc"

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    and-int/lit16 v2, v6, 0x80

    if-eqz v2, :cond_28

    :goto_10
    const/4 v14, 0x1

    goto :goto_12

    :goto_11
    iput-boolean v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    :goto_12
    if-eqz v13, :cond_2f

    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v18, 0x0

    aput-byte v18, v3, v18

    aput-byte v18, v3, v14

    const/16 v28, 0x2

    aput-byte v18, v3, v28

    rsub-int/lit8 v4, v13, 0x4

    add-int/2addr v11, v4

    :goto_13
    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v6, v11, :cond_2e

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v6, :cond_2d

    iget-boolean v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    if-nez v6, :cond_2a

    invoke-static {v10}, Landroidx/media3/container/ObuParser;->numberOfBytesInNalUnitHeader(Landroidx/media3/common/Format;)I

    move-result v6

    add-int/2addr v6, v13

    aget v8, v15, v16

    iget v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    sub-int/2addr v8, v14

    if-gt v6, v8, :cond_2a

    invoke-static {v10}, Landroidx/media3/container/ObuParser;->numberOfBytesInNalUnitHeader(Landroidx/media3/common/Format;)I

    move-result v14

    add-int v6, v13, v14

    move v8, v14

    goto :goto_14

    :cond_2a
    move v6, v13

    const/4 v8, 0x0

    :goto_14
    invoke-interface {v1, v3, v4, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v14, v6

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    if-ltz v6, :cond_2c

    sub-int/2addr v6, v8

    iput v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    iget-object v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move/from16 p2, v4

    const/4 v4, 0x4

    invoke-interface {v7, v6, v4, v14}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v4

    iput v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-lez v8, :cond_2b

    invoke-interface {v7, v2, v8, v14}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v4, v8

    iput v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    invoke-static {v3, v8, v10}, Landroidx/media3/container/ObuParser;->isDependedOn([BILandroidx/media3/common/Format;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    :cond_2b
    :goto_15
    move/from16 v4, p2

    goto :goto_13

    :cond_2c
    const-string v0, "Invalid NAL length"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2d
    move/from16 p2, v4

    const/4 v14, 0x0

    invoke-interface {v7, v1, v6, v14}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v4

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v6, v4

    iput v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v4

    iput v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v6, v4

    iput v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_15

    :cond_2e
    move/from16 v33, v11

    goto :goto_17

    :cond_2f
    const-string v2, "audio/ac4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-nez v2, :cond_30

    invoke-static {v11, v8}, Landroidx/media3/extractor/AacUtil;->getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V

    const/4 v2, 0x7

    const/4 v14, 0x0

    invoke-interface {v7, v8, v2, v14}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    :cond_30
    add-int/lit8 v11, v11, 0x7

    goto :goto_16

    :cond_31
    if-eqz v12, :cond_32

    invoke-virtual {v12, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->startSample(Landroidx/media3/extractor/ExtractorInput;)V

    :cond_32
    :goto_16
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v2, v11, :cond_2e

    sub-int v2, v11, v2

    const/4 v14, 0x0

    invoke-interface {v7, v1, v2, v14}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_16

    :goto_17
    iget-object v1, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v30, v1, v16

    iget-object v1, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    aget v1, v1, v16

    iget-boolean v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    if-nez v2, :cond_33

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    :cond_33
    move/from16 v32, v1

    if-eqz v12, :cond_34

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, v12

    move/from16 v34, v33

    move/from16 v33, v32

    move-wide/from16 v31, v30

    move-object/from16 v30, v7

    invoke-virtual/range {v29 .. v36}, Landroidx/media3/extractor/TrueHdSampleRechunker;->sampleMetadata(Landroidx/media3/extractor/TrackOutput;JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    move-object/from16 v2, v29

    move-object/from16 v1, v30

    const/16 v27, 0x1

    add-int/lit8 v12, v16, 0x1

    iget v3, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v12, v3, :cond_35

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroidx/media3/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto :goto_18

    :cond_34
    move-object v1, v7

    const/16 v27, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v29, v1

    invoke-interface/range {v29 .. v35}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_35
    :goto_18
    iget v1, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    const/4 v5, -0x1

    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v14, 0x0

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    iput-boolean v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    return v14

    :goto_19
    iput-wide v13, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    return v27

    :cond_36
    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v6

    sub-long/2addr v3, v6

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    add-long/2addr v6, v3

    iget-object v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v8, :cond_3f

    iget-object v9, v8, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v3, v3

    invoke-interface {v1, v9, v10, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x66747970

    if-ne v3, v4, :cond_3e

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seenFtypAtom:Z

    const/16 v5, 0x8

    invoke-virtual {v8, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x71742020

    const v5, 0x68656963

    if-eq v3, v5, :cond_38

    if-eq v3, v4, :cond_37

    const/4 v3, 0x0

    goto :goto_1a

    :cond_37
    const/4 v3, 0x1

    goto :goto_1a

    :cond_38
    const/4 v3, 0x2

    :goto_1a
    if-eqz v3, :cond_39

    goto :goto_1c

    :cond_39
    const/4 v3, 0x4

    invoke-virtual {v8, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_3a
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_3d

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    if-eq v3, v5, :cond_3c

    if-eq v3, v4, :cond_3b

    const/4 v3, 0x0

    goto :goto_1b

    :cond_3b
    const/4 v3, 0x1

    goto :goto_1b

    :cond_3c
    const/4 v3, 0x2

    :goto_1b
    if-eqz v3, :cond_3a

    goto :goto_1c

    :cond_3d
    const/4 v3, 0x0

    :goto_1c
    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    goto :goto_1d

    :cond_3e
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_41

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    new-instance v4, Landroidx/media3/container/Mp4Box$LeafBox;

    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v4, v5, v8}, Landroidx/media3/container/Mp4Box$LeafBox;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget-object v3, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_3f
    iget-boolean v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seenFtypAtom:Z

    if-nez v5, :cond_40

    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v8, 0x6d646174

    if-ne v5, v8, :cond_40

    const/4 v5, 0x1

    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    :cond_40
    cmp-long v5, v3, v19

    if-gez v5, :cond_42

    long-to-int v3, v3

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_41
    :goto_1d
    const/4 v3, 0x0

    goto :goto_1e

    :cond_42
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    add-long/2addr v8, v3

    iput-wide v8, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    const/4 v3, 0x1

    :goto_1e
    invoke-virtual {v0, v6, v7}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    iget-boolean v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seekToAxteAtom:Z

    if-eqz v4, :cond_43

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->readingAuxiliaryTracks:Z

    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->axteAtomOffset:J

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    const/4 v14, 0x0

    iput-boolean v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seekToAxteAtom:Z

    const/4 v3, 0x1

    :cond_43
    if-eqz v3, :cond_44

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_44

    const/4 v9, 0x1

    goto :goto_1f

    :cond_44
    const/4 v9, 0x0

    :goto_1f
    if-eqz v9, :cond_0

    const/4 v4, 0x1

    :goto_20
    return v4

    :cond_45
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    iget-object v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    if-nez v3, :cond_49

    iget-object v3, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v9, 0x8

    const/4 v14, 0x0

    invoke-interface {v1, v14, v4, v3, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully(IZ[BI)Z

    move-result v3

    if-nez v3, :cond_48

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_47

    and-int/lit8 v3, v6, 0x2

    if-eqz v3, :cond_47

    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v4, 0x4

    invoke-interface {v3, v14, v4}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v3

    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-nez v4, :cond_46

    const/4 v11, 0x0

    goto :goto_21

    :cond_46
    new-instance v11, Landroidx/media3/common/Metadata;

    filled-new-array {v4}, [Landroidx/media3/common/Metadata$Entry;

    move-result-object v4

    invoke-direct {v11, v4}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    :goto_21
    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v11, v4, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    invoke-static {v4, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v3}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v4, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v4, v5, v6}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    :cond_47
    const/4 v9, 0x0

    goto/16 :goto_28

    :cond_48
    const/16 v9, 0x8

    iput v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    :cond_49
    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v9, 0x1

    cmp-long v6, v3, v9

    if-nez v6, :cond_4a

    iget-object v3, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v9, 0x8

    invoke-interface {v1, v3, v9, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v3, v9

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_22

    :cond_4a
    const-wide/16 v25, 0x0

    cmp-long v3, v3, v25

    if-nez v3, :cond_4c

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    cmp-long v6, v3, v16

    if-nez v6, :cond_4b

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/Mp4Box$ContainerBox;

    if-eqz v6, :cond_4b

    iget-wide v3, v6, Landroidx/media3/container/Mp4Box$ContainerBox;->endPosition:J

    :cond_4b
    cmp-long v6, v3, v16

    if-eqz v6, :cond_4c

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    sub-long/2addr v3, v9

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v9, v6

    add-long/2addr v3, v9

    iput-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    :cond_4c
    :goto_22
    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v9, v6

    cmp-long v3, v3, v9

    if-ltz v3, :cond_57

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d6f6f76

    const v9, 0x68646c72    # 4.3148E24f

    const v10, 0x6d657461

    if-eq v3, v4, :cond_4d

    const v4, 0x7472616b

    if-eq v3, v4, :cond_4d

    const v4, 0x6d646961

    if-eq v3, v4, :cond_4d

    const v4, 0x6d696e66

    if-eq v3, v4, :cond_4d

    const v4, 0x7374626c

    if-eq v3, v4, :cond_4d

    const v4, 0x65647473

    if-eq v3, v4, :cond_4d

    if-eq v3, v10, :cond_4d

    const v4, 0x61787465

    if-ne v3, v4, :cond_4e

    :cond_4d
    const/4 v4, 0x1

    goto/16 :goto_26

    :cond_4e
    const v4, 0x6d646864

    if-eq v3, v4, :cond_4f

    const v4, 0x6d766864

    if-eq v3, v4, :cond_4f

    if-eq v3, v9, :cond_4f

    const v4, 0x73747364

    if-eq v3, v4, :cond_4f

    const v4, 0x73747473

    if-eq v3, v4, :cond_4f

    const v4, 0x73747373

    if-eq v3, v4, :cond_4f

    const v4, 0x63747473

    if-eq v3, v4, :cond_4f

    const v4, 0x656c7374

    if-eq v3, v4, :cond_4f

    const v4, 0x73747363

    if-eq v3, v4, :cond_4f

    const v4, 0x7374737a

    if-eq v3, v4, :cond_4f

    const v4, 0x73747a32

    if-eq v3, v4, :cond_4f

    const v4, 0x7374636f

    if-eq v3, v4, :cond_4f

    const v4, 0x636f3634

    if-eq v3, v4, :cond_4f

    const v4, 0x746b6864

    if-eq v3, v4, :cond_4f

    const v4, 0x66747970

    if-eq v3, v4, :cond_4f

    const v4, 0x75647461

    if-eq v3, v4, :cond_4f

    const v4, 0x6b657973

    if-eq v3, v4, :cond_4f

    const v4, 0x696c7374

    if-ne v3, v4, :cond_50

    :cond_4f
    const/16 v5, 0x8

    goto :goto_23

    :cond_50
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v5, v5

    sub-long v10, v3, v5

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_51

    new-instance v7, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    add-long v14, v10, v5

    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    sub-long v16, v3, v5

    const-wide/16 v8, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v7 .. v17}, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    :cond_51
    const/4 v3, 0x0

    iput-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v4, 0x1

    iput v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    goto/16 :goto_27

    :goto_23
    if-ne v6, v5, :cond_52

    const/4 v3, 0x1

    goto :goto_24

    :cond_52
    const/4 v3, 0x0

    :goto_24
    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gtz v3, :cond_53

    const/4 v3, 0x1

    goto :goto_25

    :cond_53
    const/4 v3, 0x0

    :goto_25
    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkState(Z)V

    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    iget-wide v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v4, v4

    invoke-direct {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v4, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget-object v5, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v9, 0x8

    const/4 v14, 0x0

    invoke-static {v4, v14, v5, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v4, 0x1

    iput v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_27

    :goto_26
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-wide v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v6, v11

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v14, v3

    sub-long/2addr v6, v14

    cmp-long v3, v11, v14

    if-eqz v3, :cond_55

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    if-ne v3, v10, :cond_55

    const/16 v3, 0x8

    invoke-virtual {v8, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v10, v8, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v14, 0x0

    invoke-interface {v1, v14, v3, v10}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    sget-object v3, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    iget v3, v8, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    if-eq v10, v9, :cond_54

    add-int/lit8 v3, v3, 0x4

    :cond_54
    invoke-virtual {v8, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget v3, v8, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    :cond_55
    new-instance v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v3, v8, v6, v7}, Landroidx/media3/container/Mp4Box$ContainerBox;-><init>(IJ)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v10, v3

    cmp-long v3, v8, v10

    if-nez v3, :cond_56

    invoke-virtual {v0, v6, v7}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_27

    :cond_56
    const/4 v14, 0x0

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    :goto_27
    move v9, v4

    :goto_28
    if-nez v9, :cond_0

    const/16 v23, -0x1

    :goto_29
    return v23

    :cond_57
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    iput-boolean v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    iget-object p2, p1, Landroidx/media3/extractor/mp4/SefReader;->dataReferences:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iput v0, p1, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    iget-object p0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length p1, p0

    move p2, v0

    :goto_0
    if-ge p2, p1, :cond_6

    aget-object v2, p0, p2

    iget-object v3, v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v4, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    invoke-static {v4, p3, p4, v0}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v4

    :goto_1
    if-ltz v4, :cond_3

    iget-object v5, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    aget v5, v5, v4

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_2
    if-ne v4, v1, :cond_4

    invoke-virtual {v3, p3, p4}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v4

    :cond_4
    iput v4, v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v2, :cond_5

    iput-boolean v0, v2, Landroidx/media3/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    iput v0, v2, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 3

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p1, v2, v0}, Landroidx/media3/extractor/mp4/Sniffer;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Landroidx/media3/extractor/SniffFailure;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    :goto_1
    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->lastSniffFailures:Lcom/google/common/collect/RegularImmutableList;

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2
.end method
