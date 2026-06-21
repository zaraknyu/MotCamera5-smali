.class public final Landroidx/media3/exoplayer/LoadingInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lastRebufferRealtimeMs:J

.field public playbackPositionUs:J

.field public playbackSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->playbackPositionUs:J

    const v2, -0x800001

    iput v2, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->playbackSpeed:F

    iput-wide v0, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->lastRebufferRealtimeMs:J

    return-void
.end method
