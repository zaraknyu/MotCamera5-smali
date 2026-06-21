.class public final Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field public final allowSeeksIfLengthUnknown:Z

.field public final allowSeeksIfLengthUnknown$1:Z

.field public final bitrate:I

.field public final bitrate$1:I

.field public final dataEndPosition:J

.field public final dataSize:J

.field public final durationUs:J

.field public final firstFrameBytePosition:J

.field public final firstFramePosition:J

.field public final frameSize:I

.field public final frameSize$1:I

.field public final inputLength:J


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->inputLength:J

    iput-wide p3, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->firstFrameBytePosition:J

    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p6

    :goto_0
    iput v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->frameSize$1:I

    iput p5, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate$1:I

    iput-boolean p7, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->allowSeeksIfLengthUnknown$1:Z

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    goto :goto_1

    :cond_1
    sub-long v0, p1, p3

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x7a1200

    mul-long/2addr v0, v2

    int-to-long v2, p5

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    :goto_1
    iput-wide p3, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    iput p5, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    iput p6, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    iput-boolean p7, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->allowSeeksIfLengthUnknown:Z

    const-wide/16 p3, -0x1

    cmp-long p5, p1, p3

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    move-wide p1, p3

    :goto_2
    iput-wide p1, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->dataEndPosition:J

    return-void
.end method


# virtual methods
.method public final getAverageBitrate()I
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    return p0
.end method

.method public final getDataEndPosition()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public final getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    return-wide v0
.end method

.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, -0x1

    iget-wide v3, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    cmp-long v1, v3, v1

    iget-wide v5, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->firstFrameBytePosition:J

    const-wide/16 v7, 0x0

    if-nez v1, :cond_0

    iget-boolean v2, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->allowSeeksIfLengthUnknown$1:Z

    if-nez v2, :cond_0

    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v1, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v1, v7, v8, v5, v6}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v0, v1, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v0

    :cond_0
    iget v2, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate$1:I

    int-to-long v9, v2

    mul-long v9, v9, p1

    const-wide/32 v11, 0x7a1200

    div-long/2addr v9, v11

    iget v13, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->frameSize$1:I

    int-to-long v13, v13

    div-long/2addr v9, v13

    mul-long/2addr v9, v13

    if-eqz v1, :cond_1

    sub-long/2addr v3, v13

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :cond_1
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-long/2addr v3, v5

    sub-long v9, v3, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    mul-long/2addr v9, v11

    move-wide v15, v11

    int-to-long v11, v2

    div-long/2addr v9, v11

    new-instance v11, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v11, v9, v10, v3, v4}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    if-eqz v1, :cond_3

    cmp-long v1, v9, p1

    if-gez v1, :cond_3

    add-long/2addr v3, v13

    iget-wide v0, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->inputLength:J

    cmp-long v0, v3, v0

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    sub-long v0, v3, v5

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    mul-long/2addr v0, v15

    int-to-long v5, v2

    div-long/2addr v0, v5

    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v2, v0, v1, v3, v4}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v0, v11, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v0

    :cond_3
    :goto_0
    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v0, v11, v11}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v0
.end method

.method public final getTimeUs(J)J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->firstFrameBytePosition:J

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x7a1200

    mul-long/2addr p1, v0

    iget p0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate$1:I

    int-to-long v0, p0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final isSeekable()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->allowSeeksIfLengthUnknown$1:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
