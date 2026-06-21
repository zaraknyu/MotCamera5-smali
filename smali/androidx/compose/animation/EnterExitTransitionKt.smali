.class public abstract Landroidx/compose/animation/EnterExitTransitionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DefaultAlphaAndScaleSpring:Landroidx/compose/animation/core/SpringSpec;

.field public static final DefaultOffsetAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

.field public static final DefaultSizeAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

.field public static final TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$3;->INSTANCE$6:Landroidx/compose/animation/CrossfadeKt$Crossfade$3;

    sget-object v1, Landroidx/compose/animation/CrossfadeKt$Crossfade$3;->INSTANCE$7:Landroidx/compose/animation/CrossfadeKt$Crossfade$3;

    sget-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/high16 v2, 0x43c80000    # 400.0f

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultAlphaAndScaleSpring:Landroidx/compose/animation/core/SpringSpec;

    const/4 v0, 0x1

    int-to-long v3, v0

    const/16 v1, 0x20

    shl-long v5, v3, v1

    const-wide v7, 0xffffffffL

    and-long/2addr v3, v7

    or-long/2addr v3, v5

    new-instance v1, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {v1, v3, v4}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v1

    sput-object v1, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultOffsetAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    new-instance v1, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v1, v3, v4}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultSizeAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    return-void
.end method

