.class public final Landroidx/media3/extractor/ts/H264Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public final allowNonIdrKeyframes:Z

.field public final detectAccessUnits:Z

.field public formatId:Ljava/lang/String;

.field public hasOutputFormat:Z

.field public output:Landroidx/media3/extractor/TrackOutput;

.field public pesTimeUs:J

.field public final pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final prefixFlags:[Z

.field public randomAccessIndicator:Z

.field public sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

.field public final sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final seiReader:Landroidx/core/view/MenuHostHelper;

.field public final seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

.field public final sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public totalBytesWritten:J


# direct methods
.method public constructor <init>(Landroidx/core/view/MenuHostHelper;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->seiReader:Landroidx/core/view/MenuHostHelper;

    iput-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader;->detectAccessUnits:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 13

    iget-object v2, p0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget v2, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v7, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget-object v8, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    iget-object v3, p0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/4 v9, 0x0

    invoke-interface {v3, p1, v4, v9}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v8, v2, v7, v1}, Landroidx/media3/container/ObuParser;->findNalUnit([BII[Z)I

    move-result v1

    if-ne v1, v7, :cond_0

    invoke-virtual {p0, v2, v7, v8}, Landroidx/media3/extractor/ts/H264Reader;->nalUnitData(II[B)V

    return-void

    :cond_0
    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v8, v3

    and-int/lit8 v10, v3, 0x1f

    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v8, v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x4

    :goto_1
    move v11, v1

    move v12, v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x3

    goto :goto_1

    :goto_2
    sub-int v1, v11, v2

    if-lez v1, :cond_2

    invoke-virtual {p0, v2, v11, v8}, Landroidx/media3/extractor/ts/H264Reader;->nalUnitData(II[B)V

    :cond_2
    sub-int v2, v7, v11

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    if-gez v1, :cond_3

    neg-int v1, v1

    goto :goto_3

    :cond_3
    move v1, v9

    :goto_3
    iget-wide v5, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    move v0, v2

    move v2, v1

    move v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H264Reader;->endNalUnit(IIJJ)V

    move-wide v2, v3

    iget-wide v4, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/ts/H264Reader;->startNalUnit(IJJ)V

    add-int v2, v11, v12

    goto :goto_0
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 4

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    new-instance v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v2, p0, Landroidx/media3/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    iget-boolean v3, p0, Landroidx/media3/extractor/ts/H264Reader;->detectAccessUnits:Z

    invoke-direct {v1, v0, v2, v3}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;ZZ)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader;->seiReader:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/MenuHostHelper;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final endNalUnit(IIJJ)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader;->seiReader:Landroidx/core/view/MenuHostHelper;

    iget-object v2, v2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper;

    iget-boolean v3, v0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    const/4 v4, 0x4

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v3, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v3, :cond_5

    :cond_0
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-object v7, v0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v7, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-boolean v8, v0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    const/4 v9, 0x3

    if-nez v8, :cond_2

    iget-boolean v8, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v8, :cond_5

    iget-boolean v8, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v8, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v10, [B

    iget v11, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v10, [B

    iget v11, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v10, [B

    iget v11, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v9, v11, v10}, Landroidx/media3/container/ObuParser;->parseSpsNalUnit(II[B)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object v9

    iget v10, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->maxNumReorderFrames:I

    iget-object v11, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v11, [B

    iget v12, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    new-instance v13, Landroidx/media3/extractor/VorbisBitArray;

    invoke-direct {v13, v4, v12, v11}, Landroidx/media3/extractor/VorbisBitArray;-><init>(II[B)V

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->readExpGolombCodeNum()I

    move-result v11

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->readExpGolombCodeNum()I

    move-result v12

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v13

    new-instance v14, Landroidx/media3/container/NalUnitUtil$PpsData;

    invoke-direct {v14, v11, v12, v13}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    iget v12, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->profileIdc:I

    iget v13, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    iget v15, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->levelIdc:I

    sget-object v16, Landroidx/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v12, v13, v15}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "avc1.%02X%02X%02X"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    new-instance v15, Landroidx/media3/common/Format$Builder;

    invoke-direct {v15}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v5, v0, Landroidx/media3/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    iput-object v5, v15, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string/jumbo v5, "video/mp2t"

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    const-string/jumbo v5, "video/avc"

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput-object v12, v15, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iget v5, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->width:I

    iput v5, v15, Landroidx/media3/common/Format$Builder;->width:I

    iget v5, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->height:I

    iput v5, v15, Landroidx/media3/common/Format$Builder;->height:I

    iget v5, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->colorSpace:I

    iget v12, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->colorRange:I

    iget v4, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->colorTransfer:I

    iget v6, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->bitDepthLumaMinus8:I

    add-int/lit8 v21, v6, 0x8

    iget v6, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->bitDepthChromaMinus8:I

    add-int/lit8 v22, v6, 0x8

    new-instance v17, Landroidx/media3/common/ColorInfo;

    const/16 v23, 0x0

    move/from16 v20, v4

    move/from16 v18, v5

    move/from16 v19, v12

    invoke-direct/range {v17 .. v23}, Landroidx/media3/common/ColorInfo;-><init>(IIIII[B)V

    move-object/from16 v4, v17

    iput-object v4, v15, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget v4, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    iput v4, v15, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    iput-object v8, v15, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    iput v10, v15, Landroidx/media3/common/Format$Builder;->maxNumReorderSamples:I

    invoke-static {v15, v13}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v10, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput v10, v2, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/AdapterHelper;->flushQueueDownToSize(I)V

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v4, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v5, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v4, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v4, v11, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    invoke-virtual {v7}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_2

    :cond_2
    iget-boolean v4, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v4, :cond_4

    iget-object v4, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v4, [B

    iget v5, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v9, v5, v4}, Landroidx/media3/container/ObuParser;->parseSpsNalUnit(II[B)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object v4

    iget v5, v4, Landroidx/media3/container/NalUnitUtil$SpsData;->maxNumReorderFrames:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v5, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput v5, v2, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/AdapterHelper;->flushQueueDownToSize(I)V

    iget-object v5, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v5, v5, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v6, v4, Landroidx/media3/container/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_2

    :cond_4
    iget-boolean v3, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v3, :cond_5

    iget-object v3, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v3, [B

    iget v4, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    new-instance v5, Landroidx/media3/extractor/VorbisBitArray;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v4, v3}, Landroidx/media3/extractor/VorbisBitArray;-><init>(II[B)V

    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->readExpGolombCodeNum()I

    move-result v3

    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->readExpGolombCodeNum()I

    move-result v4

    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v5

    new-instance v6, Landroidx/media3/container/NalUnitUtil$PpsData;

    invoke-direct {v6, v3, v4, v5}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v4, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v7}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_5
    :goto_2
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v1, [B

    iget v4, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v1}, Landroidx/media3/container/ObuParser;->unescapeStream(I[B)I

    move-result v1

    iget-object v3, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move-wide/from16 v5, p5

    invoke-virtual {v2, v5, v6, v4}, Landroidx/recyclerview/widget/AdapterHelper;->add(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_6
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    iget v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_d

    iget-boolean v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v3, :cond_10

    iget-object v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v4, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-boolean v5, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    if-nez v5, :cond_7

    goto/16 :goto_5

    :cond_7
    iget-boolean v5, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    iget-object v5, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Landroidx/media3/container/NalUnitUtil$SpsData;

    invoke-static {v5}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v6, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Landroidx/media3/container/NalUnitUtil$SpsData;

    invoke-static {v6}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget v6, v6, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    iget v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    iget v8, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    if-ne v7, v8, :cond_d

    iget v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    iget v8, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    if-ne v7, v8, :cond_d

    iget-boolean v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    iget-boolean v8, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    if-ne v7, v8, :cond_d

    iget-boolean v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v7, :cond_9

    iget-boolean v7, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v7, :cond_9

    iget-boolean v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    iget-boolean v8, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    if-ne v7, v8, :cond_d

    :cond_9
    iget v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    iget v8, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    if-eq v7, v8, :cond_a

    if-eqz v7, :cond_d

    if-eqz v8, :cond_d

    :cond_a
    iget v5, v5, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v5, :cond_b

    if-nez v6, :cond_b

    iget v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    iget v8, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    if-ne v7, v8, :cond_d

    iget v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    iget v8, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    if-ne v7, v8, :cond_d

    :cond_b
    const/4 v7, 0x1

    if-ne v5, v7, :cond_c

    if-ne v6, v7, :cond_c

    iget v5, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    iget v6, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    if-ne v5, v6, :cond_d

    iget v5, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    iget v6, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    if-ne v5, v6, :cond_d

    :cond_c
    iget-boolean v5, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    iget-boolean v6, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    if-ne v5, v6, :cond_d

    if-eqz v5, :cond_10

    iget v3, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    iget v4, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    if-eq v3, v4, :cond_10

    :cond_d
    :goto_3
    if-eqz v2, :cond_f

    iget-boolean v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    if-eqz v2, :cond_f

    iget-wide v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long v4, p3, v2

    long-to-int v4, v4

    add-int v10, p1, v4

    iget-wide v6, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v6, v4

    if-eqz v4, :cond_f

    iget-wide v4, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    cmp-long v8, v2, v4

    if-nez v8, :cond_e

    goto :goto_4

    :cond_e
    iget-boolean v8, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    sub-long/2addr v2, v4

    long-to-int v9, v2

    iget-object v5, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_f
    :goto_4
    iget-wide v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    iget-wide v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    :cond_10
    :goto_5
    iget-boolean v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz v2, :cond_13

    iget-object v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-boolean v3, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    if-eqz v3, :cond_12

    iget v2, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_11

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    :cond_11
    const/4 v4, 0x1

    goto :goto_6

    :cond_12
    const/4 v4, 0x0

    goto :goto_6

    :cond_13
    iget-boolean v4, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->randomAccessIndicator:Z

    :goto_6
    iget-boolean v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_15

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    goto :goto_7

    :cond_14
    const/4 v6, 0x0

    goto :goto_8

    :cond_15
    const/4 v4, 0x1

    :goto_7
    move v6, v4

    :goto_8
    or-int/2addr v2, v6

    iput-boolean v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    const/16 v3, 0x18

    iput v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    :cond_16
    return-void
.end method

.method public final nalUnitData(II[B)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-boolean v4, v0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v4, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v1, v2, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v1, v2, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    :cond_1
    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v1, v2, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    iget-object v0, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    iget-object v5, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/extractor/VorbisBitArray;

    iget-boolean v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    if-nez v6, :cond_2

    goto/16 :goto_7

    :cond_2
    sub-int/2addr v2, v1

    iget-object v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    array-length v7, v6

    iget v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v8, v2

    const/4 v9, 0x2

    if-ge v7, v8, :cond_3

    mul-int/2addr v8, v9

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    :cond_3
    iget-object v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v7, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    invoke-static {v3, v1, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iput-object v2, v5, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    const/4 v2, 0x0

    iput v2, v5, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    iput v1, v5, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    iput v2, v5, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroidx/media3/extractor/VorbisBitArray;->canReadBits(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    invoke-virtual {v5, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {v5, v3}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->canReadExpGolombCodedNum()Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->readExpGolombCodeNum()I

    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->canReadExpGolombCodedNum()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->readExpGolombCodeNum()I

    move-result v6

    iget-boolean v7, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    const/4 v8, 0x1

    if-nez v7, :cond_7

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    iget-object v0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    iput-boolean v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    return-void

    :cond_7
    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->canReadExpGolombCodedNum()Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->readExpGolombCodeNum()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_9

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    return-void

    :cond_9
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/NalUnitUtil$PpsData;

    iget-object v10, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v11, v4, Landroidx/media3/container/NalUnitUtil$PpsData;->seqParameterSetId:I

    iget-boolean v4, v4, Landroidx/media3/container/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/container/NalUnitUtil$SpsData;

    iget-boolean v11, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    iget v12, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    iget v13, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->frameNumLength:I

    if-eqz v11, :cond_b

    invoke-virtual {v5, v9}, Landroidx/media3/extractor/VorbisBitArray;->canReadBits(I)Z

    move-result v11

    if-nez v11, :cond_a

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v5, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_b
    invoke-virtual {v5, v13}, Landroidx/media3/extractor/VorbisBitArray;->canReadBits(I)Z

    move-result v9

    if-nez v9, :cond_c

    goto/16 :goto_7

    :cond_c
    invoke-virtual {v5, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    iget-boolean v11, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    if-nez v11, :cond_10

    invoke-virtual {v5, v8}, Landroidx/media3/extractor/VorbisBitArray;->canReadBits(I)Z

    move-result v11

    if-nez v11, :cond_d

    goto/16 :goto_7

    :cond_d
    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v5, v8}, Landroidx/media3/extractor/VorbisBitArray;->canReadBits(I)Z

    move-result v13

    if-nez v13, :cond_e

    goto/16 :goto_7

    :cond_e
    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v13

    move v14, v8

    goto :goto_1

    :cond_f
    move v13, v2

    :goto_0
    move v14, v13

    goto :goto_1

    :cond_10
    move v11, v2

    move v13, v11

    goto :goto_0

    :goto_1
    iget v15, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v15, v3, :cond_11

    move v3, v8

    goto :goto_2

    :cond_11
    move v3, v2

    :goto_2
    if-eqz v3, :cond_13

    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->canReadExpGolombCodedNum()Z

    move-result v15

    if-nez v15, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->readExpGolombCodeNum()I

    move-result v15

    goto :goto_3

    :cond_13
    move v15, v2

    :goto_3
    iget v2, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v2, :cond_17

    invoke-virtual {v5, v12}, Landroidx/media3/extractor/VorbisBitArray;->canReadBits(I)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_7

    :cond_14
    invoke-virtual {v5, v12}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    if-eqz v4, :cond_16

    if-nez v11, :cond_16

    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->readSignedExpGolombCodedInt()I

    move-result v4

    move v5, v4

    const/4 v4, 0x0

    :goto_4
    const/4 v12, 0x0

    goto :goto_8

    :cond_16
    :goto_5
    const/4 v4, 0x0

    :goto_6
    const/4 v5, 0x0

    goto :goto_4

    :cond_17
    if-ne v2, v8, :cond_1b

    iget-boolean v2, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v2, :cond_1b

    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_7

    :cond_18
    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->readSignedExpGolombCodedInt()I

    move-result v2

    if-eqz v4, :cond_1a

    if-nez v11, :cond_1a

    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-nez v4, :cond_19

    :goto_7
    return-void

    :cond_19
    invoke-virtual {v5}, Landroidx/media3/extractor/VorbisBitArray;->readSignedExpGolombCodedInt()I

    move-result v4

    move v12, v4

    const/4 v5, 0x0

    move v4, v2

    const/4 v2, 0x0

    goto :goto_8

    :cond_1a
    move v4, v2

    const/4 v2, 0x0

    goto :goto_6

    :cond_1b
    const/4 v2, 0x0

    goto :goto_5

    :goto_8
    iget-object v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object v10, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Landroidx/media3/container/NalUnitUtil$SpsData;

    iput v1, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    iput v6, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    iput v9, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    iput v7, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    iput-boolean v11, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    iput-boolean v14, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    iput-boolean v13, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    iput-boolean v3, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    iput v15, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    iput v2, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    iput v5, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    iput v4, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    iput v12, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    const/4 v1, 0x1

    iput-boolean v1, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    iput-boolean v1, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    return-void
.end method

.method public final packetFinished(Z)V
    .locals 7

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->seiReader:Landroidx/core/view/MenuHostHelper;

    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/AdapterHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/AdapterHelper;->flushQueueDownToSize(I)V

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    iget-wide v5, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H264Reader;->endNalUnit(IIJJ)V

    iget-wide v2, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    const/16 v1, 0x9

    iget-wide v4, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/ts/H264Reader;->startNalUnit(IJJ)V

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    const/4 v2, 0x0

    iget-wide v5, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H264Reader;->endNalUnit(IIJJ)V

    :cond_0
    return-void
.end method

.method public final packetStarted(IJ)V
    .locals 0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    iget-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    return-void
.end method

.method public final seek()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v1}, Landroidx/media3/container/ObuParser;->clearPrefixFlags([Z)V

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->seiReader:Landroidx/core/view/MenuHostHelper;

    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AdapterHelper;->flushQueueDownToSize(I)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    if-eqz p0, :cond_0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    :cond_0
    return-void
.end method

.method public final startNalUnit(IJJ)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean p0, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    iput p1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    iput-wide p4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-boolean p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->randomAccessIndicator:Z

    iget-boolean p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    const/4 p2, 0x1

    if-eqz p0, :cond_2

    if-eq p1, p2, :cond_3

    :cond_2
    iget-boolean p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    if-eq p1, p0, :cond_3

    if-eq p1, p2, :cond_3

    const/4 p0, 0x2

    if-ne p1, p0, :cond_4

    :cond_3
    iget-object p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object p1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object p1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    iput p1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    iput-boolean p2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    :cond_4
    return-void
.end method
