.class public abstract Landroidx/compose/foundation/pager/LazyLayoutPagerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final Pager-eLwUrMk(FIIILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Z)V
    .locals 43

    move/from16 v3, p0

    move/from16 v7, p1

    move/from16 v15, p2

    move/from16 v11, p3

    move-object/from16 v12, p5

    move-object/from16 v2, p7

    move-object/from16 v4, p8

    move-object/from16 v1, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p13

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    move/from16 v8, p16

    sget-object v10, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const v0, 0x43111c3a    # 145.11026f

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v15, 0x6

    move/from16 v16, v0

    if-nez v16, :cond_1

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x4

    goto :goto_0

    :cond_0
    const/16 v16, 0x2

    :goto_0
    or-int v16, v15, v16

    goto :goto_1

    :cond_1
    move/from16 v16, v15

    :goto_1
    and-int/lit8 v18, v15, 0x30

    const/16 v19, 0x10

    if-nez v18, :cond_3

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x20

    goto :goto_2

    :cond_2
    move/from16 v18, v19

    :goto_2
    or-int v16, v16, v18

    :cond_3
    and-int/lit16 v0, v15, 0x180

    const/16 v20, 0x80

    move/from16 v21, v0

    if-nez v21, :cond_5

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    const/16 v21, 0x100

    goto :goto_3

    :cond_4
    move/from16 v21, v20

    :goto_3
    or-int v16, v16, v21

    :cond_5
    and-int/lit16 v0, v15, 0xc00

    const/4 v14, 0x0

    const/16 v22, 0x400

    move/from16 v23, v0

    if-nez v23, :cond_7

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_6

    const/16 v23, 0x800

    goto :goto_4

    :cond_6
    move/from16 v23, v22

    :goto_4
    or-int v16, v16, v23

    :cond_7
    and-int/lit16 v14, v15, 0x6000

    const/16 v24, 0x2000

    if-nez v14, :cond_9

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x4000

    goto :goto_5

    :cond_8
    move/from16 v14, v24

    :goto_5
    or-int v16, v16, v14

    :cond_9
    const/high16 v14, 0x30000

    and-int v25, v15, v14

    const/high16 v26, 0x10000

    move/from16 v27, v14

    if-nez v25, :cond_b

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    const/high16 v25, 0x20000

    goto :goto_6

    :cond_a
    move/from16 v25, v26

    :goto_6
    or-int v16, v16, v25

    :cond_b
    const/high16 v25, 0x180000

    and-int v28, v15, v25

    const/high16 v29, 0x80000

    if-nez v28, :cond_d

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_c

    const/high16 v28, 0x100000

    goto :goto_7

    :cond_c
    move/from16 v28, v29

    :goto_7
    or-int v16, v16, v28

    :cond_d
    const/high16 v28, 0xc00000

    and-int v30, v15, v28

    move-object/from16 v14, p4

    if-nez v30, :cond_f

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    const/high16 v31, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v31, 0x400000

    :goto_8
    or-int v16, v16, v31

    :cond_f
    const/high16 v31, 0x6000000

    and-int v32, v15, v31

    if-nez v32, :cond_11

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_10

    const/high16 v32, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v32, 0x2000000

    :goto_9
    or-int v16, v16, v32

    :cond_11
    const/high16 v32, 0x30000000

    and-int v33, v15, v32

    if-nez v33, :cond_13

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v33

    if-eqz v33, :cond_12

    const/high16 v33, 0x20000000

    goto :goto_a

    :cond_12
    const/high16 v33, 0x10000000

    :goto_a
    or-int v16, v16, v33

    :cond_13
    and-int/lit8 v33, v11, 0x6

    if-nez v33, :cond_15

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_14

    const/16 v33, 0x4

    goto :goto_b

    :cond_14
    const/16 v33, 0x2

    :goto_b
    or-int v33, v11, v33

    goto :goto_c

    :cond_15
    move/from16 v33, v11

    :goto_c
    and-int/lit8 v34, v11, 0x30

    if-nez v34, :cond_17

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_16

    const/16 v19, 0x20

    :cond_16
    or-int v33, v33, v19

    :cond_17
    and-int/lit16 v0, v11, 0x180

    if-nez v0, :cond_19

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v20, 0x100

    :cond_18
    or-int v33, v33, v20

    :cond_19
    and-int/lit16 v0, v11, 0xc00

    if-nez v0, :cond_1b

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v22, 0x800

    :cond_1a
    or-int v33, v33, v22

    :cond_1b
    and-int/lit16 v0, v11, 0x6000

    if-nez v0, :cond_1d

    move-object/from16 v0, p12

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c

    const/16 v24, 0x4000

    :cond_1c
    or-int v33, v33, v24

    goto :goto_d

    :cond_1d
    move-object/from16 v0, p12

    :goto_d
    and-int v20, v11, v27

    move-object/from16 v5, p6

    if-nez v20, :cond_1f

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    const/high16 v26, 0x20000

    :cond_1e
    or-int v33, v33, v26

    :cond_1f
    and-int v20, v11, v25

    if-nez v20, :cond_21

    invoke-virtual/range {p10 .. p11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20

    const/high16 v29, 0x100000

    :cond_20
    or-int v33, v33, v29

    :cond_21
    move/from16 v8, v33

    const v20, 0x12492493

    and-int v11, v16, v20

    const v14, 0x12492492

    if-ne v11, v14, :cond_23

    const v11, 0x92493

    and-int/2addr v11, v8

    const v14, 0x92492

    if-eq v11, v14, :cond_22

    goto :goto_e

    :cond_22
    const/4 v11, 0x0

    goto :goto_f

    :cond_23
    :goto_e
    const/4 v11, 0x1

    :goto_f
    and-int/lit8 v14, v16, 0x1

    invoke-virtual {v13, v14, v11}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v11

    if-eqz v11, :cond_67

    if-ltz v7, :cond_24

    goto :goto_10

    :cond_24
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "beyondViewportPageCount should be greater than or equal to 0, you selected "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_10
    and-int/lit8 v11, v16, 0x70

    const/16 v14, 0x20

    if-ne v11, v14, :cond_25

    const/4 v14, 0x1

    goto :goto_11

    :cond_25
    const/4 v14, 0x0

    :goto_11
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    move/from16 v22, v14

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v22, :cond_26

    if-ne v15, v14, :cond_27

    :cond_26
    new-instance v15, Landroidx/compose/foundation/pager/PagerState$targetPage$2;

    const/4 v12, 0x2

    invoke-direct {v15, v1, v12}, Landroidx/compose/foundation/pager/PagerState$targetPage$2;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_27
    check-cast v15, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v12, v16, 0x3

    and-int/lit8 v17, v12, 0xe

    shr-int/lit8 v22, v8, 0xf

    and-int/lit8 v24, v22, 0x70

    or-int v24, v17, v24

    move/from16 v26, v12

    and-int/lit16 v12, v8, 0x380

    or-int v12, v24, v12

    move/from16 v29, v8

    move/from16 v24, v12

    move-object/from16 v12, p11

    invoke-static {v12, v13}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-static {v6, v13}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    and-int/lit8 v33, v24, 0xe

    const/16 v34, 0x6

    xor-int/lit8 v6, v33, 0x6

    const/4 v7, 0x4

    if-le v6, v7, :cond_28

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    :cond_28
    and-int/lit8 v6, v24, 0x6

    if-ne v6, v7, :cond_2a

    :cond_29
    const/4 v6, 0x1

    goto :goto_12

    :cond_2a
    const/4 v6, 0x0

    :goto_12
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    move/from16 v24, v6

    const/4 v6, 0x3

    if-nez v24, :cond_2b

    if-ne v7, v14, :cond_2c

    :cond_2b
    sget-object v7, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$1:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance v5, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;

    invoke-direct {v5, v8, v12, v15, v6}, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v7, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v5

    new-instance v8, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    move/from16 v12, v34

    invoke-direct {v8, v12, v5, v1}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v39

    new-instance v35, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    const/16 v36, 0x0

    const/16 v37, 0x3

    const-class v38, Landroidx/compose/runtime/State;

    const-string/jumbo v40, "value"

    const-string v41, "getValue()Ljava/lang/Object;"

    invoke-direct/range {v35 .. v41}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v35

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2c
    move-object v5, v7

    check-cast v5, Lkotlin/reflect/KProperty0;

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v14, :cond_2d

    invoke-static {v13}, Landroidx/compose/runtime/AnchoredGroupPath;->createCompositionCoroutineScope(Landroidx/compose/runtime/ComposerImpl;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2d
    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    const/16 v8, 0x20

    if-ne v11, v8, :cond_2e

    const/4 v8, 0x1

    goto :goto_13

    :cond_2e
    const/4 v8, 0x0

    :goto_13
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_2f

    if-ne v12, v14, :cond_30

    :cond_2f
    new-instance v12, Landroidx/compose/foundation/pager/PagerState$targetPage$2;

    const/4 v8, 0x1

    invoke-direct {v12, v1, v8}, Landroidx/compose/foundation/pager/PagerState$targetPage$2;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_30
    check-cast v12, Lkotlin/jvm/functions/Function0;

    const v8, 0xfff0

    and-int v8, v16, v8

    shr-int/lit8 v15, v16, 0x9

    const/high16 v24, 0x70000

    and-int v33, v15, v24

    or-int v8, v8, v33

    const/high16 v33, 0x380000

    and-int v15, v15, v33

    or-int/2addr v8, v15

    shl-int/lit8 v15, v29, 0x15

    const/high16 v35, 0x1c00000

    and-int v15, v15, v35

    or-int/2addr v8, v15

    shl-int/lit8 v15, v29, 0xf

    const/high16 v29, 0xe000000

    and-int v36, v15, v29

    or-int v8, v8, v36

    const/high16 v36, 0x70000000

    and-int v15, v15, v36

    or-int/2addr v8, v15

    and-int/lit8 v15, v8, 0x70

    xor-int/lit8 v15, v15, 0x30

    const/16 v6, 0x20

    if-le v15, v6, :cond_31

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_32

    :cond_31
    and-int/lit8 v15, v8, 0x30

    if-ne v15, v6, :cond_33

    :cond_32
    const/4 v15, 0x1

    goto :goto_14

    :cond_33
    const/4 v15, 0x0

    :goto_14
    and-int/lit16 v6, v8, 0x380

    xor-int/lit16 v6, v6, 0x180

    const/16 v1, 0x100

    if-le v6, v1, :cond_34

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    :cond_34
    and-int/lit16 v6, v8, 0x180

    if-ne v6, v1, :cond_36

    :cond_35
    const/4 v1, 0x1

    goto :goto_15

    :cond_36
    const/4 v1, 0x0

    :goto_15
    or-int/2addr v1, v15

    and-int/lit16 v6, v8, 0x1c00

    xor-int/lit16 v6, v6, 0xc00

    const/16 v15, 0x800

    if-le v6, v15, :cond_37

    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v21

    if-nez v21, :cond_38

    :cond_37
    and-int/lit16 v6, v8, 0xc00

    if-ne v6, v15, :cond_39

    :cond_38
    const/4 v6, 0x1

    goto :goto_16

    :cond_39
    const/4 v6, 0x0

    :goto_16
    or-int/2addr v1, v6

    const v6, 0xe000

    and-int/2addr v6, v8

    xor-int/lit16 v6, v6, 0x6000

    const/16 v15, 0x4000

    if-le v6, v15, :cond_3a

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    :cond_3a
    and-int/lit16 v6, v8, 0x6000

    if-ne v6, v15, :cond_3c

    :cond_3b
    const/4 v6, 0x1

    goto :goto_17

    :cond_3c
    const/4 v6, 0x0

    :goto_17
    or-int/2addr v1, v6

    and-int v6, v8, v29

    xor-int v6, v6, v31

    const/high16 v15, 0x4000000

    if-le v6, v15, :cond_3d

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    :cond_3d
    and-int v6, v8, v31

    if-ne v6, v15, :cond_3f

    :cond_3e
    const/4 v6, 0x1

    goto :goto_18

    :cond_3f
    const/4 v6, 0x0

    :goto_18
    or-int/2addr v1, v6

    and-int v6, v8, v36

    xor-int v6, v6, v32

    const/high16 v9, 0x20000000

    if-le v6, v9, :cond_40

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    :cond_40
    and-int v6, v8, v32

    if-ne v6, v9, :cond_42

    :cond_41
    const/4 v6, 0x1

    goto :goto_19

    :cond_42
    const/4 v6, 0x0

    :goto_19
    or-int/2addr v1, v6

    and-int v6, v8, v33

    xor-int v6, v6, v25

    const/high16 v9, 0x100000

    if-le v6, v9, :cond_43

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v6

    if-nez v6, :cond_44

    :cond_43
    and-int v6, v8, v25

    if-ne v6, v9, :cond_45

    :cond_44
    const/4 v6, 0x1

    goto :goto_1a

    :cond_45
    const/4 v6, 0x0

    :goto_1a
    or-int/2addr v1, v6

    and-int v6, v8, v35

    xor-int v6, v6, v28

    const/high16 v9, 0x800000

    if-le v6, v9, :cond_46

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    :cond_46
    and-int v6, v8, v28

    if-ne v6, v9, :cond_48

    :cond_47
    const/4 v6, 0x1

    goto :goto_1b

    :cond_48
    const/4 v6, 0x0

    :goto_1b
    or-int/2addr v1, v6

    and-int/lit8 v6, v22, 0xe

    const/16 v34, 0x6

    xor-int/lit8 v6, v6, 0x6

    const/4 v9, 0x4

    if-le v6, v9, :cond_49

    move-object/from16 v6, p6

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4a

    goto :goto_1c

    :cond_49
    move-object/from16 v6, p6

    :goto_1c
    and-int/lit8 v15, v22, 0x6

    if-ne v15, v9, :cond_4b

    :cond_4a
    const/4 v15, 0x1

    goto :goto_1d

    :cond_4b
    const/4 v15, 0x0

    :goto_1d
    or-int/2addr v1, v15

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v1, v15

    and-int v15, v8, v24

    xor-int v15, v15, v27

    const/high16 v9, 0x20000

    if-le v15, v9, :cond_4c

    move/from16 v15, p1

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v19

    if-nez v19, :cond_4d

    goto :goto_1e

    :cond_4c
    move/from16 v15, p1

    :goto_1e
    and-int v8, v8, v27

    if-ne v8, v9, :cond_4e

    :cond_4d
    const/4 v8, 0x1

    goto :goto_1f

    :cond_4e
    const/4 v8, 0x0

    :goto_1f
    or-int/2addr v1, v8

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_50

    if-ne v8, v14, :cond_4f

    goto :goto_20

    :cond_4f
    move-object/from16 v1, p9

    move-object v12, v10

    move v9, v15

    const/4 v15, 0x4

    move-object v10, v5

    goto :goto_21

    :cond_50
    :goto_20
    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;

    move-object/from16 v1, p9

    move-object v9, v6

    move-object v6, v12

    move v8, v15

    const/4 v15, 0x4

    move-object v12, v10

    move-object v10, v7

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValuesImpl;FLandroidx/compose/foundation/pager/PageSize$Fill;Lkotlin/reflect/KProperty0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/BiasAlignment$Vertical;ILandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Lkotlinx/coroutines/CoroutineScope;)V

    move v9, v8

    move-object v7, v10

    move-object v10, v5

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v8, v0

    :goto_21
    move-object/from16 v18, v8

    check-cast v18, Lkotlin/jvm/functions/Function2;

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    xor-int/lit8 v0, v17, 0x6

    if-le v0, v15, :cond_51

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    :cond_51
    and-int/lit8 v0, v26, 0x6

    if-ne v0, v15, :cond_53

    :cond_52
    const/16 v23, 0x1

    :goto_22
    const/4 v6, 0x0

    goto :goto_23

    :cond_53
    const/16 v23, 0x0

    goto :goto_22

    :goto_23
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v0

    or-int v0, v23, v0

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_55

    if-ne v2, v14, :cond_54

    goto :goto_24

    :cond_54
    const/4 v8, 0x1

    goto :goto_25

    :cond_55
    :goto_24
    new-instance v2, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;

    const/4 v8, 0x1

    invoke-direct {v2, v1, v6, v8}, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;ZI)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_25
    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    const/16 v6, 0x20

    if-ne v11, v6, :cond_56

    move v0, v8

    goto :goto_26

    :cond_56
    const/4 v0, 0x0

    :goto_26
    and-int v3, v16, v24

    const/high16 v4, 0x20000

    if-ne v3, v4, :cond_57

    move v3, v8

    goto :goto_27

    :cond_57
    const/4 v3, 0x0

    :goto_27
    or-int/2addr v0, v3

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_59

    if-ne v3, v14, :cond_58

    goto :goto_28

    :cond_58
    move-object/from16 v0, p5

    goto :goto_29

    :cond_59
    :goto_28
    new-instance v3, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    move-object/from16 v0, p5

    invoke-direct {v3, v0, v1}, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/pager/PagerState;)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_29
    move-object v4, v3

    check-cast v4, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    sget-object v3, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->LocalBringIntoViewSpec:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    if-ne v11, v6, :cond_5a

    move v5, v8

    goto :goto_2a

    :cond_5a
    const/4 v5, 0x0

    :goto_2a
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v5, v11

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v5, :cond_5b

    if-ne v11, v14, :cond_5c

    :cond_5b
    new-instance v11, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;

    invoke-direct {v11, v1, v3}, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5c
    check-cast v11, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz p16, :cond_65

    const v5, 0x735b3d0d

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    shr-int/lit8 v5, v16, 0x15

    and-int/lit8 v5, v5, 0x70

    or-int v5, v17, v5

    and-int/lit8 v16, v5, 0xe

    xor-int/lit8 v8, v16, 0x6

    if-le v8, v15, :cond_5d

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5e

    :cond_5d
    and-int/lit8 v8, v5, 0x6

    if-ne v8, v15, :cond_5f

    :cond_5e
    const/4 v8, 0x1

    goto :goto_2b

    :cond_5f
    const/4 v8, 0x0

    :goto_2b
    and-int/lit8 v15, v5, 0x70

    xor-int/lit8 v15, v15, 0x30

    if-le v15, v6, :cond_60

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v15

    if-nez v15, :cond_61

    :cond_60
    and-int/lit8 v5, v5, 0x30

    if-ne v5, v6, :cond_62

    :cond_61
    const/4 v15, 0x1

    goto :goto_2c

    :cond_62
    const/4 v15, 0x0

    :goto_2c
    or-int v5, v8, v15

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_63

    if-ne v6, v14, :cond_64

    :cond_63
    new-instance v6, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;

    invoke-direct {v6, v1, v9}, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_64
    check-cast v6, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;

    iget-object v5, v1, Landroidx/compose/foundation/pager/PagerState;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    invoke-static {v6, v5, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/room/ObservedTableVersions;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2d

    :cond_65
    const/4 v6, 0x0

    const v5, 0x7361c824

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v5, v3

    :goto_2d
    iget-object v8, v1, Landroidx/compose/foundation/pager/PagerState;->remeasurementModifier:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    move-object/from16 v14, p13

    invoke-interface {v14, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    iget-object v15, v1, Landroidx/compose/foundation/pager/PagerState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-interface {v8, v15}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    move/from16 v15, p16

    invoke-static {v8, v10, v2, v12, v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;Z)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v15, :cond_66

    new-instance v8, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;

    invoke-direct {v8, v6, v1, v7}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;-><init>(ZLandroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-static {v3, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-interface {v2, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_2e

    :cond_66
    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :goto_2e
    invoke-interface {v2, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v5, v1, Landroidx/compose/foundation/pager/PagerState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/4 v6, 0x0

    move-object/from16 v7, p4

    move-object v0, v2

    move-object v8, v11

    move-object v2, v12

    move-object v11, v3

    move v3, v15

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/ImageKt;->scrollingContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v6, v1

    new-instance v1, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v6}, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;-><init>(ILjava/lang/Object;)V

    invoke-static {v11, v6, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 v7, p14

    invoke-static {v0, v7, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v6, Landroidx/compose/foundation/pager/PagerState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/4 v5, 0x0

    move-object v0, v10

    move-object v4, v13

    move-object/from16 v3, v18

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_2f

    :cond_67
    move-object/from16 v14, p13

    move-object v6, v1

    move v9, v7

    move-object/from16 v7, p14

    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_2f
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_68

    move-object v1, v0

    new-instance v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;

    move/from16 v8, p0

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v4, p5

    move-object/from16 v13, p6

    move-object/from16 v3, p7

    move-object/from16 v12, p12

    move-object/from16 v11, p15

    move/from16 v5, p16

    move-object/from16 v42, v1

    move-object v2, v6

    move-object v10, v7

    move v7, v9

    move-object v1, v14

    move-object/from16 v6, p4

    move-object/from16 v9, p8

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v16}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    move-object/from16 v1, v42

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_68
    return-void
.end method

.method public static propertyNameFromAccessorMethodName$default(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/jvm/internal/impl/name/Name;
    .locals 6

    and-int/lit8 v0, p3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 p3, p3, 0x8

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    move-object p2, v3

    :cond_1
    iget-boolean p3, p0, Lkotlin/reflect/jvm/internal/impl/name/Name;->special:Z

    if-eqz p3, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-gt v5, v4, :cond_5

    const/16 v5, 0x7b

    if-ge v4, v5, :cond_5

    goto/16 :goto_4

    :cond_5
    if-eqz p2, :cond_6

    invoke-static {p3, p1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    return-object p0

    :cond_6
    if-nez v0, :cond_7

    return-object p0

    :cond_7
    invoke-static {p3, p1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_3

    :cond_8
    invoke-static {v1, p0}, Landroidx/compose/ui/res/VectorResources_androidKt;->isUpperCaseCharAt(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string/jumbo p2, "substring(...)"

    if-eq p1, v2, :cond_e

    invoke-static {v2, p0}, Landroidx/compose/ui/res/VectorResources_androidKt;->isUpperCaseCharAt(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Lkotlin/ranges/IntRange;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-direct {p1, v1, p3, v2}, Lkotlin/ranges/IntProgression;-><init>(III)V

    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object p1

    :cond_b
    iget-boolean p3, p1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz p3, :cond_c

    invoke-virtual {p1}, Lkotlin/ranges/IntProgressionIterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0, p0}, Landroidx/compose/ui/res/VectorResources_androidKt;->isUpperCaseCharAt(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_c
    move-object p3, v3

    :goto_1
    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Landroidx/compose/ui/res/VectorResources_androidKt;->toLowerCaseAsciiOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_d
    invoke-static {p0}, Landroidx/compose/ui/res/VectorResources_androidKt;->toLowerCaseAsciiOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_e
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p3, 0x41

    if-gt p3, p1, :cond_10

    const/16 p3, 0x5b

    if-ge p1, p3, :cond_10

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_10
    :goto_3
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->isValidIdentifier(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    :goto_4
    return-object v3

    :cond_11
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    return-object p0
.end method
