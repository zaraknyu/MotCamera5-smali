.class public abstract Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final LazyVerticalGrid(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v6, p5

    move-object/from16 v10, p10

    const v0, -0x7b81c7d6

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    or-int v0, p11, v0

    move-object/from16 v4, p1

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v0, v5

    or-int/lit16 v0, v0, 0x6c80

    move-object/from16 v5, p4

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/high16 v7, 0x20000

    goto :goto_2

    :cond_2
    const/high16 v7, 0x10000

    :goto_2
    or-int/2addr v0, v7

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/high16 v7, 0x100000

    goto :goto_3

    :cond_3
    const/high16 v7, 0x80000

    :goto_3
    or-int/2addr v0, v7

    const/high16 v7, 0x10400000

    or-int/2addr v0, v7

    move-object/from16 v14, p9

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v15, v3

    goto :goto_4

    :cond_4
    move v15, v2

    :goto_4
    const v7, 0x12492493

    and-int/2addr v7, v0

    const v8, 0x12492492

    const/4 v9, 0x0

    const/16 v16, 0x1

    if-ne v7, v8, :cond_6

    and-int/lit8 v7, v15, 0x3

    if-eq v7, v2, :cond_5

    goto :goto_5

    :cond_5
    move v2, v9

    goto :goto_6

    :cond_6
    :goto_5
    move/from16 v2, v16

    :goto_6
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v10, v7, v2}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v2, p11, 0x1

    const v17, -0x71c00381

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v2, :cond_8

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int v0, v0, v17

    move-object/from16 v5, p3

    move-object/from16 v8, p6

    move-object/from16 v11, p8

    move-object v13, v7

    move v2, v9

    move-object/from16 v7, p2

    goto :goto_8

    :cond_8
    :goto_7
    sget-object v2, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->EmptyLazyGridLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    new-array v2, v9, [Ljava/lang/Object;

    sget-object v8, Landroidx/compose/foundation/lazy/grid/LazyGridState;->Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v11

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v12

    or-int/2addr v11, v12

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_9

    if-ne v12, v7, :cond_a

    :cond_9
    new-instance v12, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$rememberLazyGridState$1$1;

    invoke-direct {v12, v9}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x0

    move/from16 v18, v9

    move-object v9, v12

    const/4 v12, 0x4

    move-object v13, v7

    move-object v7, v2

    move/from16 v2, v18

    invoke-static/range {v7 .. v12}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    int-to-float v8, v2

    new-instance v9, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v9, v8, v8, v8, v8}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    invoke-static {v10}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_b

    if-ne v12, v13, :cond_c

    :cond_b
    new-instance v12, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-direct {v12, v8}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpecImpl;)V

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    move-object v8, v12

    check-cast v8, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-static {v10}, Landroidx/compose/foundation/OverscrollKt;->rememberOverscrollEffect(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    move-result-object v11

    and-int v0, v0, v17

    move-object v5, v9

    :goto_8
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    and-int/lit8 v9, v0, 0xe

    shr-int/lit8 v12, v0, 0xf

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v9, v12

    and-int/lit8 v12, v9, 0xe

    xor-int/lit8 v12, v12, 0x6

    if-le v12, v3, :cond_d

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    :cond_d
    and-int/lit8 v12, v9, 0x6

    if-ne v12, v3, :cond_f

    :cond_e
    move/from16 v3, v16

    goto :goto_9

    :cond_f
    move v3, v2

    :goto_9
    and-int/lit8 v12, v9, 0x70

    xor-int/lit8 v12, v12, 0x30

    const/16 v2, 0x20

    if-le v12, v2, :cond_10

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    :cond_10
    and-int/lit8 v9, v9, 0x30

    if-ne v9, v2, :cond_12

    :cond_11
    move/from16 v9, v16

    goto :goto_a

    :cond_12
    const/4 v9, 0x0

    :goto_a
    or-int v2, v3, v9

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_13

    if-ne v3, v13, :cond_14

    :cond_13
    new-instance v3, Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    new-instance v2, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    invoke-direct {v2, v1, v6}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/foundation/layout/Arrangement$Horizontal;)V

    invoke-direct {v3, v2}, Landroidx/compose/foundation/lazy/grid/GridSlotCache;-><init>(Landroidx/compose/animation/core/InfiniteTransition$run$2;)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_14
    check-cast v3, Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    shr-int/lit8 v2, v0, 0x3

    and-int/lit8 v2, v2, 0xe

    const v9, 0xc36c00

    or-int/2addr v2, v9

    shl-int/lit8 v9, v0, 0xc

    const/high16 v12, 0x70000000

    and-int/2addr v9, v12

    or-int v13, v2, v9

    shr-int/lit8 v0, v0, 0x12

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v2, v15, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v0, v2

    move-object/from16 v9, p4

    move-object v2, v4

    move-object v12, v10

    move-object v4, v3

    move-object v10, v6

    move-object v3, v7

    move-object v6, v8

    move-object v8, v11

    move-object v11, v14

    move/from16 v7, p7

    move v14, v0

    invoke-static/range {v2 .. v14}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;II)V

    move-object v4, v5

    move-object v7, v6

    move-object v9, v8

    goto :goto_b

    :cond_15
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    :goto_b
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_16

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyVerticalGrid$1;

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyVerticalGrid$1;-><init>(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final access$child(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    return-object p0
.end method
