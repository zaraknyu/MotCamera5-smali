.class public final Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

.field public final mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    return-void
.end method
