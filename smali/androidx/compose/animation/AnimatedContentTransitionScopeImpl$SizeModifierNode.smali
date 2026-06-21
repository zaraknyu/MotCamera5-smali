.class public final Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;
.super Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;
.source "SourceFile"


# instance fields
.field public lastSize:J

.field public scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

.field public sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public sizeTransform:Landroidx/compose/runtime/MutableState;


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result p3

    const-wide v0, 0xffffffffL

    const/16 p4, 0x20

    if-eqz p3, :cond_0

    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v2, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    int-to-long v3, p3

    shl-long/2addr v3, p4

    int-to-long v5, v2

    and-long/2addr v5, v0

    or-long v2, v3, v5

    goto :goto_0

    :cond_0
    iget-object p3, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    if-nez p3, :cond_1

    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v2, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    int-to-long v3, p3

    shl-long/2addr v3, p4

    int-to-long v5, v2

    and-long/2addr v5, v0

    or-long v2, v3, v5

    iput-wide v2, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastSize:J

    goto :goto_0

    :cond_1
    iget v2, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v3, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    int-to-long v4, v2

    shl-long/2addr v4, p4

    int-to-long v2, v3

    and-long/2addr v2, v0

    or-long/2addr v2, v4

    new-instance v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1$1;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v2, v3, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1$1;-><init>(Ljava/lang/Object;JI)V

    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1$1;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v2, v3, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1$1;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {p3, v4, v5}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    move-result-object p3

    iget-object v2, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    iget-wide v2, v2, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-virtual {p3}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/ui/unit/IntSize;

    iget-wide v4, p3, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    iput-wide v4, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastSize:J

    :goto_0
    shr-long p3, v2, p4

    long-to-int p3, p3

    and-long/2addr v0, v2

    long-to-int p4, v0

    new-instance v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1;

    invoke-direct {v0, p0, p2, v2, v3}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;Landroidx/compose/ui/layout/Placeable;J)V

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, p3, p4, p0, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final onReset()V
    .locals 2

    sget-wide v0, Landroidx/compose/animation/AnimatedContentKt;->UnspecifiedSize:J

    iput-wide v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastSize:J

    return-void
.end method
