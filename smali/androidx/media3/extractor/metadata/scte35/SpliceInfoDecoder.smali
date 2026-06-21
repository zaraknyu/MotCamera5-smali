.class public final Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;
.super Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
.source "SourceFile"


# instance fields
.field public final sectionData:Landroidx/media3/common/util/ParsableByteArray;

.field public final sectionHeader:Landroidx/media3/extractor/VorbisBitArray;

.field public timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/extractor/VorbisBitArray;

    invoke-direct {v0}, Landroidx/media3/extractor/VorbisBitArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/extractor/VorbisBitArray;

    return-void
.end method


# virtual methods
.method public final decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/extractor/VorbisBitArray;

    iget-object v4, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v4, :cond_0

    iget-wide v5, v1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    monitor-enter v4

    :try_start_0
    iget-wide v7, v4, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    cmp-long v4, v5, v7

    if-eqz v4, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    iget-wide v5, v1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-direct {v4, v5, v6}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    iput-object v4, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-wide v5, v1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v7, v1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-virtual {v2, v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    invoke-virtual {v3, v4, v1}, Landroidx/media3/extractor/VorbisBitArray;->reset(I[B)V

    const/16 v1, 0x27

    invoke-virtual {v3, v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    invoke-virtual {v3, v6}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    int-to-long v6, v6

    or-long v12, v4, v6

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    const/16 v5, 0xe

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v5, 0x0

    if-eqz v3, :cond_18

    const/16 v6, 0xff

    const/4 v7, 0x4

    if-eq v3, v6, :cond_17

    if-eq v3, v7, :cond_d

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    const/4 v1, 0x6

    if-eq v3, v1, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_f

    :cond_2
    iget-object v0, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-static {v12, v13, v2}, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;->parseSpliceTime(JLandroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v10

    new-instance v6, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;

    const/4 v7, 0x2

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;-><init>(IJJ)V

    move-object v0, v6

    goto/16 :goto_f

    :cond_3
    iget-object v0, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v5

    :goto_1
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-nez v3, :cond_c

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v8, v3, 0x40

    if-eqz v8, :cond_5

    move v8, v1

    goto :goto_2

    :cond_5
    move v8, v5

    :goto_2
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_6

    move v9, v1

    goto :goto_3

    :cond_6
    move v9, v5

    :goto_3
    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v1, v5

    :goto_4
    if-eqz v8, :cond_8

    if-nez v1, :cond_8

    invoke-static {v12, v13, v2}, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;->parseSpliceTime(JLandroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v10

    goto :goto_5

    :cond_8
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    if-nez v8, :cond_a

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v5

    :goto_6
    if-ge v8, v3, :cond_a

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    if-nez v1, :cond_9

    invoke-static {v12, v13, v2}, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;->parseSpliceTime(JLandroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v14

    goto :goto_7

    :cond_9
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    :goto_7
    new-instance v6, Landroidx/collection/internal/Lock;

    invoke-virtual {v0, v14, v15}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    const/4 v7, 0x7

    invoke-direct {v6, v7}, Landroidx/collection/internal/Lock;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    :cond_b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-wide v13, v10

    :goto_8
    move-object/from16 v17, v4

    goto :goto_9

    :cond_c
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_8

    :goto_9
    new-instance v12, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;

    invoke-virtual {v0, v13, v14}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v15

    invoke-direct/range {v12 .. v17}, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;-><init>(JJLjava/util/List;)V

    move-object v0, v12

    goto/16 :goto_f

    :cond_d
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v5

    :goto_a
    if-ge v4, v0, :cond_16

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_e

    move v6, v1

    goto :goto_b

    :cond_e
    move v6, v5

    :goto_b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez v6, :cond_15

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_f

    move v8, v1

    goto :goto_c

    :cond_f
    move v8, v5

    :goto_c
    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_10

    move v6, v1

    goto :goto_d

    :cond_10
    move v6, v5

    :goto_d
    if-eqz v8, :cond_11

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    :cond_11
    if-nez v8, :cond_13

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v5

    :goto_e
    if-ge v9, v7, :cond_12

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    new-instance v10, Lcom/google/mlkit/common/internal/zzb;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_12
    move-object v7, v8

    :cond_13
    if-eqz v6, :cond_14

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    :cond_14
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    :cond_15
    new-instance v6, Lcom/google/mlkit/common/internal/zzc;

    const/16 v8, 0x8

    invoke-direct {v6, v8}, Lcom/google/mlkit/common/internal/zzc;-><init>(I)V

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_16
    new-instance v0, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    goto :goto_f

    :cond_17
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    sub-int/2addr v4, v7

    new-array v0, v4, [B

    invoke-virtual {v2, v5, v4, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance v8, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;

    const/4 v9, 0x0

    invoke-direct/range {v8 .. v13}, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;-><init>(IJJ)V

    move-object v0, v8

    goto :goto_f

    :cond_18
    new-instance v0, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_f
    if-nez v0, :cond_19

    new-instance v0, Landroidx/media3/common/Metadata;

    new-array v1, v5, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v0, v1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    return-object v0

    :cond_19
    new-instance v1, Landroidx/media3/common/Metadata;

    filled-new-array {v0}, [Landroidx/media3/common/Metadata$Entry;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    return-object v1
.end method
