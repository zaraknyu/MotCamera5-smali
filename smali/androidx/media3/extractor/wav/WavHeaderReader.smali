.class public abstract Landroidx/media3/extractor/wav/WavHeaderReader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static checkFileType(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 4

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->peek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v1

    iget v1, v1, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    const v2, 0x52494646

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const v2, 0x52463634

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v1, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v2, 0x4

    invoke-interface {p0, v3, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    const v0, 0x57415645

    if-eq p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported form type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WavHeaderReader"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static skipToChunk(ILandroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 10

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->peek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v0

    :goto_0
    iget v1, v0, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    if-eq v1, p0, :cond_2

    const-string v2, "WavHeaderReader"

    const-string v3, "Ignoring unknown WAV chunk: "

    invoke-static {v3, v1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    iget-wide v2, v0, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    const-wide/16 v4, 0x8

    add-long/2addr v4, v2

    const-wide/16 v6, 0x2

    rem-long v6, v2, v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x9

    add-long/2addr v4, v2

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v4, v2

    if-gtz v0, :cond_1

    long-to-int v0, v4

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->peek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Chunk is too large (~2GB+) to skip; id: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_2
    return-object v0
.end method
