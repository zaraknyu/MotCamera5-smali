.class public final Landroidx/media3/exoplayer/source/MediaLoadData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mediaEndTimeMs:J

.field public final mediaStartTimeMs:J

.field public final trackFormat:Landroidx/media3/common/Format;

.field public final trackType:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/Format;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->trackType:I

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->trackFormat:Landroidx/media3/common/Format;

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->mediaStartTimeMs:J

    iput-wide p5, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->mediaEndTimeMs:J

    return-void
.end method
