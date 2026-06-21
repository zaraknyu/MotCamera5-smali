.class public final Landroidx/media3/extractor/HevcConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bitdepthChroma:I

.field public final bitdepthLuma:I

.field public final codecs:Ljava/lang/String;

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final initializationData:Ljava/util/List;

.field public final maxNumReorderPics:I

.field public final maxSubLayers:I

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthHeightRatio:F

.field public final stereoMode:I

.field public final vpsData:Landroidx/work/WorkQuery;


# direct methods
.method public constructor <init>(Ljava/util/List;IIIIIIIIFILjava/lang/String;Landroidx/work/WorkQuery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    iput p2, p0, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    iput p3, p0, Landroidx/media3/extractor/HevcConfig;->maxSubLayers:I

    iput p4, p0, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    iput p5, p0, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    iput p6, p0, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    iput p7, p0, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    iput p8, p0, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    iput p9, p0, Landroidx/media3/extractor/HevcConfig;->stereoMode:I

    iput p10, p0, Landroidx/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    iput p11, p0, Landroidx/media3/extractor/HevcConfig;->maxNumReorderPics:I

    iput-object p12, p0, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    iput-object p13, p0, Landroidx/media3/extractor/HevcConfig;->vpsData:Landroidx/work/WorkQuery;

    return-void
.end method

.method public static parseImpl(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/work/WorkQuery;)Landroidx/media3/extractor/HevcConfig;
    .locals 33

    move-object/from16 v0, p0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    iget v4, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    const/4 v8, 0x1

    if-ge v6, v3, :cond_2

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    move v9, v5

    :goto_2
    if-ge v9, v8, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    add-int/lit8 v11, v10, 0x4

    add-int/2addr v7, v11

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-array v4, v7, [B

    const/4 v6, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v24, p2

    move v14, v6

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v22, v20

    move/from16 v21, v9

    move-object/from16 v23, v10

    move v6, v5

    move v9, v6

    :goto_3
    if-ge v6, v3, :cond_9

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    and-int/lit8 v10, v10, 0x3f

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    move v13, v5

    move-object/from16 v12, v24

    :goto_4
    if-ge v13, v11, :cond_8

    move/from16 v25, v8

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    move/from16 v26, v2

    sget-object v2, Landroidx/media3/container/ObuParser;->NAL_START_CODE:[B

    invoke-static {v2, v5, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x4

    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v2, v1, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x20

    if-ne v10, v1, :cond_3

    if-nez v13, :cond_3

    add-int v1, v9, v8

    invoke-static {v9, v1, v4}, Landroidx/media3/container/ObuParser;->parseH265VpsNalUnit(II[B)Landroidx/work/WorkQuery;

    move-result-object v12

    goto/16 :goto_6

    :cond_3
    const/16 v1, 0x21

    if-ne v10, v1, :cond_6

    if-nez v13, :cond_6

    add-int v1, v9, v8

    invoke-static {v4, v9, v1, v12}, Landroidx/media3/container/ObuParser;->parseH265SpsNalUnit([BIILandroidx/work/WorkQuery;)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object v1

    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxSubLayersMinus1:I

    add-int/lit8 v14, v2, 0x1

    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    add-int/lit8 v15, v2, 0x8

    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    add-int/lit8 v16, v2, 0x8

    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    iget v5, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    move/from16 v17, v2

    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    move/from16 v18, v2

    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    move/from16 v19, v2

    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxNumReorderPics:I

    iget-object v1, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    if-eqz v1, :cond_4

    move/from16 v21, v2

    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    move/from16 v27, v2

    iget-boolean v2, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    move/from16 v28, v2

    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    move/from16 v29, v2

    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    move/from16 v30, v2

    iget-object v2, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    iget v1, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalLevelIdc:I

    move/from16 v32, v1

    move-object/from16 v31, v2

    invoke-static/range {v27 .. v32}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v23

    goto :goto_5

    :cond_4
    move/from16 v21, v2

    :goto_5
    move/from16 v22, v21

    move/from16 v21, v19

    move/from16 v19, v18

    move/from16 v18, v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_6
    const/16 v1, 0x27

    if-ne v10, v1, :cond_5

    if-nez v13, :cond_5

    add-int v1, v9, v8

    invoke-static {v9, v1, v4}, Landroidx/media3/container/ObuParser;->parseH265Sei3dRefDisplayInfo(II[B)Lcom/google/android/gms/dynamite/zzo;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v12, :cond_5

    iget v1, v1, Lcom/google/android/gms/dynamite/zzo;->zza:I

    iget-object v2, v12, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/collect/ImmutableList;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v2, v2, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    if-ne v1, v2, :cond_7

    const/16 v20, 0x4

    goto :goto_6

    :cond_7
    const/4 v1, 0x5

    move/from16 v20, v1

    :goto_6
    add-int/2addr v9, v8

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v25

    move/from16 v2, v26

    const/4 v1, 0x4

    goto/16 :goto_4

    :cond_8
    move/from16 v26, v2

    move/from16 v25, v8

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v24, v12

    const/4 v1, 0x4

    goto/16 :goto_3

    :cond_9
    move/from16 v26, v2

    move/from16 v25, v8

    if-nez v7, :cond_a

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_7
    move-object v12, v0

    goto :goto_8

    :cond_a
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    :goto_8
    new-instance v11, Landroidx/media3/extractor/HevcConfig;

    add-int/lit8 v13, v26, 0x1

    invoke-direct/range {v11 .. v24}, Landroidx/media3/extractor/HevcConfig;-><init>(Ljava/util/List;IIIIIIIIFILjava/lang/String;Landroidx/work/WorkQuery;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :goto_9
    if-eqz p1, :cond_b

    const-string v1, "L-HEVC config"

    goto :goto_a

    :cond_b
    const-string v1, "HEVC config"

    :goto_a
    const-string v2, "Error parsing"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method
