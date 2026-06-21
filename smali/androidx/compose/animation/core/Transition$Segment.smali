.class public interface abstract Landroidx/compose/animation/core/Transition$Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getInitialState()Ljava/lang/Object;
.end method

.method public abstract getTargetState()Ljava/lang/Object;
.end method

.method public isTransitioningTo(Landroidx/compose/animation/EnterExitState;Landroidx/compose/animation/EnterExitState;)Z
    .locals 1

    invoke-interface {p0}, Landroidx/compose/animation/core/Transition$Segment;->getInitialState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Landroidx/compose/animation/core/Transition$Segment;->getTargetState()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
