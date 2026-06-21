.class public final Landroidx/media3/exoplayer/video/DefaultVideoSink;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final clock:Landroidx/media3/common/util/SystemClock;

.field public final inputFormat:Landroidx/media3/common/Format;

.field public final listener:Landroidx/media3/exoplayer/video/VideoSink$Listener$1;

.field public final listenerExecutor:Ljava/util/concurrent/Executor;

.field public streamStartPositionUs:J

.field public final videoFrameHandlers:Ljava/util/ArrayDeque;

.field public videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field public final videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field public final videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/common/util/SystemClock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iput-object p2, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/SystemClock;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->clock:Landroidx/media3/common/util/SystemClock;

    new-instance p2, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    new-instance v0, Lcom/tinder/StateMachine;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lcom/tinder/StateMachine;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;-><init>(Lcom/tinder/StateMachine;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameHandlers:Ljava/util/ArrayDeque;

    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    new-instance p2, Landroidx/media3/common/Format;

    invoke-direct {p2, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Landroidx/media3/common/Format;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->streamStartPositionUs:J

    sget-object p1, Landroidx/media3/exoplayer/video/VideoSink$Listener$1;->NO_OP:Landroidx/media3/exoplayer/video/VideoSink$Listener$1;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->listener:Landroidx/media3/exoplayer/video/VideoSink$Listener$1;

    new-instance p1, Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Landroidx/media3/exoplayer/video/DefaultVideoSink$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    return-void
.end method


# virtual methods
.method public final setStreamTimestampInfo(JJ)V
    .locals 4

    iget-wide p3, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->streamStartPositionUs:J

    cmp-long p3, p1, p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    iget-object p4, p3, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;

    iget-wide v0, p3, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p4, v0, v1, p3}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->streamStartPositionUs:J

    :cond_1
    return-void
.end method
