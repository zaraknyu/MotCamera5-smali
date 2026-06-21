.class public final Landroidx/media3/extractor/SingleSampleExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public final fileSignature:I

.field public final fileSignatureLength:I

.field public final sampleMimeType:Ljava/lang/String;

.field public size:I

.field public state:I

.field public trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->fileSignature:I

    iput p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->fileSignatureLength:I

    iput-object p3, p0, Landroidx/media3/extractor/SingleSampleExtractor;->sampleMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 3

    iput-object p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/16 v0, 0x400

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iget-object p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    iget-object p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v0, Landroidx/media3/extractor/SingleSampleSeekMap;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->state:I

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 9

    iget p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->state:I

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    iget-object p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    invoke-interface {p2, p1, v3, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_2

    iput v1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->state:I

    iget-object v2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v6, p0, Landroidx/media3/extractor/SingleSampleExtractor;->size:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v8}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->size:I

    return p2

    :cond_2
    iget v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->size:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->size:I

    return p2
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->state:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->state:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->size:I

    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->fileSignatureLength:I

    iget p0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->fileSignature:I

    const/4 v3, -0x1

    if-eq p0, v3, :cond_0

    if-eq v2, v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkState(Z)V

    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v4, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    invoke-virtual {p1, v1, v1, v4, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    return v1
.end method
