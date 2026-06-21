.class public final Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/TrackOutput;


# instance fields
.field public currentFormat:Landroidx/media3/common/Format;

.field public currentSubtitleParser:Landroidx/media3/extractor/text/SubtitleParser;

.field public final delegate:Landroidx/media3/extractor/TrackOutput;

.field public final parsableScratch:Landroidx/media3/common/util/ParsableByteArray;

.field public sampleData:[B

.field public sampleDataEnd:I

.field public sampleDataStart:I

.field public shouldSuppressParsingErrors:Z

.field public final subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Landroidx/media3/extractor/TrackOutput;

    iput-object p2, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataStart:I

    iput p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    sget-object p1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleData:[B

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->parsableScratch:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final ensureSampleDataCapacity(I)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleData:[B

    array-length v0, v0

    iget v1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataStart:I

    sub-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x2

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleData:[B

    array-length v2, v0

    if-gt p1, v2, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-array p1, p1, [B

    :goto_0
    iget v2, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataStart:I

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataStart:I

    iput v1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    iput-object p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleData:[B

    return-void
.end method

.method public final format(Landroidx/media3/common/Format;)V
    .locals 5

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    iget-object v1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentFormat:Landroidx/media3/common/Format;

    invoke-virtual {p1, v1}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    if-nez v1, :cond_2

    iput-object p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentFormat:Landroidx/media3/common/Format;

    invoke-interface {v2, p1}, Landroidx/media3/extractor/text/SubtitleParser$Factory;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, p1}, Landroidx/media3/extractor/text/SubtitleParser$Factory;->create(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleParser;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentSubtitleParser:Landroidx/media3/extractor/text/SubtitleParser;

    :cond_2
    iget-object v1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentSubtitleParser:Landroidx/media3/extractor/text/SubtitleParser;

    iget-object p0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Landroidx/media3/extractor/TrackOutput;

    if-nez v1, :cond_3

    invoke-interface {p0, p1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    const-string v3, "application/x-media3-cues"

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput-object v0, v1, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, v1, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    invoke-interface {v2, p1}, Landroidx/media3/extractor/text/SubtitleParser$Factory;->getCueReplacementBehavior(Landroidx/media3/common/Format;)I

    move-result p1

    iput p1, v1, Landroidx/media3/common/Format$Builder;->cueReplacementBehavior:I

    invoke-static {v1, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public final sampleData(Landroidx/media3/common/DataReader;IZ)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentSubtitleParser:Landroidx/media3/extractor/text/SubtitleParser;

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->ensureSampleDataCapacity(I)V

    .line 4
    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleData:[B

    iget v1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    invoke-interface {p1, v0, v1, p2}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    return p2

    .line 5
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 6
    :cond_2
    iget p2, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    return p1
.end method

.method public final sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 1

    .line 7
    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentSubtitleParser:Landroidx/media3/extractor/text/SubtitleParser;

    if-nez v0, :cond_0

    .line 8
    iget-object p0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->ensureSampleDataCapacity(I)V

    .line 10
    iget-object p3, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleData:[B

    iget v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    invoke-virtual {p1, v0, p2, p3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    .line 11
    iget p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    return-void
.end method

.method public final sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentSubtitleParser:Landroidx/media3/extractor/text/SubtitleParser;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Landroidx/media3/extractor/TrackOutput;

    invoke-interface/range {p0 .. p6}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p6, :cond_1

    const/4 p6, 0x1

    goto :goto_0

    :cond_1
    move p6, v1

    :goto_0
    const-string v0, "DRM on subtitles is not supported"

    invoke-static {v0, p6}, Landroidx/media3/common/util/Log;->checkArgument(Ljava/lang/String;Z)V

    iget p6, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    sub-int/2addr p6, p5

    sub-int/2addr p6, p4

    move-wide v2, p1

    :try_start_0
    iget-object p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentSubtitleParser:Landroidx/media3/extractor/text/SubtitleParser;

    iget-object p2, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleData:[B

    sget-object p5, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->ALL:Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, p3

    move p3, p6

    :try_start_1
    new-instance p6, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;

    invoke-direct {p6, p0, v2, v3, v0}, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;JI)V

    invoke-interface/range {p1 .. p6}, Landroidx/media3/extractor/text/SubtitleParser;->parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move p3, p6

    goto :goto_1

    :goto_2
    iget-boolean p2, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->shouldSuppressParsingErrors:Z

    if-eqz p2, :cond_3

    const-string p2, "SubtitleTranscodingTO"

    const-string p5, "Parsing subtitles failed, ignoring sample."

    invoke-static {p2, p5, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    add-int p6, p3, p4

    iput p6, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataStart:I

    iget p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    if-ne p6, p1, :cond_2

    iput v1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataStart:I

    iput v1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    :cond_2
    return-void

    :cond_3
    throw p1
.end method
