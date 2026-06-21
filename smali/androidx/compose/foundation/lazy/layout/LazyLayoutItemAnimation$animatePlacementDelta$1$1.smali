.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $animationTarget:J

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1$1;->this$0:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1$1;->$animationTarget:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1$1;->$r8$classId:I

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1$1;->$animationTarget:J

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;

    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    invoke-virtual {v0}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->getInitialState()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastSize:J

    sget-wide v5, Landroidx/compose/animation/AnimatedContentKt;->UnspecifiedSize:J

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastSize:J

    move-wide v1, p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->targetSizeMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/State;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    iget-wide v1, p0, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    :cond_2
    :goto_0
    new-instance p0, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {p0, v1, v2}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/animation/core/Transition$Segment;

    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->getInitialState()Ljava/lang/Object;

    move-result-object v0

    check-cast p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;

    iget-object v5, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    invoke-virtual {v5}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->getInitialState()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v5, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastSize:J

    sget-wide v7, Landroidx/compose/animation/AnimatedContentKt;->UnspecifiedSize:J

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v3, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastSize:J

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    iget-object v0, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->targetSizeMap:Landroidx/collection/MutableScatterMap;

    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->getInitialState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/State;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    iget-wide v3, v0, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    goto :goto_1

    :cond_5
    move-wide v3, v1

    :goto_1
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    iget-object v0, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->targetSizeMap:Landroidx/collection/MutableScatterMap;

    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->getTargetState()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/State;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v1, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    :cond_6
    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->sizeTransform:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/SizeTransformImpl;

    if-eqz p0, :cond_7

    iget-object p0, p0, Landroidx/compose/animation/SizeTransformImpl;->sizeAnimationSpec:Lkotlin/jvm/functions/Function2;

    new-instance p1, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {p1, v3, v4}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    if-nez p0, :cond_8

    :cond_7
    const/high16 p0, 0x43c80000    # 400.0f

    const/4 p1, 0x5

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    :cond_8
    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/animation/core/Animatable;

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v0, p1, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    move-result-wide v0

    sget p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->$r8$clinit:I

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setPlacementDelta--gyyYBs(J)V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->onLayerPropertyChanged:Landroidx/compose/runtime/Pending$keyMap$2;

    invoke-virtual {p0}, Landroidx/compose/runtime/Pending$keyMap$2;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
