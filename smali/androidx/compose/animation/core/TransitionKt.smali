.class public abstract Landroidx/compose/animation/core/TransitionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method

.method public static final UpdateInitialAndTargetValues(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 8

    const v0, 0x33ae021d

    invoke-virtual {p5, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p6, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p5, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p6

    goto :goto_1

    :cond_1
    move v0, p6

    :goto_1
    and-int/lit8 v1, p6, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p5, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p6, 0x180

    if-nez v1, :cond_6

    and-int/lit16 v1, p6, 0x200

    if-nez v1, :cond_4

    invoke-virtual {p5, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_4
    invoke-virtual {p5, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_5

    const/16 v1, 0x100

    goto :goto_4

    :cond_5
    const/16 v1, 0x80

    :goto_4
    or-int/2addr v0, v1

    :cond_6
    and-int/lit16 v1, p6, 0xc00

    if-nez v1, :cond_9

    and-int/lit16 v1, p6, 0x1000

    if-nez v1, :cond_7

    invoke-virtual {p5, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5

    :cond_7
    invoke-virtual {p5, p3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_8

    const/16 v1, 0x800

    goto :goto_6

    :cond_8
    const/16 v1, 0x400

    :goto_6
    or-int/2addr v0, v1

    :cond_9
    and-int/lit16 v1, p6, 0x6000

    if-nez v1, :cond_c

    const v1, 0x8000

    and-int/2addr v1, p6

    if-nez v1, :cond_a

    invoke-virtual {p5, p4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_7

    :cond_a
    invoke-virtual {p5, p4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    :goto_7
    if-eqz v1, :cond_b

    const/16 v1, 0x4000

    goto :goto_8

    :cond_b
    const/16 v1, 0x2000

    :goto_8
    or-int/2addr v0, v1

    :cond_c
    and-int/lit16 v1, v0, 0x2493

    const/16 v2, 0x2492

    const/4 v3, 0x1

    if-eq v1, v2, :cond_d

    move v1, v3

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    :goto_9
    and-int/2addr v0, v3

    invoke-virtual {p5, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1, p2, p3, p4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->updateInitialAndTargetValue$animation_core_release(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    goto :goto_a

    :cond_e
    invoke-virtual {p1, p3, p4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->updateTargetValue$animation_core_release(Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    goto :goto_a

    :cond_f
    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_a
    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p5

    if-eqz p5, :cond_10

    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;

    const/4 v7, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p5, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method

.method public static final createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .locals 6

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-string p2, "DeferredAnimation"

    :cond_0
    and-int/lit8 p5, p4, 0xe

    xor-int/lit8 p5, p5, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-le p5, v2, :cond_1

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    and-int/lit8 v3, p4, 0x6

    if-ne v3, v2, :cond_3

    :cond_2
    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v3, :cond_4

    if-ne v4, v5, :cond_5

    :cond_4
    new-instance v4, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    invoke-direct {v4, p0, p1, p2}, Landroidx/compose/animation/core/Transition$DeferredAnimation;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v4, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    if-le p5, v2, :cond_6

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_6
    and-int/lit8 p1, p4, 0x6

    if-ne p1, v2, :cond_7

    goto :goto_1

    :cond_7
    move v0, v1

    :cond_8
    :goto_1
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v0

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_9

    if-ne p2, v5, :cond_a

    :cond_9
    new-instance p2, Landroidx/compose/runtime/Latch$await$2$2;

    const/4 p1, 0x5

    invoke-direct {p2, p1, p0, v4}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, p2, p3}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result p0

    if-eqz p0, :cond_b

    iget-object p0, v4, Landroidx/compose/animation/core/Transition$DeferredAnimation;->data$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    if-eqz p0, :cond_b

    iget-object p1, v4, Landroidx/compose/animation/core/Transition$DeferredAnimation;->this$0:Landroidx/compose/animation/core/Transition;

    iget-object p2, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->animation:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    iget-object p3, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->targetValueByState:Lkotlin/jvm/internal/Lambda;

    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p4

    invoke-interface {p4}, Landroidx/compose/animation/core/Transition$Segment;->getInitialState()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iget-object p4, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->targetValueByState:Lkotlin/jvm/internal/Lambda;

    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p5

    invoke-interface {p5}, Landroidx/compose/animation/core/Transition$Segment;->getTargetState()Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p4, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->transitionSpec:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-virtual {p2, p3, p4, p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->updateInitialAndTargetValue$animation_core_release(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    :cond_b
    return-object v4
.end method

.method public static final createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;
    .locals 10

    sget-object p5, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-virtual {p4, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v0, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    new-instance v3, Landroidx/compose/animation/core/AnimationVector1D;

    invoke-direct {v3, v0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    invoke-virtual {v3}, Landroidx/compose/animation/core/AnimationVector;->reset$animation_core_release()V

    invoke-direct {v1, p0, p1, v3, p5}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/TwoWayConverterImpl;)V

    invoke-virtual {p4, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    move-object v4, v1

    check-cast v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v9}, Landroidx/compose/animation/core/TransitionKt;->UpdateInitialAndTargetValues(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    new-instance p1, Landroidx/compose/runtime/Latch$await$2$2;

    const/4 p0, 0x6

    invoke-direct {p1, p0, v3, v4}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, p1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, p1, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    return-object v4
.end method

.method public static final rememberTransition(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Transition;
    .locals 4

    and-int/lit8 v0, p2, 0xe

    xor-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    and-int/lit8 p2, p2, 0x6

    if-ne p2, v1, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez p2, :cond_3

    if-ne v0, v1, :cond_4

    :cond_3
    new-instance v0, Landroidx/compose/animation/core/Transition;

    const/4 p2, 0x0

    const-string v3, "AnimatedVisibility"

    invoke-direct {v0, p0, p2, v3}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v0, Landroidx/compose/animation/core/Transition;

    const p2, 0x3d783fdb

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p0, p0, Landroidx/compose/animation/core/MutableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2, p1, p0}, Landroidx/compose/animation/core/Transition;->animateTo$animation_core_release(ILandroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p0, :cond_5

    if-ne p2, v1, :cond_6

    :cond_5
    new-instance p2, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;

    const/4 p0, 0x1

    invoke-direct {p2, v0, p0}, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p2, p1}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    return-object v0
.end method

.method public static final updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Transition;
    .locals 4

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroidx/compose/animation/core/Transition;

    new-instance v2, Landroidx/compose/animation/core/MutableTransitionState;

    invoke-direct {v2, p0}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p1}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Landroidx/compose/animation/core/Transition;

    and-int/lit8 p1, p3, 0x8

    or-int/lit8 p1, p1, 0x30

    and-int/lit8 p3, p3, 0xe

    or-int/2addr p1, p3

    invoke-virtual {v0, p1, p2, p0}, Landroidx/compose/animation/core/Transition;->animateTo$animation_core_release(ILandroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1

    new-instance p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;

    const/4 p1, 0x2

    invoke-direct {p0, v0, p1}, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p0, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    return-object v0
.end method
