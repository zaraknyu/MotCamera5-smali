.class public final Landroidx/media3/exoplayer/ExoPlayer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final analyticsCollectorFunction:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

.field public final audioAttributes:Landroidx/media3/common/AudioAttributes;

.field public final bandwidthMeterSupplier:Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;

.field public buildCalled:Z

.field public final clock:Landroidx/media3/common/util/SystemClock;

.field public final context:Landroid/content/Context;

.field public final detachSurfaceTimeoutMs:J

.field public final livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

.field public final loadControlSupplier:Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda3;

.field public final looper:Landroid/os/Looper;

.field public final maxSeekToPreviousPositionMs:J

.field public final mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

.field public final playerName:Ljava/lang/String;

.field public final priority:I

.field public final releaseTimeoutMs:J

.field public final renderersFactorySupplier:Lcom/google/common/base/Supplier;

.field public final seekBackIncrementMs:J

.field public final seekForwardIncrementMs:J

.field public final seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field public final trackSelectorSupplier:Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;

.field public final useLazyPreparation:Z

.field public final usePlatformDiagnostics:Z

.field public final videoScalingMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 5

    new-instance v0, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v2, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v3}, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    new-instance v3, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda3;

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;

    iput-object v3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    sget-object p1, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    sget-object p2, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    const-wide/16 p2, 0x1388

    iput-wide p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    const-wide/16 p2, 0x3a98

    iput-wide p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    const-wide/16 p2, 0xbb8

    iput-wide p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->maxSeekToPreviousPositionMs:J

    const-wide/16 p2, 0x14

    invoke-static {p2, p3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p2

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    new-instance v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    invoke-direct {v4, p2, p3, v2, v3}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;-><init>(JJ)V

    iput-object v4, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    sget-object p2, Landroidx/media3/common/util/SystemClock;->DEFAULT:Landroidx/media3/common/util/SystemClock;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/SystemClock;

    iput-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    const-wide/16 p2, 0x7d0

    iput-wide p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    const-string p1, ""

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playerName:Ljava/lang/String;

    const/16 p1, -0x3e8

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->priority:I

    new-instance p0, Lcom/google/mlkit/common/internal/zzc;

    invoke-direct {p0}, Lcom/google/mlkit/common/internal/zzc;-><init>()V

    return-void
.end method
