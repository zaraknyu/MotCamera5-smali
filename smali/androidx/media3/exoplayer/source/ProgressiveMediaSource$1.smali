.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "SourceFile"


# virtual methods
.method public final getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    const/4 p0, 0x1

    iput-boolean p0, p2, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    return-object p2
.end method

.method public final getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    const/4 p0, 0x1

    iput-boolean p0, p2, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    return-object p2
.end method
