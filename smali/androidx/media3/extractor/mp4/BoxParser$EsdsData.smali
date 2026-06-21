.class public final Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ogg/OggSeeker;


# instance fields
.field public bitrate:J

.field public initializationData:Ljava/lang/Object;

.field public mimeType:Ljava/lang/Object;

.field public peakBitrate:J


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/upstream/Allocation;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    .line 3
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 4
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:Ljava/lang/Object;

    .line 8
    iput-wide p3, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    .line 9
    iput-wide p5, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    return-void
.end method


# virtual methods
.method public createSeekMap()Landroidx/media3/extractor/SeekMap;
    .locals 4

    iget-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    new-instance v0, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/FlacStreamMetadata;

    iget-wide v2, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(Ljava/lang/Object;JI)V

    return-object v0
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 6

    iget-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    iput-wide v2, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public startSeek(J)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v0, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result p1

    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    return-void
.end method
