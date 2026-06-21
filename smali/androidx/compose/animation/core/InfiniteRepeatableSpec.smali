.class public final Landroidx/compose/animation/core/InfiniteRepeatableSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/AnimationSpec;


# instance fields
.field public final animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

.field public final initialStartOffset:J


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;J)V
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    iput-wide p2, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    iget-object v0, p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    iget-wide v0, p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    iget-wide p0, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    sget-object v1, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final vectorize(Landroidx/compose/animation/core/TwoWayConverterImpl;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 5

    new-instance v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    invoke-interface {v1, p1}, Landroidx/compose/animation/core/DurationBasedAnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverterImpl;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    move-result-object p1

    sget-object v1, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    sget-object v1, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Ljava/lang/Object;

    invoke-interface {p1}, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;->getDelayMillis()I

    move-result v1

    invoke-interface {p1}, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;->getDurationMillis()I

    move-result p1

    add-int/2addr p1, v1

    int-to-long v1, p1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    iget-wide p0, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    mul-long/2addr p0, v3

    iput-wide p0, v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    return-object v0
.end method
