.class public interface abstract Landroidx/compose/animation/core/FloatAnimationSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/AnimationSpec;


# virtual methods
.method public abstract getDurationNanos(FFF)J
.end method

.method public getEndVelocity(FFF)F
    .locals 6

    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/animation/core/FloatAnimationSpec;->getDurationNanos(FFF)J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroidx/compose/animation/core/FloatAnimationSpec;->getVelocityFromNanos(FFFJ)F

    move-result p0

    return p0
.end method

.method public abstract getValueFromNanos(FFFJ)F
.end method

.method public abstract getVelocityFromNanos(FFFJ)F
.end method

.method public vectorize(Landroidx/compose/animation/core/TwoWayConverterImpl;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    new-instance p1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {p1, p0}, Landroidx/transition/TransitionValuesMaps;-><init>(Landroidx/compose/animation/core/FloatAnimationSpec;)V

    return-object p1
.end method
