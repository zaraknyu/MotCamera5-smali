.class public abstract Landroidx/compose/animation/AnimatedVisibilityKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final AnimatedEnterExitImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v12, p7

    move/from16 v0, p8

    const v4, -0x352a56be    # -7001249.0f

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, v0, 0x6

    const/4 v5, 0x4

    if-nez v4, :cond_1

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v0

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    and-int/lit8 v8, v0, 0x30

    if-nez v8, :cond_3

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    :cond_3
    and-int/lit16 v8, v0, 0x180

    if-nez v8, :cond_5

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v4, v8

    :cond_5
    and-int/lit16 v8, v0, 0xc00

    move-object/from16 v9, p3

    if-nez v8, :cond_7

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x800

    goto :goto_4

    :cond_6
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v4, v8

    :cond_7
    and-int/lit16 v8, v0, 0x6000

    move-object/from16 v10, p4

    if-nez v8, :cond_9

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x4000

    goto :goto_5

    :cond_8
    const/16 v8, 0x2000

    :goto_5
    or-int/2addr v4, v8

    :cond_9
    const/high16 v8, 0x30000

    and-int/2addr v8, v0

    if-nez v8, :cond_b

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v8, 0x10000

    :goto_6
    or-int/2addr v4, v8

    :cond_b
    const/high16 v8, 0x180000

    or-int/2addr v4, v8

    const/high16 v8, 0xc00000

    and-int/2addr v8, v0

    if-nez v8, :cond_d

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/high16 v8, 0x800000

    goto :goto_7

    :cond_c
    const/high16 v8, 0x400000

    :goto_7
    or-int/2addr v4, v8

    :cond_d
    const v8, 0x492493

    and-int/2addr v8, v4

    const v11, 0x492492

    const/4 v14, 0x0

    if-eq v8, v11, :cond_e

    const/4 v8, 0x1

    goto :goto_8

    :cond_e
    move v8, v14

    :goto_8
    and-int/lit8 v11, v4, 0x1

    invoke-virtual {v12, v11, v8}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v8

    if-eqz v8, :cond_30

    iget-object v8, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getHasInitialValueAnimations()Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_9

    :cond_f
    const v4, 0x6abbd55a

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_14

    :cond_10
    :goto_9
    const v8, 0x6a9ab186

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v8, v4, 0xe

    or-int/lit8 v11, v8, 0x30

    and-int/lit8 v13, v11, 0xe

    xor-int/lit8 v15, v13, 0x6

    if-le v15, v5, :cond_11

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    :cond_11
    and-int/lit8 v11, v11, 0x6

    if-ne v11, v5, :cond_13

    :cond_12
    const/4 v11, 0x1

    goto :goto_a

    :cond_13
    move v11, v14

    :goto_a
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v11, :cond_14

    if-ne v15, v5, :cond_15

    :cond_14
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v15

    :cond_16
    const v11, -0x1bd001fd

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v1, v2, v15, v12}, Landroidx/compose/animation/AnimatedVisibilityKt;->targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/EnterExitState;

    move-result-object v15

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v14, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v1, v2, v14, v12}, Landroidx/compose/animation/AnimatedVisibilityKt;->targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/EnterExitState;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    or-int/lit16 v13, v13, 0xc00

    sget v14, Landroidx/compose/animation/core/TransitionKt;->$r8$clinit:I

    and-int/lit8 v14, v13, 0xe

    xor-int/lit8 v14, v14, 0x6

    const/4 v0, 0x4

    if-le v14, v0, :cond_17

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_18

    :cond_17
    and-int/lit8 v2, v13, 0x6

    if-ne v2, v0, :cond_19

    :cond_18
    const/4 v0, 0x1

    goto :goto_b

    :cond_19
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1b

    if-ne v2, v5, :cond_1a

    goto :goto_c

    :cond_1a
    move/from16 v17, v4

    goto :goto_d

    :cond_1b
    :goto_c
    new-instance v2, Landroidx/compose/animation/core/Transition;

    new-instance v0, Landroidx/compose/animation/core/MutableTransitionState;

    invoke-direct {v0, v15}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    move/from16 v17, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Landroidx/compose/animation/core/Transition;->label:Ljava/lang/String;

    const-string v10, " > EnterExitTransition"

    invoke-static {v4, v9, v10}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v1, v4}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_d
    check-cast v2, Landroidx/compose/animation/core/Transition;

    const/4 v0, 0x4

    if-le v14, v0, :cond_1c

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    :cond_1c
    and-int/lit8 v4, v13, 0x6

    if-ne v4, v0, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_1f

    if-ne v4, v5, :cond_20

    :cond_1f
    new-instance v4, Landroidx/compose/runtime/Latch$await$2$2;

    const/4 v0, 0x4

    invoke-direct {v4, v0, v1, v2}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_20
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v4, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v2, v15, v11}, Landroidx/compose/animation/core/Transition;->seek(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    :cond_21
    invoke-virtual {v2, v11}, Landroidx/compose/animation/core/Transition;->updateTarget$animation_core_release(Ljava/lang/Object;)V

    iget-object v0, v2, Landroidx/compose/animation/core/Transition;->isSeeking$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :goto_f
    invoke-static {v6, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v4

    iget-object v9, v2, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v4, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    const/4 v13, 0x0

    if-nez v10, :cond_22

    if-ne v11, v5, :cond_23

    :cond_22
    new-instance v11, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1;

    invoke-direct {v11, v2, v0, v13}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_23
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_24

    invoke-static {v4}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_24
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v4, :cond_25

    if-ne v10, v5, :cond_26

    :cond_25
    new-instance v10, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$1$1;

    invoke-direct {v10, v11, v0, v13}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$1$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_26
    check-cast v10, Lkotlin/jvm/functions/Function2;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v12, v4, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v4

    sget-object v10, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    if-ne v4, v10, :cond_28

    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_28

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_10

    :cond_27
    const v0, 0x6abbbe1a

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_13

    :cond_28
    :goto_10
    const v0, 0x6aaa653b

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v0, 0x4

    if-ne v8, v0, :cond_29

    const/4 v0, 0x1

    goto :goto_11

    :cond_29
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_2a

    if-ne v4, v5, :cond_2b

    :cond_2a
    new-instance v4, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    invoke-direct {v4, v2}, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;-><init>(Landroidx/compose/animation/core/Transition;)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2b
    check-cast v4, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    shr-int/lit8 v0, v17, 0x6

    and-int/lit8 v8, v0, 0x70

    or-int/lit16 v8, v8, 0x6000

    and-int/lit16 v0, v0, 0x380

    or-int v13, v8, v0

    const-string v11, "Built-in"

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v8, v2

    invoke-static/range {v8 .. v13}, Landroidx/compose/animation/EnterExitTransitionKt;->createModifier(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v2, 0x5e4809f0

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_2c

    new-instance v2, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;

    invoke-direct {v2, v4}, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;-><init>(Landroidx/compose/animation/AnimatedVisibilityScopeImpl;)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2c
    check-cast v2, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;

    iget v5, v12, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v12, v0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v10, v12, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_2d

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_2d
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_12
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v12, v2, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v12, v8, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v8, v12, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v8, :cond_2e

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2f

    :cond_2e
    invoke-static {v5, v12, v5, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_2f
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v12, v0, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v17, 0x12

    and-int/lit8 v0, v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v4, v12, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_13
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_14

    :cond_30
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_14
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_31

    new-instance v0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$4;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$4;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_31
    return-void
.end method

.method public static final AnimatedVisibility(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 10

    move-object/from16 v7, p6

    const v0, -0xd4928fa

    .line 6
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v7, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p7, v0

    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v7, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x100

    goto :goto_1

    :cond_1
    const/16 v2, 0x80

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {v7, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x800

    goto :goto_2

    :cond_2
    const/16 v2, 0x400

    :goto_2
    or-int/2addr v0, v2

    or-int/lit16 v0, v0, 0x6000

    const v2, 0x12493

    and-int/2addr v2, v0

    const v5, 0x12492

    if-eq v2, v5, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v7, v5, v2}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    and-int/lit8 v2, v0, 0xe

    or-int/lit8 v2, v2, 0x30

    .line 7
    invoke-static {p0, v7, v2}, Landroidx/compose/animation/core/TransitionKt;->rememberTransition(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Transition;

    move-result-object v2

    .line 8
    sget-object v3, Landroidx/compose/animation/CrossfadeKt$Crossfade$3;->INSTANCE$3:Landroidx/compose/animation/CrossfadeKt$Crossfade$3;

    shl-int/lit8 v0, v0, 0x3

    and-int/lit16 v5, v0, 0x1c00

    const/16 v6, 0x1b0

    or-int/2addr v5, v6

    const v6, 0xe000

    and-int/2addr v0, v6

    or-int/2addr v0, v5

    const/high16 v5, 0x30000

    or-int v8, v0, v5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    .line 9
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const-string v2, "AnimatedVisibility"

    move-object v5, v2

    move-object v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, p1

    move-object v5, p4

    :goto_4
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_5

    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;

    const/4 v8, 0x2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 10
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public static final AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 9

    move/from16 v7, p7

    const v0, 0x7c7f8c4e

    .line 1
    invoke-virtual {p6, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p6, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v7

    or-int/lit8 v0, v0, 0x30

    and-int/lit16 v1, v7, 0x180

    if-nez v1, :cond_2

    invoke-virtual {p6, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x100

    goto :goto_1

    :cond_1
    const/16 v1, 0x80

    :goto_1
    or-int/2addr v0, v1

    :cond_2
    and-int/lit16 v1, v7, 0xc00

    if-nez v1, :cond_4

    invoke-virtual {p6, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_2

    :cond_3
    const/16 v1, 0x400

    :goto_2
    or-int/2addr v0, v1

    :cond_4
    or-int/lit16 v0, v0, 0x6000

    const v1, 0x12493

    and-int/2addr v1, v0

    const v2, 0x12492

    if-eq v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p6, v2, v1}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    and-int/lit8 p4, v0, 0xe

    or-int/lit8 p4, p4, 0x30

    const-string v8, "AnimatedVisibility"

    invoke-static {p1, v8, p6, p4}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Transition;

    move-result-object p1

    .line 3
    sget-object v1, Landroidx/compose/animation/CrossfadeKt$Crossfade$3;->INSTANCE$2:Landroidx/compose/animation/CrossfadeKt$Crossfade$3;

    shl-int/lit8 p4, v0, 0x3

    and-int/lit16 v0, p4, 0x1c00

    const/16 v2, 0x1b0

    or-int/2addr v0, v2

    const v2, 0xe000

    and-int/2addr p4, v2

    or-int/2addr p4, v0

    const/high16 v0, 0x30000

    or-int v6, p4, v0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    .line 4
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v5, v8

    :goto_4
    move-object v2, p1

    goto :goto_5

    :cond_6
    invoke-virtual {p6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v5, p4

    goto :goto_4

    :goto_5
    invoke-virtual {p6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;

    move v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;-><init>(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 5
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final AnimatedVisibility$1(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 10

    move-object/from16 v7, p6

    const v0, 0x31dc20ae

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v7, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    or-int v0, p7, v0

    or-int/lit16 v0, v0, 0x180

    invoke-virtual {v7, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x800

    goto :goto_1

    :cond_1
    const/16 v2, 0x400

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {v7, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x4000

    goto :goto_2

    :cond_2
    const/16 v2, 0x2000

    :goto_2
    or-int/2addr v0, v2

    const/high16 v2, 0x30000

    or-int/2addr v0, v2

    const v5, 0x92491

    and-int/2addr v5, v0

    const v6, 0x92490

    if-eq v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v7, v6, v5}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    shr-int/lit8 v5, v0, 0x3

    and-int/lit8 v5, v5, 0xe

    or-int/lit8 v5, v5, 0x30

    invoke-static {p0, v7, v5}, Landroidx/compose/animation/core/TransitionKt;->rememberTransition(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Transition;

    move-result-object v5

    sget-object v3, Landroidx/compose/animation/CrossfadeKt$Crossfade$3;->INSTANCE$4:Landroidx/compose/animation/CrossfadeKt$Crossfade$3;

    and-int/lit16 v6, v0, 0x1c00

    const/16 v8, 0x1b0

    or-int/2addr v6, v8

    const v8, 0xe000

    and-int/2addr v0, v8

    or-int/2addr v0, v6

    or-int v8, v0, v2

    move-object v4, p2

    move-object v6, p5

    move-object v2, v5

    move-object v5, p3

    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const-string v2, "AnimatedVisibility"

    move-object v5, v2

    move-object v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, p1

    move-object v5, p4

    :goto_4
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_5

    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;

    const/4 v8, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public static final AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p5

    move/from16 v9, p6

    const v2, 0x19a0f3eb

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v9, 0x6

    const/4 v3, 0x4

    if-nez v2, :cond_1

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v9

    goto :goto_1

    :cond_1
    move v2, v9

    :goto_1
    and-int/lit8 v4, v9, 0x30

    const/16 v5, 0x20

    if-nez v4, :cond_3

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :cond_3
    and-int/lit16 v4, v9, 0x180

    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-nez v4, :cond_5

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v2, v4

    :cond_5
    and-int/lit16 v4, v9, 0xc00

    if-nez v4, :cond_7

    move-object/from16 v4, p2

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x800

    goto :goto_4

    :cond_6
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v2, v8

    goto :goto_5

    :cond_7
    move-object/from16 v4, p2

    :goto_5
    and-int/lit16 v8, v9, 0x6000

    if-nez v8, :cond_9

    move-object/from16 v8, p3

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x4000

    goto :goto_6

    :cond_8
    const/16 v10, 0x2000

    :goto_6
    or-int/2addr v2, v10

    goto :goto_7

    :cond_9
    move-object/from16 v8, p3

    :goto_7
    const/high16 v10, 0x30000

    and-int v11, v9, v10

    if-nez v11, :cond_b

    move-object/from16 v11, p4

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/high16 v12, 0x20000

    goto :goto_8

    :cond_a
    const/high16 v12, 0x10000

    :goto_8
    or-int/2addr v2, v12

    goto :goto_9

    :cond_b
    move-object/from16 v11, p4

    :goto_9
    const v12, 0x12493

    and-int/2addr v12, v2

    const v13, 0x12492

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v12, v13, :cond_c

    move v12, v15

    goto :goto_a

    :cond_c
    move v12, v14

    :goto_a
    and-int/lit8 v13, v2, 0x1

    invoke-virtual {v7, v13, v12}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v12

    if-eqz v12, :cond_11

    and-int/lit8 v12, v2, 0x70

    if-ne v12, v5, :cond_d

    move v5, v15

    goto :goto_b

    :cond_d
    move v5, v14

    :goto_b
    and-int/lit8 v13, v2, 0xe

    if-ne v13, v3, :cond_e

    move v14, v15

    :cond_e
    or-int v3, v5, v14

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_f

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v5, v3, :cond_10

    :cond_f
    new-instance v5, Landroidx/compose/foundation/IndicationKt$indication$2;

    invoke-direct {v5, v1, v0}, Landroidx/compose/foundation/IndicationKt$indication$2;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/Transition;)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_10
    check-cast v5, Lkotlin/jvm/functions/Function3;

    invoke-static {v6, v5}, Landroidx/compose/ui/layout/ScaleFactorKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v5, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;->INSTANCE$1:Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

    or-int v6, v13, v10

    or-int/2addr v6, v12

    and-int/lit16 v10, v2, 0x1c00

    or-int/2addr v6, v10

    const v10, 0xe000

    and-int/2addr v10, v2

    or-int/2addr v6, v10

    const/high16 v10, 0x1c00000

    shl-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v10

    or-int/2addr v2, v6

    move-object v6, v8

    move v8, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v11

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedEnterExitImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_c

    :cond_11
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_c
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_12

    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v9

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static classLiteralValue(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "getComponentType(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->unit:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->toSafe()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->parent()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v3

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    invoke-direct {p0, v2, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;I)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->get(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object p0

    const-string v1, "getPrimitiveType(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "topLevelFqName"

    if-lez v0, :cond_2

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->arrayTypeFqName$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->parent()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v3

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    invoke-direct {v1, v3, p0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;I)V

    return-object v2

    :cond_2
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->typeFqName$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->parent()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v3

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    invoke-direct {v1, v3, p0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    invoke-direct {v2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;I)V

    return-object v2

    :cond_3
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    const-string v2, "fqName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->javaToKotlin:Ljava/util/HashMap;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    invoke-direct {v1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;I)V

    return-object v1
.end method

.method public static processAnnotation(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;Ljava/lang/annotation/Annotation;)V
    .locals 3

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;

    invoke-direct {v2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-interface {p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;->visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1, v0}, Landroidx/compose/animation/AnimatedVisibilityKt;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 8

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object p2

    :catch_0
    :goto_0
    invoke-virtual {p2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/animation/AnimatedVisibilityKt;->classLiteralValue(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;->visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V

    goto :goto_0

    :cond_0
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassKt;->TYPES_ELIGIBLE_FOR_SIMPLE_VISIT:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;->visit(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->PRIMITIVE_CLASSES:Ljava/util/List;

    const-class v4, Ljava/lang/Enum;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v2

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-interface {p0, v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;->visitEnum(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    goto :goto_0

    :cond_3
    const-class v4, Ljava/lang/annotation/Annotation;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInterfaces(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->single([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v3

    invoke-interface {p0, v3, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;->visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/AnimatedVisibilityKt;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;->visitArray(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;

    move-result-object v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v2

    check-cast v1, [Ljava/lang/Object;

    array-length v3, v1

    :goto_2
    if-ge v6, v3, :cond_b

    aget-object v4, v1, v6

    const-string v5, "null cannot be cast to non-null type kotlin.Enum<*>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;->visitEnum(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    :goto_3
    if-ge v6, v2, :cond_b

    aget-object v3, v1, v6

    const-string v4, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Class;

    invoke-static {v3}, Landroidx/compose/animation/AnimatedVisibilityKt;->classLiteralValue(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;->visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a

    check-cast v1, [Ljava/lang/Object;

    array-length v3, v1

    :goto_4
    if-ge v6, v3, :cond_b

    aget-object v4, v1, v6

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v5

    invoke-interface {v0, v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;->visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    const-string v7, "null cannot be cast to non-null type kotlin.Annotation"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/annotation/Annotation;

    invoke-static {v5, v4, v2}, Landroidx/compose/animation/AnimatedVisibilityKt;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    :goto_6
    if-ge v6, v2, :cond_b

    aget-object v3, v1, v6

    invoke-interface {v0, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;->visit(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;->visitEnd()V

    goto/16 :goto_0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported annotation argument value ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;->visitEnd()V

    return-void
.end method

.method public static final targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/EnterExitState;
    .locals 3

    const/4 v0, 0x0

    const v1, -0x35c3ee3d

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, p0, v0}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7d467783

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    goto :goto_1

    :cond_1
    sget-object p0, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    goto :goto_1

    :cond_2
    const v0, 0x7d4aa658

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v0, v1, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_4
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    goto :goto_0

    :cond_6
    sget-object p0, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    :goto_0
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method
