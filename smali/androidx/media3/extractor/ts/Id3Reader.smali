.class public final Landroidx/media3/extractor/ts/Id3Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public final synthetic $r8$classId:I

.field public final id3Header:Ljava/lang/Object;

.field public output:Ljava/lang/Object;

.field public sampleBytesRead:I

.field public sampleSize:I

.field public sampleTimeUs:J

.field public writingSample:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 9

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iput-boolean v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    :cond_1
    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    :goto_0
    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    :cond_4
    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    :goto_1
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget v0, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    check-cast v2, [Landroidx/media3/extractor/TrackOutput;

    array-length v4, v2

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_6

    aget-object v6, v2, v5

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v6, p1, v1, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    iget p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    :cond_7
    :goto_3
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/TrackOutput;

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-boolean v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-ge v2, v4, :cond_b

    rsub-int/lit8 v2, v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v5, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v6, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget-object v7, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v8, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    invoke-static {v5, v6, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v5, v2

    if-ne v5, v4, :cond_b

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 v2, 0x49

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    if-ne v2, v5, :cond_a

    const/16 v2, 0x44

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    if-ne v2, v5, :cond_a

    const/16 v2, 0x33

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    if-eq v2, v5, :cond_9

    goto :goto_4

    :cond_9
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/2addr v0, v4

    iput v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    goto :goto_5

    :cond_a
    :goto_4
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    goto :goto_6

    :cond_b
    :goto_5
    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    iget v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 6

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    check-cast v0, [Landroidx/media3/extractor/TrackOutput;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget v3, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v3

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget-object v5, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string/jumbo v5, "video/mp2t"

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    const-string v5, "application/dvbsubs"

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget-object v5, v2, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->initializationData:[B

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    iget-object v2, v2, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->language:Ljava/lang/String;

    iput-object v2, v4, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    invoke-static {v4, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    new-instance p0, Landroidx/media3/common/Format$Builder;

    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget-object p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string/jumbo p2, "video/mp2t"

    invoke-static {p2}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    const-string p2, "application/id3"

    invoke-static {p2}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final packetFinished(Z)V
    .locals 10

    iget p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz p1, :cond_2

    iget-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    check-cast p1, [Landroidx/media3/extractor/TrackOutput;

    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-wide v4, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    iget v7, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    :cond_2
    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz p1, :cond_5

    iget p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    if-eqz p1, :cond_5

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    if-eq v0, p1, :cond_3

    goto :goto_3

    :cond_3
    iget-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    move p1, v0

    :goto_2
    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/media3/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    iget v5, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    :cond_5
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final packetStarted(IJ)V
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    iput-wide p2, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    :goto_0
    return-void

    :pswitch_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    iput-wide p2, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final seek()V
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
