.class public final Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final firstTrackId:I

.field public formatId:Ljava/lang/String;

.field public final formatIdPrefix:Ljava/lang/String;

.field public trackId:I

.field public final trackIdIncrement:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatIdPrefix:Ljava/lang/String;

    .line 4
    iput p2, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->firstTrackId:I

    .line 5
    iput p3, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackIdIncrement:I

    .line 6
    iput v1, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    .line 7
    iput-object v0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final generateNewId()V
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->firstTrackId:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackIdIncrement:I

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatIdPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    return-void
.end method

.method public final maybeThrowUninitializedError()V
    .locals 1

    iget p0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "generateNewId() must be called before retrieving ids."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
