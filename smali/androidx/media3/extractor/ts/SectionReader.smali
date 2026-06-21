.class public final Landroidx/media3/extractor/ts/SectionReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/TsPayloadReader;


# instance fields
.field public bytesRead:I

.field public final reader:Landroidx/media3/extractor/ts/SectionPayloadReader;

.field public final sectionData:Landroidx/media3/common/util/ParsableByteArray;

.field public sectionSyntaxIndicator:Z

.field public totalSectionLength:I

.field public waitingForPayloadStart:Z


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/SectionReader;->reader:Landroidx/media3/extractor/ts/SectionPayloadReader;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final consume(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 7

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/4 v2, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    iget v4, p2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-boolean v3, p0, Landroidx/media3/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    if-eqz v3, :cond_3

    if-nez p1, :cond_2

    goto/16 :goto_5

    :cond_2
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    invoke-virtual {p2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iput v1, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-lez p1, :cond_9

    iget p1, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    const/4 v3, 0x3

    iget-object v4, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    if-ge p1, v3, :cond_6

    if-nez p1, :cond_4

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    iget v5, p2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v5, v0

    invoke-virtual {p2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 v5, 0xff

    if-ne p1, v5, :cond_4

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    return-void

    :cond_4
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    iget v5, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    rsub-int/lit8 v5, v5, 0x3

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v5, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v6, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    invoke-virtual {p2, v6, p1, v5}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    iget v5, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    add-int/2addr v5, p1

    iput v5, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    if-ne v5, v3, :cond_3

    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    invoke-virtual {v4, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit16 v6, p1, 0x80

    if-eqz v6, :cond_5

    move v6, v0

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_3
    iput-boolean v6, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionSyntaxIndicator:Z

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v5

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/media3/extractor/ts/SectionReader;->totalSectionLength:I

    iget-object v3, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v5, v3

    if-ge v5, p1, :cond_3

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v3, 0x1002

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v4, p1}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    iget v3, p0, Landroidx/media3/extractor/ts/SectionReader;->totalSectionLength:I

    iget v5, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    sub-int/2addr v3, v5

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v3, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    invoke-virtual {p2, v5, p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    iget v3, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    add-int/2addr v3, p1

    iput v3, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    iget p1, p0, Landroidx/media3/extractor/ts/SectionReader;->totalSectionLength:I

    if-ne v3, p1, :cond_3

    iget-boolean v3, p0, Landroidx/media3/extractor/ts/SectionReader;->sectionSyntaxIndicator:Z

    if-eqz v3, :cond_8

    iget-object v3, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v3, v1, p1, v2}, Landroidx/media3/common/util/Util;->crc32([BIII)I

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    return-void

    :cond_7
    iget p1, p0, Landroidx/media3/extractor/ts/SectionReader;->totalSectionLength:I

    add-int/lit8 p1, p1, -0x4

    invoke-virtual {v4, p1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    goto :goto_4

    :cond_8
    invoke-virtual {v4, p1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    :goto_4
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/SectionReader;->reader:Landroidx/media3/extractor/ts/SectionPayloadReader;

    invoke-interface {p1, v4}, Landroidx/media3/extractor/ts/SectionPayloadReader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    iput v1, p0, Landroidx/media3/extractor/ts/SectionReader;->bytesRead:I

    goto/16 :goto_2

    :cond_9
    :goto_5
    return-void
.end method

.method public final init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/ts/SectionReader;->reader:Landroidx/media3/extractor/ts/SectionPayloadReader;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/SectionPayloadReader;->init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    return-void
.end method

.method public final seek()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    return-void
.end method