.method public static final createModifier(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/Modifier;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    move-object/from16 v3, p4

    move/from16 v7, p5

    and-int/lit8 v8, v7, 0xe

    xor-int/lit8 v4, v8, 0x6

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x4

    if-le v4, v11, :cond_0

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    and-int/lit8 v4, v7, 0x6

    if-ne v4, v11, :cond_2

    :cond_1
    move v4, v9

    goto :goto_0

    :cond_2
    move v4, v10

    :goto_0
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v4, :cond_3

    if-ne v5, v12, :cond_4

    :cond_3
    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v4

    iget-object v13, v0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    if-ne v4, v14, :cond_6

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v4

    sget-object v14, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    if-ne v4, v14, :cond_6

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v5, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    sget-object v1, Landroidx/compose/animation/EnterTransitionImpl;->None:Landroidx/compose/animation/EnterTransitionImpl;

    invoke-interface {v5, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v14, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    if-ne v4, v14, :cond_7

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/animation/EnterTransitionImpl;

    invoke-virtual {v4, v1}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v1

    invoke-interface {v5, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_7
    :goto_1
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/compose/animation/EnterTransitionImpl;

    shr-int/lit8 v15, v7, 0x3

    and-int/lit8 v1, v15, 0x70

    or-int/2addr v1, v8

    and-int/lit8 v4, v1, 0xe

    xor-int/lit8 v4, v4, 0x6

    if-le v4, v11, :cond_8

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    and-int/lit8 v1, v1, 0x6

    if-ne v1, v11, :cond_a

    :cond_9
    move v1, v9

    goto :goto_2

    :cond_a
    move v1, v10

    :goto_2
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_b

    if-ne v4, v12, :cond_c

    :cond_b
    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    check-cast v4, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v1, v5, :cond_e

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    if-ne v1, v5, :cond_e

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v4, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_d
    sget-object v1, Landroidx/compose/animation/ExitTransitionImpl;->None:Landroidx/compose/animation/ExitTransitionImpl;

    invoke-interface {v4, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_e
    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    if-eq v1, v5, :cond_f

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/ExitTransitionImpl;

    invoke-virtual {v1, v2}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v1

    invoke-interface {v4, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_f
    :goto_3
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/compose/animation/ExitTransitionImpl;

    iget-object v1, v14, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v1, v1, Landroidx/compose/animation/TransitionData;->slide:Landroidx/compose/animation/Slide;

    if-nez v1, :cond_11

    iget-object v1, v13, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v1, v1, Landroidx/compose/animation/TransitionData;->slide:Landroidx/compose/animation/Slide;

    if-eqz v1, :cond_10

    goto :goto_4

    :cond_10
    move v1, v10

    goto :goto_5

    :cond_11
    :goto_4
    move v1, v9

    :goto_5
    iget-object v2, v13, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    const/16 v16, 0x0

    if-eqz v1, :cond_13

    const v1, -0x30f1e623

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt;->IntOffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_12

    const-string v2, " slide"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    check-cast v2, Ljava/lang/String;

    or-int/lit16 v4, v8, 0x180

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/TransitionKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v1

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v17, v1

    goto :goto_6

    :cond_13
    const v0, -0x30f048d8

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v17, v16

    :goto_6
    const v0, -0x30ed3161

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v0, -0x30e97c01

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v0, v14, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v1, v13, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    const/4 v2, 0x0

    xor-int/2addr v2, v9

    and-int/lit16 v4, v15, 0x1c00

    or-int/2addr v8, v4

    iget-object v4, v0, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    if-nez v4, :cond_15

    iget-object v4, v1, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    if-eqz v4, :cond_14

    goto :goto_7

    :cond_14
    move v4, v10

    goto :goto_8

    :cond_15
    :goto_7
    move v4, v9

    :goto_8
    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-nez v0, :cond_17

    iget-object v0, v1, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v0, :cond_16

    goto :goto_9

    :cond_16
    move v15, v10

    goto :goto_a

    :cond_17
    :goto_9
    move v15, v9

    :goto_a
    if-eqz v4, :cond_19

    const v0, -0x283c14b5

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_18

    const-string v0, " alpha"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v0, Ljava/lang/String;

    and-int/lit8 v4, v8, 0xe

    or-int/lit16 v4, v4, 0x180

    const/4 v5, 0x0

    move v9, v2

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/TransitionKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v1

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_b

    :cond_19
    move v9, v2

    const v0, -0x28398291

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v1, v16

    :goto_b
    if-eqz v15, :cond_1b

    const v0, -0x28387a75

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object v0, v1

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_1a

    const-string v2, " scale"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1a
    check-cast v2, Ljava/lang/String;

    and-int/lit8 v4, v8, 0xe

    or-int/lit16 v4, v4, 0x180

    const/4 v5, 0x0

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/TransitionKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v1

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v2, v1

    goto :goto_c

    :cond_1b
    move-object v6, v1

    const v0, -0x2835e851

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v2, v16

    :goto_c
    if-eqz v15, :cond_1c

    const v0, -0x2834b918

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v0, v8, 0xe

    or-int/lit16 v4, v0, 0x180

    const/4 v5, 0x0

    sget-object v1, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    move-object v0, v2

    const-string v2, "TransformOriginInterruptionHandling"

    move-object v15, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/TransitionKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v1

    move-object v2, v3

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_d

    :cond_1c
    move-object/from16 v0, p0

    move-object v15, v2

    move-object v2, v3

    const v1, -0x28321bb1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v1, v16

    :goto_d
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    and-int/lit8 v4, v8, 0xe

    xor-int/lit8 v4, v4, 0x6

    if-le v4, v11, :cond_1d

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    :cond_1d
    and-int/lit8 v4, v8, 0x6

    if-ne v4, v11, :cond_1f

    :cond_1e
    const/4 v4, 0x1

    goto :goto_e

    :cond_1f
    move v4, v10

    :goto_e
    or-int/2addr v3, v4

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_21

    if-ne v4, v12, :cond_20

    goto :goto_f

    :cond_20
    move-object v8, v2

    move-object v0, v4

    move-object v5, v13

    move-object v4, v14

    goto :goto_10

    :cond_21
    :goto_f
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    move-object v3, v6

    move-object v6, v1

    move-object v1, v3

    move-object/from16 v3, p0

    move-object v8, v2

    move-object v5, v13

    move-object v4, v14

    move-object v2, v15

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/animation/core/Transition$DeferredAnimation;)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_10
    check-cast v0, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v1

    and-int/lit16 v2, v7, 0x1c00

    xor-int/lit16 v2, v2, 0xc00

    const/16 v3, 0x800

    if-le v2, v3, :cond_22

    sget-object v2, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_22
    and-int/lit16 v2, v7, 0xc00

    if-ne v2, v3, :cond_24

    :cond_23
    const/4 v10, 0x1

    :cond_24
    or-int/2addr v1, v10

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_25

    if-ne v2, v12, :cond_26

    :cond_25
    new-instance v2, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$2$1;

    invoke-direct {v2, v9}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$2$1;-><init>(Z)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_26
    check-cast v2, Lkotlin/jvm/functions/Function1;

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    move-object v7, v0

    new-instance v0, Landroidx/compose/animation/EnterExitTransitionElement;

    move-object/from16 v3, v16

    move-object/from16 v1, p0

    move-object v6, v5

    move-object/from16 v2, v16

    move-object v5, v4

    move-object/from16 v4, v17

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/EnterExitTransitionElement;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;)V

    invoke-interface {v8, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static fadeIn$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/EnterTransitionImpl;
    .locals 7

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/high16 p0, 0x43c80000    # 400.0f

    const/4 p1, 0x5

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    :cond_0
    new-instance p1, Landroidx/compose/animation/EnterTransitionImpl;

    new-instance v0, Landroidx/compose/animation/TransitionData;

    new-instance v1, Landroidx/compose/animation/Fade;

    invoke-direct {v1, p0}, Landroidx/compose/animation/Fade;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    invoke-direct {p1, v0}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    return-object p1
.end method

.method public static fadeOut$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;
    .locals 7

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/high16 p0, 0x43c80000    # 400.0f

    const/4 p1, 0x5

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    :cond_0
    new-instance p1, Landroidx/compose/animation/ExitTransitionImpl;

    new-instance v0, Landroidx/compose/animation/TransitionData;

    new-instance v1, Landroidx/compose/animation/Fade;

    invoke-direct {v1, p0}, Landroidx/compose/animation/Fade;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    invoke-direct {p1, v0}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    return-object p1
.end method

.method public static scaleIn-L8ZKh-E$default(Landroidx/compose/animation/core/TweenSpec;JI)Landroidx/compose/animation/EnterTransitionImpl;
    .locals 8

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x3f6b851f    # 0.92f

    :goto_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    sget-wide p1, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    :cond_1
    new-instance p3, Landroidx/compose/animation/EnterTransitionImpl;

    new-instance v1, Landroidx/compose/animation/TransitionData;

    new-instance v5, Landroidx/compose/animation/Scale;

    invoke-direct {v5, v0, p1, p2, p0}, Landroidx/compose/animation/Scale;-><init>(FJLandroidx/compose/animation/core/TweenSpec;)V

    const/4 v6, 0x0

    const/16 v7, 0x37

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    invoke-direct {p3, v1}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    return-object p3
.end method

.method public static scaleOut-L8ZKh-E$default(Landroidx/compose/animation/core/TweenSpec;J)Landroidx/compose/animation/ExitTransitionImpl;
    .locals 8

    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    new-instance v1, Landroidx/compose/animation/TransitionData;

    new-instance v5, Landroidx/compose/animation/Scale;

    const/4 v2, 0x0

    invoke-direct {v5, v2, p1, p2, p0}, Landroidx/compose/animation/Scale;-><init>(FJLandroidx/compose/animation/core/TweenSpec;)V

    const/4 v6, 0x0

    const/16 v7, 0x37

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    invoke-direct {v0, v1}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    return-object v0
.end method
