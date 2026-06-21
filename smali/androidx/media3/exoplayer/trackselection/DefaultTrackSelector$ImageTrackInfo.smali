.class public final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;
.super Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final pixelCount:I

.field public final selectionEligibility:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;I)V

    iget-boolean p1, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {p5, p1}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->selectionEligibility:I

    iget-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget p2, p1, Landroidx/media3/common/Format;->width:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    iget p1, p1, Landroidx/media3/common/Format;->height:I

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    mul-int p3, p2, p1

    :cond_1
    :goto_0
    iput p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->pixelCount:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->pixelCount:I

    iget p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->pixelCount:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public final getSelectionEligibility()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->selectionEligibility:I

    return p0
.end method

.method public final bridge synthetic isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;

    const/4 p0, 0x0

    return p0
.end method
