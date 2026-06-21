.class public final Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bufferTimestampAdjustmentUs:J

.field public final clock:Landroidx/media3/common/util/SystemClock;

.field public final compositionEffects:Lcom/google/common/collect/RegularImmutableList;

.field public final context:Landroid/content/Context;

.field public currentSurfaceAndSize:Landroid/util/Pair;

.field public final defaultVideoSink:Landroidx/media3/exoplayer/video/DefaultVideoSink;

.field public handler:Landroidx/media3/common/util/SystemHandlerWrapper;

.field public final inputVideoSinks:Landroid/util/SparseArray;

.field public lastOutputBufferPresentationTimeUs:J

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final previewingVideoGraphFactory:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;

.field public state:I

.field public final streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;

.field public totalVideoInputCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/CameraState$1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->context:Landroid/content/Context;

    new-instance v0, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {v0}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitAfterFireChange:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->previewingVideoGraphFactory:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->inputVideoSinks:Landroid/util/SparseArray;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/RegularImmutableList;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->compositionEffects:Lcom/google/common/collect/RegularImmutableList;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/SystemClock;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->clock:Landroidx/media3/common/util/SystemClock;

    new-instance v1, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-direct {v1, p1, v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;-><init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/common/util/SystemClock;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->lastOutputBufferPresentationTimeUs:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->totalVideoInputCount:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    return-void
.end method
