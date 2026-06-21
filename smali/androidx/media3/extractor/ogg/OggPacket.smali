.class public final Landroidx/media3/extractor/ogg/OggPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentSegmentIndex:I

.field public final packetArray:Landroidx/media3/common/util/ParsableByteArray;

.field public final pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

.field public populated:Z

.field public segmentCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Landroidx/media3/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ogg/OggPacket;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I[B)V

    iput-object v0, p0, Landroidx/media3/extractor/ogg/OggPacket;->packetArray:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/ogg/OggPacket;->currentSegmentIndex:I

    return-void
.end method


# virtual methods
.method public final calculatePacketSize(I)I
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ogg/OggPacket;->segmentCount:I

    :cond_0
    iget v1, p0, Landroidx/media3/extractor/ogg/OggPacket;->segmentCount:I

    add-int v2, p1, v1

    iget-object v3, p0, Landroidx/media3/extractor/ogg/OggPacket;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v4, v3, Landroidx/media3/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v2, v4, :cond_1

    iget-object v3, v3, Landroidx/media3/extractor/ogg/OggPageHeader;->laces:[I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/extractor/ogg/OggPacket;->segmentCount:I

    aget v1, v3, v2

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method

.method public final populate(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-boolean v2, p0, Landroidx/media3/extractor/ogg/OggPacket;->populated:Z

    iget-object v3, p0, Landroidx/media3/extractor/ogg/OggPacket;->packetArray:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Landroidx/media3/extractor/ogg/OggPacket;->populated:Z

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    :cond_1
    :goto_1
    iget-boolean v2, p0, Landroidx/media3/extractor/ogg/OggPacket;->populated:Z

    if-nez v2, :cond_9

    iget v2, p0, Landroidx/media3/extractor/ogg/OggPacket;->currentSegmentIndex:I

    iget-object v4, p0, Landroidx/media3/extractor/ogg/OggPacket;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    if-gez v2, :cond_5

    const-wide/16 v5, -0x1

    invoke-virtual {v4, p1, v5, v6}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;J)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v4, p1, v0}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    iget v2, v4, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget v5, v4, Landroidx/media3/extractor/ogg/OggPageHeader;->type:I

    and-int/2addr v5, v0

    if-ne v5, v0, :cond_3

    iget v5, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-nez v5, :cond_3

    invoke-virtual {p0, v1}, Landroidx/media3/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v5

    add-int/2addr v2, v5

    iget v5, p0, Landroidx/media3/extractor/ogg/OggPacket;->segmentCount:I

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    :try_start_0
    invoke-interface {p1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v5, p0, Landroidx/media3/extractor/ogg/OggPacket;->currentSegmentIndex:I

    goto :goto_4

    :catch_0
    :cond_4
    :goto_3
    return v1

    :cond_5
    :goto_4
    iget v2, p0, Landroidx/media3/extractor/ogg/OggPacket;->currentSegmentIndex:I

    invoke-virtual {p0, v2}, Landroidx/media3/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v2

    iget v5, p0, Landroidx/media3/extractor/ogg/OggPacket;->currentSegmentIndex:I

    iget v6, p0, Landroidx/media3/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v5, v6

    if-lez v2, :cond_7

    iget v6, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    iget-object v6, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v7, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    :try_start_1
    invoke-interface {p1, v6, v7, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    iget v6, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    iget-object v2, v4, Landroidx/media3/extractor/ogg/OggPageHeader;->laces:[I

    add-int/lit8 v6, v5, -0x1

    aget v2, v2, v6

    const/16 v6, 0xff

    if-eq v2, v6, :cond_6

    move v2, v0

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    iput-boolean v2, p0, Landroidx/media3/extractor/ogg/OggPacket;->populated:Z

    goto :goto_6

    :catch_1
    return v1

    :cond_7
    :goto_6
    iget v2, v4, Landroidx/media3/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ne v5, v2, :cond_8

    const/4 v5, -0x1

    :cond_8
    iput v5, p0, Landroidx/media3/extractor/ogg/OggPacket;->currentSegmentIndex:I

    goto :goto_1

    :cond_9
    return v0
.end method
