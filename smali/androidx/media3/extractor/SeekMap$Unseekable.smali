.class public Landroidx/media3/extractor/SeekMap$Unseekable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field public final synthetic $r8$classId:I

.field public final durationUs:J

.field public final startSeekPoints:Ljava/lang/Object;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->$r8$classId:I

    const-wide/16 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->durationUs:J

    .line 5
    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    .line 6
    sget-object p2, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {p2, v0, v1, p3, p4}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 7
    :goto_0
    invoke-direct {p1, p2, p2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 8
    iput-object p1, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->startSeekPoints:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->startSeekPoints:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->durationUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->durationUs:J

    return-wide v0

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->startSeekPoints:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {p0}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    iget-wide v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->durationUs:J

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 13

    iget v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->startSeekPoints:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/avi/AviExtractor;

    iget-object v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->chunkReaders:[Landroidx/media3/extractor/avi/ChunkReader;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/avi/ChunkReader;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/avi/AviExtractor;->chunkReaders:[Landroidx/media3/extractor/avi/ChunkReader;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Landroidx/media3/extractor/avi/ChunkReader;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v2

    iget-object v3, v2, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v3, v3, Landroidx/media3/extractor/SeekPoint;->position:J

    iget-object v5, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v5, v5, Landroidx/media3/extractor/SeekPoint;->position:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->startSeekPoints:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v1, v0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v1, v0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v2, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v2, [J

    iget-object v1, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v1, [J

    iget v3, v0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v3, v3

    mul-long/2addr v3, p1

    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    iget-wide v3, v0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v9, 0x1

    sub-long v11, v3, v9

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v3

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v7}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v3

    const-wide/16 v7, 0x0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move-wide v9, v7

    goto :goto_1

    :cond_2
    aget-wide v9, v2, v3

    :goto_1
    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    aget-wide v7, v1, v3

    :goto_2
    mul-long/2addr v9, v5

    iget v0, v0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v11, v0

    div-long/2addr v9, v11

    iget-wide v11, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->durationUs:J

    add-long/2addr v7, v11

    new-instance p0, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {p0, v9, v10, v7, v8}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v9, p1

    if-eqz p1, :cond_5

    array-length p1, v2

    add-int/lit8 p1, p1, -0x1

    if-ne v3, p1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    aget-wide p1, v2, v3

    aget-wide v1, v1, v3

    mul-long/2addr p1, v5

    int-to-long v3, v0

    div-long/2addr p1, v3

    add-long/2addr v11, v1

    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v0, p1, p2, v11, v12}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, p0, v0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    goto :goto_4

    :cond_5
    :goto_3
    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, p0, p0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    :goto_4
    return-object p1

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->startSeekPoints:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isSeekable()Z
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
