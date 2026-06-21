.class public final Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedAnimationSpec;


# instance fields
.field public animation:Ljava/lang/Object;

.field public durationNanos:J

.field public initialOffsetNanos:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    iput-wide v0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    return-void
.end method


# virtual methods
.method public getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J
    .locals 0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 7

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    move-wide v2, p1

    invoke-virtual {p0, v2, v3}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->repetitionPlayTimeNanos(J)J

    move-result-wide p1

    move-object v1, p0

    move-object v4, p3

    move-object v6, p4

    move-object v5, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->repetitionStartVelocity(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p5

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    return-object p0
.end method

.method public getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 7

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    move-wide v2, p1

    invoke-virtual {p0, v2, v3}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->repetitionPlayTimeNanos(J)J

    move-result-wide p1

    move-object v1, p0

    move-object v4, p3

    move-object v6, p4

    move-object v5, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->repetitionStartVelocity(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p5

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    return-object p0
.end method

.method public isInfinite()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public repetitionPlayTimeNanos(J)J
    .locals 4

    iget-wide v0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    add-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    div-long v2, p1, v0

    sget-object p0, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    return-wide p1
.end method

.method public repetitionStartVelocity(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 10

    iget-wide v0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    add-long/2addr p1, v0

    iget-wide v2, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    cmp-long p1, p1, v2

    if-lez p1, :cond_0

    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    sub-long v5, v2, v0

    move-object v7, p3

    move-object v9, p4

    move-object v8, p5

    invoke-interface/range {v4 .. v9}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v9, p4

    return-object v9
.end method

.method public throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    if-nez v2, :cond_0

    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    :cond_0
    iget-wide v2, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    sget-object v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    const-wide/16 v2, 0xc8

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    iget-wide v2, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    if-eq v0, p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    iget-object p1, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    iput-wide v4, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    iput-wide v4, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    throw p1

    :cond_4
    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    return-void
.end method
