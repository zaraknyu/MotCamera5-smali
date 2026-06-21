.class public abstract Landroidx/compose/foundation/lazy/grid/LazyGridKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;II)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move-object/from16 v4, p3

    move/from16 v0, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v12, p10

    move/from16 v13, p11

    const v2, 0x2a3e8512

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v13

    goto :goto_1

    :cond_1
    move v2, v13

    :goto_1
    and-int/lit8 v9, v13, 0x30

    if-nez v9, :cond_3

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_2

    :cond_2
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v2, v9

    :cond_3
    and-int/lit16 v9, v13, 0x180

    if-nez v9, :cond_6

    and-int/lit16 v9, v13, 0x200

    if-nez v9, :cond_4

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_3

    :cond_4
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    :goto_3
    if-eqz v9, :cond_5

    const/16 v9, 0x100

    goto :goto_4

    :cond_5
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v2, v9

    :cond_6
    and-int/lit16 v9, v13, 0xc00

    if-nez v9, :cond_8

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x800

    goto :goto_5

    :cond_7
    const/16 v9, 0x400

    :goto_5
    or-int/2addr v2, v9

    :cond_8
    and-int/lit16 v9, v13, 0x6000

    const/4 v10, 0x0

    if-nez v9, :cond_a

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x4000

    goto :goto_6

    :cond_9
    const/16 v9, 0x2000

    :goto_6
    or-int/2addr v2, v9

    :cond_a
    const/high16 v9, 0x30000

    and-int v18, v13, v9

    move/from16 v19, v9

    const/4 v9, 0x1

    if-nez v18, :cond_c

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_b

    const/high16 v18, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v18, 0x10000

    :goto_7
    or-int v2, v2, v18

    :cond_c
    const/high16 v18, 0x180000

    and-int v20, v13, v18

    move-object/from16 v9, p4

    if-nez v20, :cond_e

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/high16 v22, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v22, 0x80000

    :goto_8
    or-int v2, v2, v22

    :cond_e
    const/high16 v22, 0xc00000

    and-int v23, v13, v22

    if-nez v23, :cond_10

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_f

    const/high16 v23, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v23, 0x400000

    :goto_9
    or-int v2, v2, v23

    :cond_10
    const/high16 v23, 0x6000000

    and-int v23, v13, v23

    move-object/from16 v5, p6

    if-nez v23, :cond_12

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    const/high16 v24, 0x4000000

    goto :goto_a

    :cond_11
    const/high16 v24, 0x2000000

    :goto_a
    or-int v2, v2, v24

    :cond_12
    const/high16 v24, 0x30000000

    and-int v24, v13, v24

    if-nez v24, :cond_14

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    const/high16 v24, 0x20000000

    goto :goto_b

    :cond_13
    const/high16 v24, 0x10000000

    :goto_b
    or-int v2, v2, v24

    :cond_14
    and-int/lit8 v24, p12, 0x6

    if-nez v24, :cond_16

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_15

    const/16 v16, 0x4

    goto :goto_c

    :cond_15
    const/16 v16, 0x2

    :goto_c
    or-int v16, p12, v16

    goto :goto_d

    :cond_16
    move/from16 v16, p12

    :goto_d
    and-int/lit8 v24, p12, 0x30

    move-object/from16 v15, p9

    if-nez v24, :cond_18

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    const/16 v17, 0x20

    goto :goto_e

    :cond_17
    const/16 v17, 0x10

    :goto_e
    or-int v16, v16, v17

    :cond_18
    const v17, 0x12492493

    and-int v10, v2, v17

    const v11, 0x12492492

    const/16 v14, 0x12

    if-ne v10, v11, :cond_1a

    and-int/lit8 v10, v16, 0x13

    if-eq v10, v14, :cond_19

    goto :goto_f

    :cond_19
    const/4 v10, 0x0

    goto :goto_10

    :cond_1a
    :goto_f
    const/4 v10, 0x1

    :goto_10
    and-int/lit8 v11, v2, 0x1

    invoke-virtual {v12, v11, v10}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v10

    if-eqz v10, :cond_49

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v10, v13, 0x1

    if-eqz v10, :cond_1c

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_1b

    goto :goto_11

    :cond_1b
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :cond_1c
    :goto_11
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    shr-int/lit8 v26, v2, 0x3

    and-int/lit8 v27, v26, 0xe

    and-int/lit8 v10, v16, 0x70

    or-int v10, v27, v10

    invoke-static/range {p9 .. p10}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    and-int/lit8 v28, v10, 0xe

    move/from16 v29, v14

    xor-int/lit8 v14, v28, 0x6

    move/from16 v28, v2

    const/4 v2, 0x4

    if-le v14, v2, :cond_1d

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1e

    :cond_1d
    and-int/lit8 v10, v10, 0x6

    if-ne v10, v2, :cond_1f

    :cond_1e
    const/4 v2, 0x1

    goto :goto_12

    :cond_1f
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v2, :cond_20

    if-ne v10, v14, :cond_21

    :cond_20
    sget-object v2, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$1:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance v10, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;

    const/4 v5, 0x2

    invoke-direct {v10, v11, v5}, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    invoke-static {v2, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v5

    new-instance v10, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/4 v11, 0x4

    invoke-direct {v10, v11, v5, v3}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v34

    new-instance v30, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    const/16 v31, 0x0

    const/16 v32, 0x2

    const-class v33, Landroidx/compose/runtime/State;

    const-string/jumbo v35, "value"

    const-string v36, "getValue()Ljava/lang/Object;"

    invoke-direct/range {v30 .. v36}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, v30

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_21
    move-object v5, v10

    check-cast v5, Lkotlin/reflect/KProperty0;

    shr-int/lit8 v2, v28, 0x9

    and-int/lit8 v2, v2, 0x70

    or-int v2, v27, v2

    and-int/lit8 v10, v2, 0xe

    xor-int/lit8 v10, v10, 0x6

    const/4 v11, 0x4

    if-le v10, v11, :cond_22

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_23

    :cond_22
    and-int/lit8 v10, v2, 0x6

    if-ne v10, v11, :cond_24

    :cond_23
    const/4 v10, 0x1

    goto :goto_13

    :cond_24
    const/4 v10, 0x0

    :goto_13
    and-int/lit8 v11, v2, 0x70

    xor-int/lit8 v11, v11, 0x30

    move/from16 v30, v2

    const/16 v2, 0x20

    if-le v11, v2, :cond_25

    const/4 v11, 0x0

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v17

    if-nez v17, :cond_26

    :cond_25
    and-int/lit8 v11, v30, 0x30

    if-ne v11, v2, :cond_27

    :cond_26
    const/4 v11, 0x1

    goto :goto_14

    :cond_27
    const/4 v11, 0x0

    :goto_14
    or-int v2, v10, v11

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v2, :cond_28

    if-ne v10, v14, :cond_29

    :cond_28
    new-instance v10, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;

    invoke-direct {v10, v3}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_29
    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v14, :cond_2a

    invoke-static {v12}, Landroidx/compose/runtime/AnchoredGroupPath;->createCompositionCoroutineScope(Landroidx/compose/runtime/ComposerImpl;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2a
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalGraphicsContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/graphics/GraphicsContext;

    move-object/from16 v30, v2

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    sget-object v2, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;->StickToTopPlacement:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    goto :goto_15

    :cond_2b
    const/4 v2, 0x0

    :goto_15
    const v31, 0x7fff0

    and-int v31, v28, v31

    shl-int/lit8 v16, v16, 0x12

    const/high16 v29, 0x380000

    and-int v16, v16, v29

    or-int v16, v31, v16

    shr-int/lit8 v28, v28, 0x6

    const/high16 v31, 0x1c00000

    and-int v28, v28, v31

    move-object/from16 v32, v2

    or-int v2, v16, v28

    and-int/lit8 v16, v2, 0x70

    move-object/from16 v28, v5

    xor-int/lit8 v5, v16, 0x30

    const/16 v9, 0x20

    if-le v5, v9, :cond_2c

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    :cond_2c
    and-int/lit8 v5, v2, 0x30

    if-ne v5, v9, :cond_2e

    :cond_2d
    const/4 v5, 0x1

    goto :goto_16

    :cond_2e
    const/4 v5, 0x0

    :goto_16
    and-int/lit16 v9, v2, 0x380

    xor-int/lit16 v9, v9, 0x180

    const/16 v3, 0x100

    if-le v9, v3, :cond_2f

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_30

    :cond_2f
    and-int/lit16 v9, v2, 0x180

    if-ne v9, v3, :cond_31

    :cond_30
    const/4 v3, 0x1

    goto :goto_17

    :cond_31
    const/4 v3, 0x0

    :goto_17
    or-int/2addr v3, v5

    and-int/lit16 v5, v2, 0x1c00

    xor-int/lit16 v5, v5, 0xc00

    const/16 v9, 0x800

    if-le v5, v9, :cond_32

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    :cond_32
    and-int/lit16 v5, v2, 0xc00

    if-ne v5, v9, :cond_34

    :cond_33
    const/4 v5, 0x1

    goto :goto_18

    :cond_34
    const/4 v5, 0x0

    :goto_18
    or-int/2addr v3, v5

    const v5, 0xe000

    and-int/2addr v5, v2

    xor-int/lit16 v5, v5, 0x6000

    const/16 v9, 0x4000

    if-le v5, v9, :cond_35

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v16

    if-nez v16, :cond_36

    goto :goto_19

    :cond_35
    const/4 v5, 0x0

    :goto_19
    and-int/lit16 v5, v2, 0x6000

    if-ne v5, v9, :cond_37

    :cond_36
    const/4 v5, 0x1

    goto :goto_1a

    :cond_37
    const/4 v5, 0x0

    :goto_1a
    or-int/2addr v3, v5

    const/high16 v5, 0x70000

    and-int/2addr v5, v2

    xor-int v5, v5, v19

    const/high16 v9, 0x20000

    if-le v5, v9, :cond_38

    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v16

    if-nez v16, :cond_39

    :cond_38
    and-int v5, v2, v19

    if-ne v5, v9, :cond_3a

    :cond_39
    const/4 v5, 0x1

    goto :goto_1b

    :cond_3a
    const/4 v5, 0x0

    :goto_1b
    or-int/2addr v3, v5

    and-int v5, v2, v29

    xor-int v5, v5, v18

    const/high16 v9, 0x100000

    if-le v5, v9, :cond_3b

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    :cond_3b
    and-int v5, v2, v18

    if-ne v5, v9, :cond_3d

    :cond_3c
    const/4 v5, 0x1

    goto :goto_1c

    :cond_3d
    const/4 v5, 0x0

    :goto_1c
    or-int/2addr v3, v5

    and-int v5, v2, v31

    xor-int v5, v5, v22

    const/high16 v9, 0x800000

    if-le v5, v9, :cond_3e

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    :cond_3e
    and-int v2, v2, v22

    if-ne v2, v9, :cond_40

    :cond_3f
    const/4 v2, 0x1

    goto :goto_1d

    :cond_40
    const/4 v2, 0x0

    :goto_1d
    or-int/2addr v2, v3

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_42

    if-ne v3, v14, :cond_41

    goto :goto_1e

    :cond_41
    move-object v2, v3

    move-object/from16 v37, v10

    move-object/from16 v11, v28

    const/4 v13, 0x0

    const/16 v21, 0x1

    move-object/from16 v3, p1

    goto :goto_1f

    :cond_42
    :goto_1e
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;

    move-object/from16 v3, p1

    move-object/from16 v37, v10

    move-object v10, v11

    move-object/from16 v5, v28

    move-object/from16 v9, v30

    move-object/from16 v11, v32

    const/4 v13, 0x0

    const/16 v21, 0x1

    invoke-direct/range {v2 .. v11}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;)V

    move-object v11, v5

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_1f
    move-object/from16 v16, v2

    check-cast v16, Lkotlin/jvm/functions/Function2;

    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-eqz v0, :cond_48

    const v2, -0x604146cc

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    xor-int/lit8 v2, v27, 0x6

    const/4 v5, 0x4

    if-le v2, v5, :cond_43

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    :cond_43
    and-int/lit8 v2, v26, 0x6

    if-ne v2, v5, :cond_45

    :cond_44
    move/from16 v10, v21

    goto :goto_20

    :cond_45
    move v10, v13

    :goto_20
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v10, :cond_46

    if-ne v2, v14, :cond_47

    :cond_46
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;

    invoke-direct {v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_47
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;

    iget-object v5, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    invoke-static {v2, v5, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/room/ObservedTableVersions;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_21

    :cond_48
    const v2, -0x603cc580

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    :goto_21
    iget-object v5, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurementModifier:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    invoke-interface {v1, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-object v6, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-interface {v5, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move-object/from16 v10, v37

    invoke-static {v5, v11, v10, v4, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;Z)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v5, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v5, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    invoke-interface {v2, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v7, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    move v5, v0

    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/ImageKt;->scrollingContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v8, v3

    iget-object v4, v8, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/4 v7, 0x0

    move-object v3, v0

    move-object v2, v11

    move-object v6, v12

    move-object/from16 v5, v16

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_22

    :cond_49
    move-object v8, v3

    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_22
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_4a

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v11, p11

    move/from16 v12, p12

    move-object v2, v8

    move-object v10, v15

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4a
    return-void
.end method

.method public static hasBuiltinSpecialPropertyFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z
    .locals 2

    const-string v0, "callableMemberDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinSpecialProperties;->SPECIAL_SHORT_NAMES:Ljava/util/Set;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinSpecialProperties;->SPECIAL_FQ_NAMES:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->fqNameOrNull(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorNonRoot;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isBuiltIn(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "getOverriddenDescriptors(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->hasBuiltinSpecialPropertyFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
