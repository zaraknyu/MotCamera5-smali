.class public final Landroidx/media3/extractor/ts/H265Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public formatId:Ljava/lang/String;

.field public hasOutputFormat:Z

.field public output:Landroidx/media3/extractor/TrackOutput;

.field public pesTimeUs:J

.field public final pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final prefixFlags:[Z

.field public final prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

.field public final seiReader:Landroidx/core/view/MenuHostHelper;

.field public final seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

.field public final sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public totalBytesWritten:J

.field public final vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Landroidx/core/view/MenuHostHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/core/view/MenuHostHelper;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x21

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x22

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x27

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 13

    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_5

    iget v1, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v7, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget-object v8, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget-wide v2, p0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    iget-object v2, p0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/4 v9, 0x0

    invoke-interface {v2, p1, v3, v9}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    :goto_0
    if-ge v1, v7, :cond_0

    iget-object v2, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v8, v1, v7, v2}, Landroidx/media3/container/ObuParser;->findNalUnit([BII[Z)I

    move-result v2

    if-ne v2, v7, :cond_1

    invoke-virtual {p0, v1, v7, v8}, Landroidx/media3/extractor/ts/H265Reader;->nalUnitData$1(II[B)V

    return-void

    :cond_1
    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v8, v3

    and-int/lit8 v3, v3, 0x7e

    shr-int/lit8 v10, v3, 0x1

    if-lez v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v8, v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x4

    :goto_1
    move v11, v2

    move v12, v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    goto :goto_1

    :goto_2
    sub-int v2, v11, v1

    if-lez v2, :cond_3

    invoke-virtual {p0, v1, v11, v8}, Landroidx/media3/extractor/ts/H265Reader;->nalUnitData$1(II[B)V

    :cond_3
    sub-int v1, v7, v11

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v5, v1

    sub-long/2addr v3, v5

    if-gez v2, :cond_4

    neg-int v2, v2

    goto :goto_3

    :cond_4
    move v2, v9

    :goto_3
    iget-wide v5, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H265Reader;->endNalUnit$1(IIJJ)V

    iget-wide v5, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    move v2, v10

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H265Reader;->startNalUnit(IIJJ)V

    add-int v1, v11, v12

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    new-instance v1, Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    invoke-direct {v1, v0}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/MenuHostHelper;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final endNalUnit$1(IIJJ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p5

    iget-object v4, v0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/core/view/MenuHostHelper;

    iget-object v4, v4, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper;

    iget-object v5, v0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v6, v0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    iget-boolean v7, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    iget-boolean v7, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v7, :cond_0

    iget-boolean v6, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v6, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    iput-boolean v8, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    goto :goto_0

    :cond_0
    iget-boolean v7, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    if-nez v7, :cond_1

    iget-boolean v7, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v7, :cond_3

    :cond_1
    if-eqz v6, :cond_2

    iget-boolean v6, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v6, :cond_2

    iget-wide v6, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    sub-long v6, p3, v6

    long-to-int v6, v6

    add-int v6, p1, v6

    invoke-virtual {v5, v6}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    :cond_2
    iget-wide v6, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    iput-wide v6, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    iget-wide v6, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v6, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    iget-boolean v6, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v6, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    iput-boolean v9, v5, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    :cond_3
    :goto_0
    iget-boolean v5, v0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v5, :cond_7

    iget-object v5, v0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v5, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-object v6, v0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v6, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-object v7, v0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v7, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-boolean v10, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v10, :cond_7

    iget-boolean v10, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v10, :cond_7

    iget-boolean v10, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v10, :cond_7

    iget-object v10, v0, Landroidx/media3/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    iget v11, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v12, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v12, v11

    iget v13, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v12, v13

    new-array v12, v12, [B

    iget-object v13, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v13, [B

    invoke-static {v13, v8, v12, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v11, [B

    iget v13, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v14, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v11, v8, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v11, [B

    iget v5, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v13, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v5, v13

    iget v7, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v11, v8, v12, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v5, [B

    iget v6, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    const/4 v7, 0x3

    const/4 v11, 0x0

    invoke-static {v5, v7, v6, v11}, Landroidx/media3/container/ObuParser;->parseH265SpsNalUnit([BIILandroidx/work/WorkQuery;)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object v5

    iget-object v6, v5, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    if-eqz v6, :cond_4

    iget v13, v6, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    iget-boolean v14, v6, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    iget v15, v6, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    iget v7, v6, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    iget-object v11, v6, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    iget v6, v6, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalLevelIdc:I

    move/from16 v18, v6

    move/from16 v16, v7

    move-object/from16 v17, v11

    invoke-static/range {v13 .. v18}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v11

    :cond_4
    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v10, v6, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string/jumbo v7, "video/mp2t"

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    const-string/jumbo v7, "video/hevc"

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput-object v11, v6, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iget v7, v5, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    iput v7, v6, Landroidx/media3/common/Format$Builder;->width:I

    iget v7, v5, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    iput v7, v6, Landroidx/media3/common/Format$Builder;->height:I

    iget v14, v5, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    iget v15, v5, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    iget v7, v5, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    iget v10, v5, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    add-int/lit8 v17, v10, 0x8

    iget v10, v5, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    add-int/lit8 v18, v10, 0x8

    new-instance v13, Landroidx/media3/common/ColorInfo;

    const/16 v19, 0x0

    move/from16 v16, v7

    invoke-direct/range {v13 .. v19}, Landroidx/media3/common/ColorInfo;-><init>(IIIII[B)V

    iput-object v13, v6, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget v7, v5, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    iput v7, v6, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    iget v7, v5, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxNumReorderPics:I

    iput v7, v6, Landroidx/media3/common/Format$Builder;->maxNumReorderSamples:I

    iget v5, v5, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxSubLayersMinus1:I

    add-int/2addr v5, v9

    iput v5, v6, Landroidx/media3/common/Format$Builder;->maxSubLayers:I

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v6, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget-object v6, v0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v6, v5}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    const/4 v6, -0x1

    iget v5, v5, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    if-eq v5, v6, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v5, :cond_5

    move v8, v9

    :cond_5
    invoke-static {v8}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/AdapterHelper;->flushQueueDownToSize(I)V

    iput-boolean v9, v0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_7
    :goto_1
    iget-object v5, v0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v5, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v6

    const/4 v7, 0x5

    iget-object v8, v0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v6, :cond_8

    iget-object v6, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v6, [B

    iget v9, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v9, v6}, Landroidx/media3/container/ObuParser;->unescapeStream(I[B)I

    move-result v6

    iget-object v5, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v8, v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v4, v2, v3, v8}, Landroidx/recyclerview/widget/AdapterHelper;->add(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_8
    iget-object v0, v0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v1, [B

    iget v5, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v5, v1}, Landroidx/media3/container/ObuParser;->unescapeStream(I[B)I

    move-result v1

    iget-object v0, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v8, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v4, v2, v3, v8}, Landroidx/recyclerview/widget/AdapterHelper;->add(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_9
    return-void
.end method

.method public final nalUnitData$1(II[B)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v1, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int/2addr v1, v2

    if-ge v1, p2, :cond_1

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    goto :goto_1

    :cond_1
    sub-int v1, p2, p1

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    :cond_3
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    return-void
.end method

.method public final packetFinished(Z)V
    .locals 7

    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/core/view/MenuHostHelper;

    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/AdapterHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/AdapterHelper;->flushQueueDownToSize(I)V

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    iget-wide v5, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H265Reader;->endNalUnit$1(IIJJ)V

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    const/16 v2, 0x30

    iget-wide v5, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H265Reader;->startNalUnit(IIJJ)V

    :cond_0
    return-void
.end method

.method public final packetStarted(IJ)V
    .locals 0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    return-void
.end method

.method public final seek()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroidx/media3/container/ObuParser;->clearPrefixFlags([Z)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/core/view/MenuHostHelper;

    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/AdapterHelper;->flushQueueDownToSize(I)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    if-eqz p0, :cond_0

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    :cond_0
    return-void
.end method

.method public final startNalUnit(IIJJ)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    iput-wide p5, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    iput-wide p3, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    const/4 p3, 0x1

    const/16 p4, 0x20

    if-lt p2, p4, :cond_5

    const/16 p5, 0x28

    if-ne p2, p5, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p5, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz p5, :cond_2

    iget-boolean p5, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    if-nez p5, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    :cond_1
    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    :cond_2
    if-gt p4, p2, :cond_3

    const/16 p1, 0x23

    if-le p2, p1, :cond_4

    :cond_3
    const/16 p1, 0x27

    if-ne p2, p1, :cond_5

    :cond_4
    iget-boolean p1, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    xor-int/2addr p1, p3

    iput-boolean p1, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    iput-boolean p3, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    :cond_5
    :goto_0
    const/16 p1, 0x10

    if-lt p2, p1, :cond_6

    const/16 p1, 0x15

    if-gt p2, p1, :cond_6

    move p1, p3

    goto :goto_1

    :cond_6
    move p1, v2

    :goto_1
    iput-boolean p1, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    if-nez p1, :cond_7

    const/16 p1, 0x9

    if-gt p2, p1, :cond_8

    :cond_7
    move v2, p3

    :cond_8
    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :cond_9
    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p0, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    return-void
.end method
