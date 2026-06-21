.class public final Landroidx/media3/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/TsPayloadReader;


# instance fields
.field public bytesRead:I

.field public dataAlignmentIndicator:Z

.field public dtsFlag:Z

.field public extendedHeaderLength:I

.field public payloadSize:I

.field public final pesScratch:Landroidx/media3/extractor/VorbisBitArray;

.field public ptsFlag:Z

.field public final reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

.field public seenFirstDts:Z

.field public state:I

.field public timeUs:J

.field public timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    new-instance p1, Landroidx/media3/extractor/VorbisBitArray;

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/extractor/VorbisBitArray;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    return-void
.end method


# virtual methods
.method public final consume(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    and-int/lit8 v2, p1, 0x1

    const-string v3, "PesReader"

    const/4 v4, -0x1

    const/4 v5, 0x2

    iget-object v6, v0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_5

    iget v2, v0, Landroidx/media3/extractor/ts/PesReader;->state:I

    if-eqz v2, :cond_4

    if-eq v2, v9, :cond_4

    if-eq v2, v5, :cond_3

    if-ne v2, v7, :cond_2

    iget v2, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-eq v2, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Unexpected start indicator: expected "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " more bytes"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-nez v2, :cond_1

    move v2, v9

    goto :goto_0

    :cond_1
    move v2, v8

    :goto_0
    invoke-interface {v6, v2}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetFinished(Z)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    const-string v2, "Unexpected start indicator reading extended header"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    iput v9, v0, Landroidx/media3/extractor/ts/PesReader;->state:I

    iput v8, v0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    :cond_5
    move/from16 v2, p1

    :goto_2
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    if-lez v10, :cond_14

    iget v10, v0, Landroidx/media3/extractor/ts/PesReader;->state:I

    if-eqz v10, :cond_13

    iget-object v11, v0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/extractor/VorbisBitArray;

    if-eq v10, v9, :cond_e

    if-eq v10, v5, :cond_a

    if-ne v10, v7, :cond_9

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    iget v11, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-ne v11, v4, :cond_6

    move v11, v8

    goto :goto_3

    :cond_6
    sub-int v11, v10, v11

    :goto_3
    if-lez v11, :cond_7

    sub-int/2addr v10, v11

    iget v11, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v11, v10

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    :cond_7
    invoke-interface {v6, v1}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    iget v11, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-eq v11, v4, :cond_8

    sub-int/2addr v11, v10

    iput v11, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-nez v11, :cond_8

    invoke-interface {v6, v8}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetFinished(Z)V

    iput v9, v0, Landroidx/media3/extractor/ts/PesReader;->state:I

    iput v8, v0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    :cond_8
    move v10, v5

    goto/16 :goto_7

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    const/16 v10, 0xa

    iget v12, v0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v12, v11, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    invoke-virtual {v0, v1, v12, v10}, Landroidx/media3/extractor/ts/PesReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    iget v12, v0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-virtual {v0, v1, v10, v12}, Landroidx/media3/extractor/ts/PesReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v11, v8}, Landroidx/media3/extractor/VorbisBitArray;->setPosition(I)V

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    iget-boolean v10, v0, Landroidx/media3/extractor/ts/PesReader;->ptsFlag:Z

    const/4 v12, 0x4

    if-eqz v10, :cond_c

    invoke-virtual {v11, v12}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v11, v7}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    int-to-long v13, v10

    const/16 v10, 0x1e

    shl-long/2addr v13, v10

    invoke-virtual {v11, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/16 v15, 0xf

    invoke-virtual {v11, v15}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v16

    move/from16 p1, v10

    shl-int/lit8 v10, v16, 0xf

    int-to-long v4, v10

    or-long/2addr v4, v13

    invoke-virtual {v11, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v11, v15}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    int-to-long v13, v10

    or-long/2addr v4, v13

    invoke-virtual {v11, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    iget-boolean v10, v0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v10, :cond_b

    iget-boolean v10, v0, Landroidx/media3/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v10, :cond_b

    invoke-virtual {v11, v12}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v11, v7}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    int-to-long v13, v10

    shl-long v13, v13, p1

    invoke-virtual {v11, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v11, v15}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    shl-int/2addr v10, v15

    move-wide/from16 v17, v13

    int-to-long v12, v10

    or-long v12, v17, v12

    invoke-virtual {v11, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v11, v15}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    int-to-long v14, v10

    or-long/2addr v12, v14

    invoke-virtual {v11, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    iget-object v10, v0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v10, v12, v13}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    iput-boolean v9, v0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    :cond_b
    iget-object v10, v0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v10, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    :cond_c
    iget-boolean v4, v0, Landroidx/media3/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    if-eqz v4, :cond_d

    const/4 v12, 0x4

    goto :goto_4

    :cond_d
    move v12, v8

    :goto_4
    or-int/2addr v2, v12

    iget-wide v4, v0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    invoke-interface {v6, v2, v4, v5}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetStarted(IJ)V

    iput v7, v0, Landroidx/media3/extractor/ts/PesReader;->state:I

    iput v8, v0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    const/4 v4, -0x1

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_e
    iget-object v4, v11, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    const/16 v5, 0x9

    invoke-virtual {v0, v1, v4, v5}, Landroidx/media3/extractor/ts/PesReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v11, v8}, Landroidx/media3/extractor/VorbisBitArray;->setPosition(I)V

    const/16 v4, 0x18

    invoke-virtual {v11, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    if-eq v4, v9, :cond_f

    const-string v5, "Unexpected start code prefix: "

    invoke-static {v5, v4, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, -0x1

    iput v4, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    move v5, v8

    const/4 v10, 0x2

    goto :goto_6

    :cond_f
    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/16 v5, 0x10

    invoke-virtual {v11, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    const/4 v10, 0x5

    invoke-virtual {v11, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v11}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v10

    iput-boolean v10, v0, Landroidx/media3/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    const/4 v10, 0x2

    invoke-virtual {v11, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v11}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v12

    iput-boolean v12, v0, Landroidx/media3/extractor/ts/PesReader;->ptsFlag:Z

    invoke-virtual {v11}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v12

    iput-boolean v12, v0, Landroidx/media3/extractor/ts/PesReader;->dtsFlag:Z

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v11, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    iput v4, v0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    if-nez v5, :cond_10

    const/4 v11, -0x1

    iput v11, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    move v4, v11

    goto :goto_5

    :cond_10
    add-int/lit8 v5, v5, -0x3

    sub-int/2addr v5, v4

    iput v5, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-gez v5, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found negative packet payload size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    iput v4, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    goto :goto_5

    :cond_11
    const/4 v4, -0x1

    :goto_5
    move v5, v10

    :goto_6
    iput v5, v0, Landroidx/media3/extractor/ts/PesReader;->state:I

    iput v8, v0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    goto :goto_7

    :cond_12
    const/4 v4, -0x1

    const/4 v10, 0x2

    goto :goto_7

    :cond_13
    move v10, v5

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :goto_7
    move v5, v10

    goto/16 :goto_2

    :cond_14
    return-void
.end method

.method public final continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p1, v2, v0, p2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    :goto_0
    iget p1, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    if-ne p1, p3, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-object p0, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {p0, p2, p3}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    iget-object p0, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {p0}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method
