.class public final Landroidx/media3/extractor/ogg/FlacReader;
.super Landroidx/media3/extractor/ogg/StreamReader;
.source "SourceFile"


# instance fields
.field public flacOggSeeker:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

.field public streamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;


# virtual methods
.method public final preparePayload(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 3

    iget-object p0, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    const/4 v1, 0x4

    shr-int/2addr p0, v1

    const/4 v2, 0x6

    if-eq p0, v2, :cond_0

    const/4 v2, 0x7

    if-ne p0, v2, :cond_1

    :cond_0
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUtf8EncodedLong()J

    :cond_1
    invoke-static {p0, p1}, Landroidx/media3/extractor/AacUtil;->readFrameBlockSizeSamplesFromKey(ILandroidx/media3/common/util/ParsableByteArray;)I

    move-result p0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    int-to-long p0, p0

    return-wide p0

    :cond_2
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final readHeaders(Landroidx/media3/common/util/ParsableByteArray;JLcom/motorola/camera/CameraKpi;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget-object v4, v0, Landroidx/media3/extractor/ogg/FlacReader;->streamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    new-instance v4, Landroidx/media3/extractor/FlacStreamMetadata;

    const/16 v6, 0x11

    invoke-direct {v4, v6, v3}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(I[B)V

    iput-object v4, v0, Landroidx/media3/extractor/ogg/FlacReader;->streamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    const/16 v0, 0x9

    iget v1, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroidx/media3/extractor/FlacStreamMetadata;->getFormat([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "audio/ogg"

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v1, v2, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    return v5

    :cond_0
    const/4 v6, 0x0

    aget-byte v3, v3, v6

    and-int/lit8 v7, v3, 0x7f

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-static {v1}, Landroidx/media3/extractor/AacUtil;->readSeekTableMetadataBlock(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/sqlite/db/SimpleSQLiteQuery;

    move-result-object v19

    new-instance v9, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v10, v4, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v11, v4, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v12, v4, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v13, v4, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v14, v4, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    iget v15, v4, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iget v1, v4, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v2, v4, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v4, v4, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    move/from16 v16, v1

    move-wide/from16 v17, v2

    move-object/from16 v20, v4

    invoke-direct/range {v9 .. v20}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/sqlite/db/SimpleSQLiteQuery;Landroidx/media3/common/Metadata;)V

    move-object/from16 v1, v19

    iput-object v9, v0, Landroidx/media3/extractor/ogg/FlacReader;->streamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    new-instance v2, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v9, v2, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/Object;

    iput-object v1, v2, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:Ljava/lang/Object;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    iput-wide v3, v2, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    iput-object v2, v0, Landroidx/media3/extractor/ogg/FlacReader;->flacOggSeeker:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    return v5

    :cond_1
    const/4 v1, -0x1

    if-ne v3, v1, :cond_3

    iget-object v0, v0, Landroidx/media3/extractor/ogg/FlacReader;->flacOggSeeker:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    if-eqz v0, :cond_2

    move-wide/from16 v3, p2

    iput-wide v3, v0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    iput-object v0, v2, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    :cond_2
    iget-object v0, v2, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v6

    :cond_3
    return v5
.end method

.method public final reset(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/ogg/FlacReader;->streamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iput-object p1, p0, Landroidx/media3/extractor/ogg/FlacReader;->flacOggSeeker:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    :cond_0
    return-void
.end method
