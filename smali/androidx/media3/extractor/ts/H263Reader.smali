.class public final Landroidx/media3/extractor/ts/H263Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field public static final PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F


# instance fields
.field public final csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

.field public formatId:Ljava/lang/String;

.field public hasOutputFormat:Z

.field public output:Landroidx/media3/extractor/TrackOutput;

.field public pesTimeUs:J

.field public final prefixFlags:[Z

.field public sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

.field public totalBytesWritten:J

.field public final userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

.field public final userDataReader:Lcom/motorola/camera/CameraKpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/ts/H263Reader;->PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/CameraKpi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->userDataReader:Lcom/motorola/camera/CameraKpi;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->prefixFlags:[Z

    new-instance p1, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p1, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->data:[B

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0xb2

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/media3/extractor/ts/H263Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget-object v4, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget-wide v5, v0, Landroidx/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Landroidx/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    iget-object v5, v0, Landroidx/media3/extractor/ts/H263Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v5, v1, v6, v7}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    :goto_0
    iget-object v5, v0, Landroidx/media3/extractor/ts/H263Reader;->prefixFlags:[Z

    invoke-static {v4, v2, v3, v5}, Landroidx/media3/container/ObuParser;->findNalUnit([BII[Z)I

    move-result v5

    iget-object v6, v0, Landroidx/media3/extractor/ts/H263Reader;->csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    iget-object v8, v0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-ne v5, v3, :cond_2

    iget-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    if-nez v1, :cond_0

    invoke-virtual {v6, v2, v3, v4}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->onData(II[B)V

    :cond_0
    iget-object v0, v0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->onData(II[B)V

    if-eqz v8, :cond_1

    invoke-virtual {v8, v2, v3, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    :cond_1
    return-void

    :cond_2
    iget-object v9, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v10, v5, 0x3

    aget-byte v9, v9, v10

    and-int/lit16 v11, v9, 0xff

    sub-int v12, v5, v2

    iget-boolean v13, v0, Landroidx/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    if-nez v13, :cond_19

    if-lez v12, :cond_3

    invoke-virtual {v6, v2, v5, v4}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->onData(II[B)V

    :cond_3
    if-gez v12, :cond_4

    neg-int v13, v12

    goto :goto_1

    :cond_4
    move v13, v7

    :goto_1
    iget v7, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    if-eqz v7, :cond_17

    const-string v14, "H263Reader"

    const-string v15, "Unexpected start code value"

    move/from16 v16, v3

    const/4 v3, 0x1

    if-eq v7, v3, :cond_15

    const/4 v3, 0x2

    if-eq v7, v3, :cond_13

    const/4 v3, 0x4

    move/from16 v17, v10

    const/4 v10, 0x3

    if-eq v7, v10, :cond_11

    if-ne v7, v3, :cond_10

    const/16 v7, 0xb3

    if-eq v11, v7, :cond_6

    const/16 v7, 0xb5

    if-ne v11, v7, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_6
    :goto_2
    iget v7, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    sub-int/2addr v7, v13

    iput v7, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    iget-object v7, v0, Landroidx/media3/extractor/ts/H263Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget v9, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->volStartPosition:I

    iget-object v10, v0, Landroidx/media3/extractor/ts/H263Reader;->formatId:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->data:[B

    iget v6, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    invoke-static {v13, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    new-instance v13, Landroidx/media3/extractor/VorbisBitArray;

    array-length v15, v6

    invoke-direct {v13, v15, v6}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    invoke-virtual {v13, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBytes(I)V

    invoke-virtual {v13, v3}, Landroidx/media3/extractor/VorbisBitArray;->skipBytes(I)V

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    const/16 v9, 0x8

    invoke-virtual {v13, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v13, v3}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_7
    invoke-virtual {v13, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    const-string v15, "Invalid aspect ratio"

    move-object/from16 v18, v6

    const/16 v6, 0xf

    if-ne v3, v6, :cond_9

    invoke-virtual {v13, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {v13, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v14, v15}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    int-to-float v3, v3

    int-to-float v9, v9

    div-float v15, v3, v9

    goto :goto_4

    :cond_9
    const/4 v9, 0x7

    if-ge v3, v9, :cond_a

    sget-object v9, Landroidx/media3/extractor/ts/H263Reader;->PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

    aget v15, v9, v3

    goto :goto_4

    :cond_a
    invoke-static {v14, v15}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v13, v6}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    invoke-virtual {v13, v6}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    invoke-virtual {v13, v6}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    const/4 v3, 0x3

    invoke-virtual {v13, v3}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/16 v3, 0xb

    invoke-virtual {v13, v3}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    invoke-virtual {v13, v6}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    :cond_b
    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "Unhandled video object layer shape"

    invoke-static {v14, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    const/16 v3, 0x10

    invoke-virtual {v13, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_f

    if-nez v3, :cond_d

    const-string v3, "Invalid vop_increment_time_resolution"

    invoke-static {v14, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    add-int/lit8 v3, v3, -0x1

    const/4 v6, 0x0

    :goto_5
    if-lez v3, :cond_e

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual {v13, v6}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_f
    :goto_6
    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    const/16 v3, 0xd

    invoke-virtual {v13, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    invoke-virtual {v13, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    invoke-virtual {v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    new-instance v9, Landroidx/media3/common/Format$Builder;

    invoke-direct {v9}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v10, v9, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string/jumbo v10, "video/mp2t"

    invoke-static {v10}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    const-string/jumbo v10, "video/mp4v-es"

    invoke-static {v10}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v6, v9, Landroidx/media3/common/Format$Builder;->width:I

    iput v3, v9, Landroidx/media3/common/Format$Builder;->height:I

    iput v15, v9, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v9, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    goto :goto_8

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_11
    and-int/lit16 v7, v9, 0xf0

    const/16 v9, 0x20

    if-eq v7, v9, :cond_12

    invoke-static {v14, v15}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    iput v7, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    iput v7, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_7

    :cond_12
    const/4 v7, 0x0

    iget v9, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    iput v9, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->volStartPosition:I

    iput v3, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_7

    :cond_13
    move/from16 v17, v10

    const/4 v7, 0x0

    const/16 v3, 0x1f

    if-le v11, v3, :cond_14

    invoke-static {v14, v15}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    iput v7, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    iput v7, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_7

    :cond_14
    const/4 v15, 0x3

    iput v15, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_7

    :cond_15
    move/from16 v17, v10

    const/16 v3, 0xb5

    const/4 v7, 0x0

    if-eq v11, v3, :cond_16

    invoke-static {v14, v15}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    iput v7, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    iput v7, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_7

    :cond_16
    const/4 v3, 0x2

    iput v3, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_7

    :cond_17
    move/from16 v16, v3

    move/from16 v17, v10

    const/4 v7, 0x0

    const/16 v3, 0xb0

    if-ne v11, v3, :cond_18

    const/4 v3, 0x1

    iput v3, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    iput-boolean v3, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    :cond_18
    :goto_7
    sget-object v3, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->START_CODE:[B

    const/4 v15, 0x3

    invoke-virtual {v6, v7, v15, v3}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->onData(II[B)V

    goto :goto_8

    :cond_19
    move/from16 v16, v3

    move/from16 v17, v10

    :goto_8
    iget-object v3, v0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {v3, v2, v5, v4}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->onData(II[B)V

    if-eqz v8, :cond_1c

    if-lez v12, :cond_1a

    invoke-virtual {v8, v2, v5, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    const/4 v2, 0x0

    goto :goto_9

    :cond_1a
    neg-int v2, v12

    :goto_9
    invoke-virtual {v8, v2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v8, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v2, [B

    iget v3, v8, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v2}, Landroidx/media3/container/ObuParser;->unescapeStream(I[B)I

    move-result v2

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v3, v8, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v6, v0, Landroidx/media3/extractor/ts/H263Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    iget-object v2, v0, Landroidx/media3/extractor/ts/H263Reader;->userDataReader:Lcom/motorola/camera/CameraKpi;

    iget-wide v9, v0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    invoke-virtual {v2, v9, v10, v6}, Lcom/motorola/camera/CameraKpi;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_1b
    const/16 v2, 0xb2

    if-ne v11, v2, :cond_1c

    iget-object v2, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v3, v5, 0x2

    aget-byte v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    invoke-virtual {v8, v11}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    goto :goto_a

    :cond_1c
    const/4 v3, 0x1

    :cond_1d
    :goto_a
    sub-int v2, v16, v5

    iget-wide v5, v0, Landroidx/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    int-to-long v7, v2

    sub-long/2addr v5, v7

    iget-object v7, v0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-boolean v8, v0, Landroidx/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    invoke-virtual {v7, v5, v6, v2, v8}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->onDataEnd(JIZ)V

    iget-object v2, v0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-wide v5, v0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    iput v11, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/4 v7, 0x0

    iput-boolean v7, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    const/16 v7, 0xb6

    if-eq v11, v7, :cond_1f

    const/16 v8, 0xb3

    if-ne v11, v8, :cond_1e

    goto :goto_b

    :cond_1e
    const/4 v8, 0x0

    goto :goto_c

    :cond_1f
    :goto_b
    move v8, v3

    :goto_c
    iput-boolean v8, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    if-ne v11, v7, :cond_20

    move v15, v3

    goto :goto_d

    :cond_20
    const/4 v15, 0x0

    :goto_d
    iput-boolean v15, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    const/4 v7, 0x0

    iput v7, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    iput-wide v5, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    move/from16 v3, v16

    move/from16 v2, v17

    goto/16 :goto_0
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->formatId:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->output:Landroidx/media3/extractor/TrackOutput;

    new-instance v1, Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    invoke-direct {v1, v0}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H263Reader;->userDataReader:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/CameraKpi;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final packetFinished(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-wide v0, p0, Landroidx/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    iget-boolean v2, p0, Landroidx/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->onDataEnd(JIZ)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iput-boolean v3, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    iput-boolean v3, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    iput-boolean v3, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    :cond_0
    return-void
.end method

.method public final packetStarted(IJ)V
    .locals 0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    return-void
.end method

.method public final seek()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroidx/media3/container/ObuParser;->clearPrefixFlags([Z)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    iput v1, v0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    iput v1, v0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v1, -0x1

    iput v1, v0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    return-void
.end method
