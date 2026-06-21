.class public final Landroidx/media3/extractor/ts/AdtsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public firstFramePosition:J

.field public firstSampleTimestampUs:J

.field public hasOutputSeekMap:Z

.field public final packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public final reader:Landroidx/media3/extractor/ts/AdtsReader;

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public final scratchBits:Landroidx/media3/extractor/VorbisBitArray;

.field public startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/extractor/ts/AdtsReader;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "audio/mp4a-latm"

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/extractor/ts/AdtsReader;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->reader:Landroidx/media3/extractor/ts/AdtsReader;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->firstFramePosition:J

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v1, Landroidx/media3/extractor/VorbisBitArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v2, v0

    invoke-direct {v1, v2, v0}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media3/extractor/VorbisBitArray;

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 3

    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->reader:Landroidx/media3/extractor/ts/AdtsReader;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/ts/AdtsReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 8

    iget-object p2, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {p2}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    iget-object p2, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, p2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v1, 0x800

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-boolean v4, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->hasOutputSeekMap:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v5, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v5, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v4, v5}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->hasOutputSeekMap:Z

    :goto_1
    if-eqz v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p2, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->startedPacket:Z

    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->reader:Landroidx/media3/extractor/ts/AdtsReader;

    if-nez p1, :cond_3

    iget-wide v3, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    iput-wide v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->startedPacket:Z

    :cond_3
    invoke-virtual {v0, p2}, Landroidx/media3/extractor/ts/AdtsReader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    return v2
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->startedPacket:Z

    iget-object p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->reader:Landroidx/media3/extractor/ts/AdtsReader;

    invoke-virtual {p1}, Landroidx/media3/extractor/ts/AdtsReader;->seek()V

    iput-wide p3, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v4, 0xa

    invoke-interface {p1, v0, v4, v3}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    const v4, 0x494433

    if-eq v3, v4, :cond_5

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    iget-wide v2, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->firstFramePosition:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    int-to-long v2, v1

    iput-wide v2, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->firstFramePosition:J

    :cond_0
    const/4 v3, 0x0

    move v2, v1

    move v0, v3

    move v4, v0

    :cond_1
    iget-object v5, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    move-object v7, p1

    check-cast v7, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v8, 0x2

    invoke-virtual {v7, v3, v3, v6, v8}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const v8, 0xfff6

    and-int/2addr v6, v8

    const v8, 0xfff0

    if-ne v6, v8, :cond_4

    const/4 v6, 0x1

    add-int/2addr v0, v6

    const/4 v8, 0x4

    if-lt v0, v8, :cond_2

    const/16 v9, 0xbc

    if-le v4, v9, :cond_2

    return v6

    :cond_2
    iget-object v5, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {v7, v3, v3, v5, v8}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    const/16 v5, 0xe

    iget-object v6, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media3/extractor/VorbisBitArray;

    invoke-virtual {v6, v5}, Landroidx/media3/extractor/VorbisBitArray;->setPosition(I)V

    const/16 v5, 0xd

    invoke-virtual {v6, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    iput v3, v7, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-virtual {v7, v2, v3}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    :goto_1
    move v0, v3

    move v4, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v5, -0x6

    invoke-virtual {v7, v6, v3}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    add-int/2addr v4, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    iput v3, v7, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-virtual {v7, v2, v3}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    goto :goto_1

    :goto_2
    sub-int v5, v2, v1

    const/16 v6, 0x2000

    if-lt v5, v6, :cond_1

    return v3

    :cond_5
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    invoke-interface {p1, v2}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto/16 :goto_0
.end method
