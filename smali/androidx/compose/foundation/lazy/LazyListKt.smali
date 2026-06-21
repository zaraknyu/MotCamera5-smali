.class public abstract Landroidx/compose/foundation/lazy/LazyListKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;III)V
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v4, p3

    move/from16 v0, p5

    move-object/from16 v14, p12

    move/from16 v15, p13

    move/from16 v2, p14

    move/from16 v6, p15

    const v7, 0x37213af3

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v7, v15, 0x6

    if-nez v7, :cond_1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v15

    goto :goto_1

    :cond_1
    move v7, v15

    :goto_1
    and-int/lit8 v10, v15, 0x30

    if-nez v10, :cond_3

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x20

    goto :goto_2

    :cond_2
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v7, v10

    :cond_3
    and-int/lit16 v10, v15, 0x180

    if-nez v10, :cond_5

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x100

    goto :goto_3

    :cond_4
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v7, v10

    :cond_5
    and-int/lit16 v10, v15, 0xc00

    const/4 v8, 0x0

    const/16 v18, 0x400

    if-nez v10, :cond_7

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x800

    goto :goto_4

    :cond_6
    move/from16 v10, v18

    :goto_4
    or-int/2addr v7, v10

    :cond_7
    and-int/lit16 v10, v15, 0x6000

    if-nez v10, :cond_9

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x4000

    goto :goto_5

    :cond_8
    const/16 v10, 0x2000

    :goto_5
    or-int/2addr v7, v10

    :cond_9
    const/high16 v10, 0x30000

    and-int/2addr v10, v15

    if-nez v10, :cond_b

    move-object/from16 v10, p4

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/high16 v21, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v21, 0x10000

    :goto_6
    or-int v7, v7, v21

    goto :goto_7

    :cond_b
    move-object/from16 v10, p4

    :goto_7
    const/high16 v21, 0x180000

    and-int v22, v15, v21

    if-nez v22, :cond_d

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v22

    if-eqz v22, :cond_c

    const/high16 v22, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v22, 0x80000

    :goto_8
    or-int v7, v7, v22

    :cond_d
    const/high16 v22, 0xc00000

    and-int v23, v15, v22

    move-object/from16 v13, p6

    if-nez v23, :cond_f

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    const/high16 v24, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v24, 0x400000

    :goto_9
    or-int v7, v7, v24

    :cond_f
    const/high16 v24, 0x6000000

    or-int v25, v7, v24

    and-int/lit16 v8, v6, 0x200

    const/high16 v26, 0x30000000

    if-eqz v8, :cond_11

    const/high16 v25, 0x36000000

    or-int v25, v7, v25

    :cond_10
    move-object/from16 v7, p7

    goto :goto_b

    :cond_11
    and-int v7, v15, v26

    if-nez v7, :cond_10

    move-object/from16 v7, p7

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    const/high16 v27, 0x20000000

    goto :goto_a

    :cond_12
    const/high16 v27, 0x10000000

    :goto_a
    or-int v25, v25, v27

    :goto_b
    and-int/lit16 v11, v6, 0x400

    if-eqz v11, :cond_13

    or-int/lit8 v16, v2, 0x6

    move-object/from16 v12, p8

    goto :goto_d

    :cond_13
    and-int/lit8 v28, v2, 0x6

    move-object/from16 v12, p8

    if-nez v28, :cond_15

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    const/16 v16, 0x4

    goto :goto_c

    :cond_14
    const/16 v16, 0x2

    :goto_c
    or-int v16, v2, v16

    goto :goto_d

    :cond_15
    move/from16 v16, v2

    :goto_d
    and-int/lit16 v9, v6, 0x800

    if-eqz v9, :cond_17

    or-int/lit8 v16, v16, 0x30

    :cond_16
    :goto_e
    move/from16 v7, v16

    goto :goto_10

    :cond_17
    and-int/lit8 v30, v2, 0x30

    move-object/from16 v7, p9

    if-nez v30, :cond_16

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_18

    const/16 v19, 0x20

    goto :goto_f

    :cond_18
    const/16 v19, 0x10

    :goto_f
    or-int v16, v16, v19

    goto :goto_e

    :goto_10
    move/from16 v16, v8

    and-int/lit16 v8, v6, 0x1000

    if-eqz v8, :cond_1a

    or-int/lit16 v7, v7, 0x180

    :cond_19
    move-object/from16 v6, p10

    goto :goto_12

    :cond_1a
    and-int/lit16 v6, v2, 0x180

    if-nez v6, :cond_19

    move-object/from16 v6, p10

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    const/16 v20, 0x100

    goto :goto_11

    :cond_1b
    const/16 v20, 0x80

    :goto_11
    or-int v7, v7, v20

    :goto_12
    and-int/lit16 v6, v2, 0xc00

    if-nez v6, :cond_1d

    move-object/from16 v6, p11

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/16 v18, 0x800

    :cond_1c
    or-int v7, v7, v18

    goto :goto_13

    :cond_1d
    move-object/from16 v6, p11

    :goto_13
    const v18, 0x12492493

    and-int v2, v25, v18

    const v6, 0x12492492

    const/16 v18, 0x1

    if-ne v2, v6, :cond_1f

    and-int/lit16 v2, v7, 0x493

    const/16 v6, 0x492

    if-eq v2, v6, :cond_1e

    goto :goto_14

    :cond_1e
    const/4 v2, 0x0

    goto :goto_15

    :cond_1f
    :goto_14
    move/from16 v2, v18

    :goto_15
    and-int/lit8 v6, v25, 0x1

    invoke-virtual {v14, v6, v2}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_56

    if-eqz v16, :cond_20

    const/4 v12, 0x0

    goto :goto_16

    :cond_20
    move-object/from16 v12, p7

    :goto_16
    move v6, v7

    if-eqz v11, :cond_21

    const/4 v7, 0x0

    goto :goto_17

    :cond_21
    move-object/from16 v7, p8

    :goto_17
    if-eqz v9, :cond_22

    const/4 v13, 0x0

    goto :goto_18

    :cond_22
    move-object/from16 v13, p9

    :goto_18
    if-eqz v8, :cond_23

    const/4 v8, 0x0

    goto :goto_19

    :cond_23
    move-object/from16 v8, p10

    :goto_19
    shr-int/lit8 v9, v25, 0x3

    and-int/lit8 v16, v9, 0xe

    shr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x70

    or-int v9, v16, v9

    invoke-static/range {p11 .. p12}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    and-int/lit8 v19, v9, 0xe

    xor-int/lit8 v2, v19, 0x6

    move/from16 p7, v6

    const/4 v6, 0x4

    if-le v2, v6, :cond_24

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_24
    and-int/lit8 v2, v9, 0x6

    if-ne v2, v6, :cond_26

    :cond_25
    move/from16 v2, v18

    goto :goto_1a

    :cond_26
    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v2, :cond_27

    if-ne v6, v9, :cond_28

    :cond_27
    new-instance v2, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const v10, 0x7fffffff

    invoke-direct {v6, v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    iput-object v6, v2, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxWidthState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    new-instance v6, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-direct {v6, v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    iput-object v6, v2, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxHeightState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    sget-object v6, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$1:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance v10, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;

    const/4 v15, 0x1

    invoke-direct {v10, v11, v15}, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    invoke-static {v6, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v10

    new-instance v11, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;

    const/4 v15, 0x2

    invoke-direct {v11, v10, v3, v2, v15}, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v6, v11}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v34

    new-instance v30, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    const/16 v31, 0x0

    const/16 v32, 0x1

    const-class v33, Landroidx/compose/runtime/State;

    const-string/jumbo v35, "value"

    const-string v36, "getValue()Ljava/lang/Object;"

    invoke-direct/range {v30 .. v36}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v30

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_28
    move-object v2, v6

    check-cast v2, Lkotlin/reflect/KProperty0;

    shr-int/lit8 v6, v25, 0x9

    and-int/lit8 v10, v6, 0x70

    or-int v10, v16, v10

    and-int/lit8 v11, v10, 0xe

    xor-int/lit8 v11, v11, 0x6

    const/4 v15, 0x4

    if-le v11, v15, :cond_29

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2a

    :cond_29
    and-int/lit8 v11, v10, 0x6

    if-ne v11, v15, :cond_2b

    :cond_2a
    move/from16 v11, v18

    goto :goto_1b

    :cond_2b
    const/4 v11, 0x0

    :goto_1b
    and-int/lit8 v19, v10, 0x70

    xor-int/lit8 v15, v19, 0x30

    move-object/from16 p8, v2

    const/16 v2, 0x20

    if-le v15, v2, :cond_2c

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v15

    if-nez v15, :cond_2d

    :cond_2c
    and-int/lit8 v10, v10, 0x30

    if-ne v10, v2, :cond_2e

    :cond_2d
    move/from16 v2, v18

    goto :goto_1c

    :cond_2e
    const/4 v2, 0x0

    :goto_1c
    or-int/2addr v2, v11

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v2, :cond_2f

    if-ne v10, v9, :cond_30

    :cond_2f
    new-instance v10, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;

    const/4 v2, 0x0

    invoke-direct {v10, v3, v4, v2}, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;ZI)V

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_30
    move-object v15, v10

    check-cast v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_31

    invoke-static {v14}, Landroidx/compose/runtime/AnchoredGroupPath;->createCompositionCoroutineScope(Landroidx/compose/runtime/ComposerImpl;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_31
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    sget-object v10, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalGraphicsContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/graphics/GraphicsContext;

    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_32

    sget-object v11, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;->StickToTopPlacement:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    goto :goto_1d

    :cond_32
    const/4 v11, 0x0

    :goto_1d
    const v19, 0xfff0

    and-int v19, v25, v19

    const/high16 v20, 0x70000

    and-int v20, v6, v20

    or-int v19, v19, v20

    const/high16 v20, 0x380000

    and-int v6, v6, v20

    or-int v6, v19, v6

    shl-int/lit8 v19, p7, 0x12

    const/high16 v30, 0x1c00000

    and-int v31, v19, v30

    or-int v6, v6, v31

    const/high16 v31, 0xe000000

    and-int v19, v19, v31

    or-int v6, v6, v19

    shl-int/lit8 v19, p7, 0x1b

    const/high16 v32, 0x70000000

    and-int v19, v19, v32

    or-int v6, v6, v19

    and-int/lit8 v19, v6, 0x70

    move-object/from16 p7, v2

    xor-int/lit8 v2, v19, 0x30

    const/16 v0, 0x20

    if-le v2, v0, :cond_33

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    :cond_33
    and-int/lit8 v2, v6, 0x30

    if-ne v2, v0, :cond_35

    :cond_34
    move/from16 v2, v18

    goto :goto_1e

    :cond_35
    const/4 v2, 0x0

    :goto_1e
    and-int/lit16 v0, v6, 0x380

    xor-int/lit16 v0, v0, 0x180

    move/from16 p9, v2

    const/16 v2, 0x100

    if-le v0, v2, :cond_36

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    :cond_36
    and-int/lit16 v0, v6, 0x180

    if-ne v0, v2, :cond_38

    :cond_37
    move/from16 v0, v18

    goto :goto_1f

    :cond_38
    const/4 v0, 0x0

    :goto_1f
    or-int v0, p9, v0

    and-int/lit16 v2, v6, 0x1c00

    xor-int/lit16 v2, v2, 0xc00

    move/from16 p9, v0

    const/16 v0, 0x800

    if-le v2, v0, :cond_39

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v17

    if-nez v17, :cond_3a

    goto :goto_20

    :cond_39
    const/4 v2, 0x0

    :goto_20
    and-int/lit16 v2, v6, 0xc00

    if-ne v2, v0, :cond_3b

    :cond_3a
    move/from16 v0, v18

    goto :goto_21

    :cond_3b
    const/4 v0, 0x0

    :goto_21
    or-int v0, p9, v0

    const v2, 0xe000

    and-int/2addr v2, v6

    xor-int/lit16 v2, v2, 0x6000

    move/from16 p9, v0

    const/16 v0, 0x4000

    if-le v2, v0, :cond_3c

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v2

    if-nez v2, :cond_3d

    :cond_3c
    and-int/lit16 v2, v6, 0x6000

    if-ne v2, v0, :cond_3e

    :cond_3d
    move/from16 v0, v18

    goto :goto_22

    :cond_3e
    const/4 v0, 0x0

    :goto_22
    or-int v0, p9, v0

    and-int v2, v6, v20

    xor-int v2, v2, v21

    move/from16 p9, v0

    const/high16 v0, 0x100000

    if-le v2, v0, :cond_3f

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    :cond_3f
    and-int v2, v6, v21

    if-ne v2, v0, :cond_41

    :cond_40
    move/from16 v0, v18

    goto :goto_23

    :cond_41
    const/4 v0, 0x0

    :goto_23
    or-int v0, p9, v0

    and-int v2, v6, v30

    xor-int v2, v2, v22

    move/from16 p9, v0

    const/high16 v0, 0x800000

    if-le v2, v0, :cond_42

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    :cond_42
    and-int v2, v6, v22

    if-ne v2, v0, :cond_44

    :cond_43
    move/from16 v0, v18

    goto :goto_24

    :cond_44
    const/4 v0, 0x0

    :goto_24
    or-int v0, p9, v0

    and-int v2, v6, v31

    xor-int v2, v2, v24

    move/from16 p9, v0

    const/high16 v0, 0x4000000

    if-le v2, v0, :cond_45

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    :cond_45
    and-int v2, v6, v24

    if-ne v2, v0, :cond_47

    :cond_46
    move/from16 v0, v18

    goto :goto_25

    :cond_47
    const/4 v0, 0x0

    :goto_25
    or-int v0, p9, v0

    and-int v2, v6, v32

    xor-int v2, v2, v26

    move/from16 p9, v0

    const/high16 v0, 0x20000000

    if-le v2, v0, :cond_48

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    :cond_48
    and-int v2, v6, v26

    if-ne v2, v0, :cond_4a

    :cond_49
    move/from16 v0, v18

    goto :goto_26

    :cond_4a
    const/4 v0, 0x0

    :goto_26
    or-int v0, p9, v0

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_4c

    if-ne v2, v9, :cond_4b

    goto :goto_27

    :cond_4b
    move-object/from16 v4, p8

    move-object v11, v7

    move-object/from16 v17, v8

    move-object/from16 v37, v9

    const/4 v0, 0x4

    goto :goto_28

    :cond_4c
    :goto_27
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    move-object/from16 v6, p8

    move-object/from16 v37, v9

    const/4 v0, 0x4

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v13}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;)V

    move-object v4, v6

    move-object v11, v7

    move-object/from16 v17, v8

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_28
    move-object/from16 v19, v2

    check-cast v19, Lkotlin/jvm/functions/Function2;

    if-eqz p3, :cond_4d

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_29

    :cond_4d
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_29
    if-eqz p5, :cond_55

    const v5, -0x5a30cd85

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    shr-int/lit8 v5, v25, 0x15

    and-int/lit8 v5, v5, 0x70

    or-int v5, v16, v5

    and-int/lit8 v6, v5, 0xe

    xor-int/lit8 v6, v6, 0x6

    if-le v6, v0, :cond_4e

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f

    :cond_4e
    and-int/lit8 v6, v5, 0x6

    if-ne v6, v0, :cond_50

    :cond_4f
    move/from16 v8, v18

    goto :goto_2a

    :cond_50
    const/4 v8, 0x0

    :goto_2a
    and-int/lit8 v0, v5, 0x70

    xor-int/lit8 v0, v0, 0x30

    const/16 v5, 0x20

    if-le v0, v5, :cond_51

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v5

    if-nez v5, :cond_52

    :cond_51
    const/16 v18, 0x0

    :cond_52
    or-int v0, v8, v18

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_53

    move-object/from16 v0, v37

    if-ne v5, v0, :cond_54

    :cond_53
    new-instance v5, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;

    invoke-direct {v5, v3}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_54
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;

    iget-object v0, v3, Landroidx/compose/foundation/lazy/LazyListState;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    invoke-static {v5, v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/room/ObservedTableVersions;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2b

    :cond_55
    const/4 v5, 0x0

    const v0, -0x5a2a49f0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    :goto_2b
    iget-object v5, v3, Landroidx/compose/foundation/lazy/LazyListState;->remeasurementModifier:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    invoke-interface {v1, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-object v6, v3, Landroidx/compose/foundation/lazy/LazyListState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-interface {v5, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move/from16 v6, p5

    invoke-static {v5, v4, v15, v2, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;Z)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v5, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v5, v3, Landroidx/compose/foundation/lazy/LazyListState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v7, v3, Landroidx/compose/foundation/lazy/LazyListState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v4

    move-object v4, v5

    move-object/from16 v9, p6

    move v5, v6

    move-object/from16 v6, p4

    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/ImageKt;->scrollingContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v8, v3

    iget-object v4, v8, Landroidx/compose/foundation/lazy/LazyListState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/4 v7, 0x0

    move-object v3, v2

    move-object v6, v14

    move-object/from16 v5, v19

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    move-object v9, v11

    move-object v10, v13

    move-object/from16 v11, v17

    goto :goto_2c

    :cond_56
    move-object v8, v3

    invoke-virtual/range {p12 .. p12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v12, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    :goto_2c
    invoke-virtual/range {p12 .. p12}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_57

    move-object v2, v0

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v38, v2

    move-object v2, v8

    move-object v8, v12

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v15}, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v2, v38

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_57
    return-void
.end method

.method public static final record(Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker$DO_NOTHING;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "from"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "scopeOwner"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;

    iget-object p0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->fqName:Ljava/lang/String;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "asString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "packageFqName"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
