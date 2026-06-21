.class public final Landroidx/media3/exoplayer/DefaultLoadControl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

.field public final backBufferDurationUs:J

.field public final bufferForPlaybackAfterRebufferUs:J

.field public final bufferForPlaybackUs:J

.field public final loadingStates:Ljava/util/HashMap;

.field public final maxBufferUs:J

.field public final minBufferUs:J

.field public final targetBufferBytesOverwrite:I

.field public threadId:J


# direct methods
.method public constructor <init>()V
    .locals 9

    new-instance v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-direct {v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "bufferForPlaybackMs"

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const-string v4, "0"

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(Ljava/lang/String;IILjava/lang/String;)V

    const-string v5, "bufferForPlaybackAfterRebufferMs"

    const/16 v6, 0x7d0

    invoke-static {v5, v6, v3, v4}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(Ljava/lang/String;IILjava/lang/String;)V

    const-string v7, "minBufferMs"

    const v8, 0xc350

    invoke-static {v7, v8, v2, v1}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {v7, v8, v6, v5}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(Ljava/lang/String;IILjava/lang/String;)V

    const-string v1, "maxBufferMs"

    invoke-static {v1, v8, v8, v7}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(Ljava/lang/String;IILjava/lang/String;)V

    const-string v1, "backBufferDurationMs"

    invoke-static {v1, v3, v3, v4}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(Ljava/lang/String;IILjava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    int-to-long v0, v8

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->minBufferUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->maxBufferUs:J

    int-to-long v0, v2

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackUs:J

    int-to-long v0, v6

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    int-to-long v0, v3

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->backBufferDurationUs:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->threadId:J

    return-void
.end method

.method public static assertGreaterOrEqual(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be less than "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->checkArgument(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final calculateTotalTargetBufferBytes()I
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    iget v1, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->targetBufferBytes:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final shouldContinueLoading(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z
    .locals 10

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->maxBufferUs:J

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    monitor-enter v3

    :try_start_0
    iget v4, v3, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget v5, v3, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v4, v5

    monitor-exit v3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;->calculateTotalTargetBufferBytes()I

    move-result v3

    const/4 v5, 0x0

    if-lt v4, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iget-wide v6, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->minBufferUs:J

    iget p0, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p0, v4

    if-lez v4, :cond_1

    invoke-static {p0, v6, v7}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(FJ)J

    move-result-wide v6

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_1
    const-wide/32 v8, 0x7a120

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-wide p0, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    cmp-long v4, p0, v6

    if-gez v4, :cond_2

    xor-int/lit8 v0, v3, 0x1

    iput-boolean v0, v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    if-eqz v3, :cond_4

    cmp-long p0, p0, v8

    if-gez p0, :cond_4

    const-string p0, "DefaultLoadControl"

    const-string p1, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    cmp-long p0, p0, v0

    if-gez p0, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    iput-boolean v5, v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    :cond_4
    :goto_1
    iget-boolean p0, v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateAllocator()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trimOnReset:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->setTargetBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;->calculateTotalTargetBufferBytes()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    return-void
.end method
