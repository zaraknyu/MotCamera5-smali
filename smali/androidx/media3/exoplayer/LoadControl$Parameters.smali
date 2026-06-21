.class public final Landroidx/media3/exoplayer/LoadControl$Parameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bufferedDurationUs:J

.field public final playbackSpeed:F

.field public final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId;JFZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    iput-wide p2, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    iput p4, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    return-void
.end method
