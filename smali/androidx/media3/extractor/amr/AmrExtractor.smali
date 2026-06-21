.class public final Landroidx/media3/extractor/amr/AmrExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field public static final amrSignatureNb:[B

.field public static final amrSignatureWb:[B

.field public static final frameSizeBytesByTypeNb:[I

.field public static final frameSizeBytesByTypeWb:[I


# instance fields
.field public currentSampleBytesRemaining:I

.field public currentSampleSize:I

.field public currentSampleTimeUs:J

.field public currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public firstSampleSize:I

.field public hasOutputFormat:Z

.field public isSeekInProgress:Z

.field public isWideBand:Z

.field public numSamplesWithSameSize:I

.field public realTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field public final scratch:[B

.field public seekMap:Landroidx/media3/extractor/SeekMap;

.field public seekTimeUs:J

.field public final skippingTrackOutput:Landroidx/media3/extractor/DiscardingTrackOutput;

.field public timeOffsetUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "#!AMR\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    const-string v1, "#!AMR-WB\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->scratch:[B

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    new-instance v0, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {v0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->skippingTrackOutput:Landroidx/media3/extractor/DiscardingTrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final peekNextSampleSize(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 3

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->scratch:[B

    invoke-interface {p1, v1, v0, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    aget-byte p1, v2, v1

    and-int/lit16 v0, p1, 0x83

    const/4 v1, 0x0

    if-gtz v0, :cond_5

    shr-int/lit8 p1, p1, 0x3

    const/16 v0, 0xf

    and-int/2addr p1, v0

    if-ltz p1, :cond_3

    if-gt p1, v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-lt p1, v2, :cond_1

    const/16 v2, 0xd

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_3

    const/16 v2, 0xc

    if-lt p1, v2, :cond_1

    const/16 v2, 0xe

    if-le p1, v2, :cond_3

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    sget-object p0, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    aget p0, p0, p1

    return p0

    :cond_2
    sget-object p0, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    aget p0, p0, p1

    return p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Illegal AMR "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz p0, :cond_4

    const-string p0, "WB"

    goto :goto_1

    :cond_4
    const-string p0, "NB"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " frame type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid padding bits for frame header "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/amr/AmrExtractor;->readAmrHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Could not find AMR header."

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-boolean v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6

    iput-boolean v2, v0, Landroidx/media3/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    iget-boolean v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    const-string v5, "audio/amr-wb"

    if-eqz v1, :cond_2

    move-object v6, v5

    goto :goto_1

    :cond_2
    const-string v6, "audio/amr"

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v5, "audio/3gpp"

    :goto_2
    if-eqz v1, :cond_4

    const/16 v7, 0x3e80

    goto :goto_3

    :cond_4
    const/16 v7, 0x1f40

    :goto_3
    if-eqz v1, :cond_5

    sget-object v1, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    const/16 v8, 0x8

    aget v1, v1, v8

    goto :goto_4

    :cond_5
    sget-object v1, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    const/4 v8, 0x7

    aget v1, v1, v8

    :goto_4
    iget-object v8, v0, Landroidx/media3/extractor/amr/AmrExtractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    new-instance v9, Landroidx/media3/common/Format$Builder;

    invoke-direct {v9}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {v6}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v1, v9, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    iput v2, v9, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v7, v9, Landroidx/media3/common/Format$Builder;->sampleRate:I

    invoke-static {v9, v8}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    :cond_6
    iget v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    const/4 v5, 0x0

    const-wide/16 v6, 0x4e20

    const/4 v8, -0x1

    if-nez v1, :cond_c

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/amr/AmrExtractor;->peekNextSampleSize(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v1

    iput v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    iget v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    if-ne v1, v8, :cond_7

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    iget v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    iput v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    :cond_7
    iget v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    iget v9, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-ne v1, v9, :cond_8

    iget v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    :cond_8
    iget-object v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    instance-of v9, v1, Landroidx/media3/extractor/IndexSeekMap;

    if-eqz v9, :cond_c

    check-cast v1, Landroidx/media3/extractor/IndexSeekMap;

    iget-wide v9, v0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v11, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v9, v11

    add-long/2addr v9, v6

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    iget v13, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    int-to-long v13, v13

    add-long/2addr v11, v13

    iget-object v13, v1, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    iget v14, v13, Landroidx/media3/common/util/LongArray;->size:I

    if-nez v14, :cond_9

    goto :goto_5

    :cond_9
    sub-int/2addr v14, v2

    invoke-virtual {v13, v14}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v13

    sub-long v13, v9, v13

    const-wide/32 v15, 0x186a0

    cmp-long v13, v13, v15

    if-gez v13, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    iget-object v13, v1, Landroidx/media3/extractor/IndexSeekMap;->positions:Landroidx/media3/common/util/LongArray;

    iget-object v1, v1, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    iget v14, v1, Landroidx/media3/common/util/LongArray;->size:I

    if-nez v14, :cond_b

    cmp-long v14, v9, v3

    if-lez v14, :cond_b

    invoke-virtual {v13, v3, v4}, Landroidx/media3/common/util/LongArray;->add(J)V

    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/util/LongArray;->add(J)V

    :cond_b
    invoke-virtual {v13, v11, v12}, Landroidx/media3/common/util/LongArray;->add(J)V

    invoke-virtual {v1, v9, v10}, Landroidx/media3/common/util/LongArray;->add(J)V

    :goto_6
    iget-boolean v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->isSeekInProgress:Z

    if-eqz v1, :cond_c

    iget-wide v3, v0, Landroidx/media3/extractor/amr/AmrExtractor;->seekTimeUs:J

    sub-long/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v1, v3, v6

    if-gez v1, :cond_c

    iput-boolean v5, v0, Landroidx/media3/extractor/amr/AmrExtractor;->isSeekInProgress:Z

    iget-object v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    goto :goto_8

    :catch_0
    move-object/from16 v4, p1

    :goto_7
    move v5, v8

    goto :goto_9

    :cond_c
    :goto_8
    iget-object v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v3, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    move-object/from16 v4, p1

    invoke-interface {v1, v4, v3, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v1

    if-ne v1, v8, :cond_d

    goto :goto_7

    :cond_d
    iget v2, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    if-lez v2, :cond_e

    goto :goto_9

    :cond_e
    iget-object v9, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-wide v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v10, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v10, v1

    iget v13, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x1

    invoke-interface/range {v9 .. v15}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v1, v6

    iput-wide v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    :goto_9
    invoke-interface {v4}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    iget-object v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-eqz v1, :cond_f

    goto :goto_a

    :cond_f
    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    iput-object v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    iget-object v2, v0, Landroidx/media3/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    :goto_a
    if-ne v5, v8, :cond_10

    iget-object v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    instance-of v2, v1, Landroidx/media3/extractor/IndexSeekMap;

    if-eqz v2, :cond_10

    iget-wide v2, v0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v6, v0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v2, v6

    move-object v4, v1

    check-cast v4, Landroidx/media3/extractor/IndexSeekMap;

    iput-wide v2, v4, Landroidx/media3/extractor/IndexSeekMap;->durationUs:J

    iget-object v2, v0, Landroidx/media3/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iget-object v0, v0, Landroidx/media3/extractor/amr/AmrExtractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_10
    return v5
.end method

.method public final readAmrHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    array-length v1, v0

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    array-length p0, v0

    invoke-interface {p1, p0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return v2

    :cond_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    array-length v1, v0

    new-array v1, v1, [B

    array-length v4, v0

    invoke-interface {p1, v3, v4, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    array-length p0, v0

    invoke-interface {p1, p0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return v2

    :cond_1
    return v3
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    iput v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    iput-wide p3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekTimeUs:J

    iget-object p3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    instance-of p4, p3, Landroidx/media3/extractor/IndexSeekMap;

    if-eqz p4, :cond_2

    check-cast p3, Landroidx/media3/extractor/IndexSeekMap;

    iget-object p4, p3, Landroidx/media3/extractor/IndexSeekMap;->timesUs:Landroidx/media3/common/util/LongArray;

    iget v0, p4, Landroidx/media3/common/util/LongArray;->size:I

    if-nez v0, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    iget-object p3, p3, Landroidx/media3/extractor/IndexSeekMap;->positions:Landroidx/media3/common/util/LongArray;

    invoke-static {p3, p1, p2}, Landroidx/media3/common/util/Util;->binarySearchFloor(Landroidx/media3/common/util/LongArray;J)I

    move-result p1

    invoke-virtual {p4, p1}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide p3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekTimeUs:J

    sub-long/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 p3, 0x4e20

    cmp-long p1, p1, p3

    if-gez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isSeekInProgress:Z

    iget-object p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->skippingTrackOutput:Landroidx/media3/extractor/DiscardingTrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    return-void

    :cond_2
    cmp-long p4, p1, v0

    if-eqz p4, :cond_3

    instance-of p4, p3, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    if-eqz p4, :cond_3

    check-cast p3, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    iget-wide v2, p3, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->firstFrameBytePosition:J

    iget p3, p3, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate$1:I

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x7a1200

    mul-long/2addr p1, v0

    int-to-long p3, p3

    div-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    return-void

    :cond_3
    iput-wide v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/amr/AmrExtractor;->readAmrHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
