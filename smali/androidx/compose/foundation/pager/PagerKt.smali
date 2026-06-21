.class public abstract Landroidx/compose/foundation/pager/PagerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final HorizontalPager--8jOkeI(FIIILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Z)V
    .locals 34

    move/from16 v15, p2

    move/from16 v0, p3

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    const v3, -0x51d5e744

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_2

    or-int/lit8 v3, v3, 0x30

    :cond_1
    move-object/from16 v7, p13

    goto :goto_2

    :cond_2
    and-int/lit8 v7, v15, 0x30

    if-nez v7, :cond_1

    move-object/from16 v7, p13

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x20

    goto :goto_1

    :cond_3
    const/16 v8, 0x10

    :goto_1
    or-int/2addr v3, v8

    :goto_2
    or-int/lit16 v8, v3, 0xd80

    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_5

    or-int/lit16 v8, v3, 0x6d80

    :cond_4
    move/from16 v3, p1

    goto :goto_4

    :cond_5
    and-int/lit16 v3, v15, 0x6000

    if-nez v3, :cond_4

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x4000

    goto :goto_3

    :cond_6
    const/16 v10, 0x2000

    :goto_3
    or-int/2addr v8, v10

    :goto_4
    const/high16 v10, 0x5b0000

    or-int/2addr v10, v8

    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_7

    const/high16 v10, 0x65b0000

    or-int/2addr v8, v10

    move v10, v8

    move/from16 v8, p16

    goto :goto_6

    :cond_7
    move/from16 v8, p16

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_8

    const/high16 v12, 0x4000000

    goto :goto_5

    :cond_8
    const/high16 v12, 0x2000000

    :goto_5
    or-int/2addr v10, v12

    :goto_6
    const/high16 v12, 0x30000000

    or-int/2addr v10, v12

    and-int/lit16 v13, v0, 0x400

    const/16 v14, 0x6000

    if-eqz v13, :cond_9

    const/16 v16, 0x6006

    move/from16 v17, v12

    move-object/from16 v12, p15

    :goto_7
    move/from16 v14, v16

    goto :goto_9

    :cond_9
    move/from16 v17, v12

    move-object/from16 v12, p15

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x4

    goto :goto_8

    :cond_a
    const/16 v16, 0x2

    :goto_8
    or-int v16, v14, v16

    goto :goto_7

    :goto_9
    or-int/lit16 v14, v14, 0x590

    const v16, 0x12492493

    and-int v4, v10, v16

    const v5, 0x12492492

    const/4 v0, 0x1

    if-ne v4, v5, :cond_c

    and-int/lit16 v4, v14, 0x2493

    const/16 v5, 0x2492

    if-eq v4, v5, :cond_b

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    move v4, v0

    :goto_b
    and-int/lit8 v5, v10, 0x1

    invoke-virtual {v2, v5, v4}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v4, v15, 0x1

    const v5, -0x1c00001

    if-eqz v4, :cond_e

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_c

    :cond_d
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int v0, v10, v5

    and-int/lit16 v4, v14, -0x1c71

    move/from16 v16, v17

    move/from16 v17, v3

    move/from16 v3, v16

    move/from16 v16, p0

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    move-object/from16 v24, p8

    move-object/from16 v28, p12

    move-object/from16 v30, p14

    move-object/from16 v29, v7

    move/from16 v32, v8

    move-object/from16 v31, v12

    goto/16 :goto_13

    :cond_e
    :goto_c
    if-eqz v6, :cond_f

    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    :goto_d
    const/4 v6, 0x0

    goto :goto_e

    :cond_f
    move-object v4, v7

    goto :goto_d

    :goto_e
    int-to-float v7, v6

    move/from16 v20, v5

    new-instance v5, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v5, v7, v7, v7, v7}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    if-eqz v9, :cond_10

    move v3, v6

    :cond_10
    int-to-float v7, v6

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    and-int/lit8 v21, v10, 0xe

    const/high16 v22, 0x30000

    or-int v21, v21, v22

    new-instance v6, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move/from16 p0, v3

    invoke-static {v2}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    move-result-object v3

    sget-object v23, Landroidx/compose/animation/core/VisibilityThresholdsKt;->VisibilityThresholdMap:Ljava/lang/Object;

    move-object/from16 p4, v4

    int-to-float v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 p5, v5

    const/high16 v5, 0x43c80000    # 400.0f

    invoke-static {v5, v0, v4}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/unit/Density;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    and-int/lit8 v24, v21, 0xe

    move/from16 v25, v7

    xor-int/lit8 v7, v24, 0x6

    const/4 v8, 0x4

    if-le v7, v8, :cond_11

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    :cond_11
    and-int/lit8 v7, v21, 0x6

    if-ne v7, v8, :cond_13

    :cond_12
    const/4 v7, 0x1

    goto :goto_f

    :cond_13
    const/4 v7, 0x0

    :goto_f
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v5, v7

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v5, :cond_14

    if-ne v7, v8, :cond_15

    :cond_14
    new-instance v5, Landroidx/compose/foundation/IndicationKt$indication$2;

    const/4 v7, 0x3

    invoke-direct {v5, v7, v1, v0}, Landroidx/compose/foundation/IndicationKt$indication$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/4 v7, 0x2

    invoke-direct {v0, v1, v5, v6, v7}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    sget v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->MinFlingVelocityDp:F

    new-instance v7, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    invoke-direct {v7, v0, v3, v4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;-><init>(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroidx/compose/animation/core/DecayAnimationSpecImpl;Landroidx/compose/animation/core/SpringSpec;)V

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    move-object v0, v7

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    and-int v3, v10, v20

    if-eqz v11, :cond_16

    const/4 v4, 0x1

    goto :goto_10

    :cond_16
    move/from16 v4, p16

    :goto_10
    if-eqz v13, :cond_17

    const/4 v5, 0x0

    goto :goto_11

    :cond_17
    move-object v5, v12

    :goto_11
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    and-int/lit8 v6, v10, 0xe

    or-int/lit16 v6, v6, 0x1b0

    and-int/lit8 v7, v6, 0xe

    xor-int/lit8 v7, v7, 0x6

    const/4 v10, 0x4

    if-le v7, v10, :cond_18

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    :cond_18
    and-int/lit8 v6, v6, 0x6

    if-ne v6, v10, :cond_1a

    :cond_19
    const/16 v22, 0x1

    goto :goto_12

    :cond_1a
    const/16 v22, 0x0

    :goto_12
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v22, :cond_1b

    if-ne v6, v8, :cond_1c

    :cond_1b
    new-instance v6, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;

    invoke-direct {v6, v1}, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1c
    check-cast v6, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;

    invoke-static {v2}, Landroidx/compose/foundation/OverscrollKt;->rememberOverscrollEffect(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    move-result-object v7

    and-int/lit16 v8, v14, -0x1c71

    sget-object v10, Landroidx/compose/foundation/pager/PageSize$Fill;->INSTANCE:Landroidx/compose/foundation/pager/PageSize$Fill;

    sget-object v11, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->INSTANCE:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    move-object/from16 v29, p4

    move-object/from16 v23, p5

    move-object/from16 v21, v0

    move v0, v3

    move/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v20, v7

    move v4, v8

    move-object/from16 v28, v9

    move-object/from16 v24, v10

    move-object/from16 v22, v11

    move/from16 v3, v17

    move/from16 v16, v25

    move/from16 v17, p0

    :goto_13
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    shr-int/lit8 v5, v0, 0x3

    and-int/lit8 v5, v5, 0xe

    const/16 v6, 0x6000

    or-int/2addr v5, v6

    shl-int/lit8 v6, v0, 0x3

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v5, v6

    or-int/lit16 v5, v5, 0xd80

    shr-int/lit8 v6, v0, 0x6

    const/high16 v7, 0x380000

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    shl-int/lit8 v0, v0, 0xc

    const/high16 v6, 0xe000000

    and-int/2addr v0, v6

    or-int/2addr v0, v5

    or-int v18, v0, v3

    shl-int/lit8 v0, v4, 0x6

    and-int/lit16 v0, v0, 0x380

    const v3, 0x1b6c06

    or-int v19, v0, v3

    move-object/from16 v27, p11

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    invoke-static/range {v16 .. v32}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->Pager-eLwUrMk(FIIILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Z)V

    move/from16 v6, v16

    move/from16 v5, v17

    move-object/from16 v13, v20

    move-object/from16 v8, v21

    move-object/from16 v12, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move-object/from16 v7, v28

    move-object/from16 v2, v29

    move-object/from16 v11, v30

    move-object/from16 v10, v31

    move/from16 v9, v32

    goto :goto_14

    :cond_1d
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v6, p0

    move-object/from16 v13, p4

    move-object/from16 v8, p5

    move-object/from16 v4, p8

    move-object/from16 v11, p14

    move/from16 v9, p16

    move v5, v3

    move-object v2, v7

    move-object v10, v12

    move-object/from16 v12, p6

    move-object/from16 v3, p7

    move-object/from16 v7, p12

    :goto_14
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_1e

    move-object v1, v0

    new-instance v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;

    move/from16 v16, p3

    move-object/from16 v14, p11

    move-object/from16 v33, v1

    move-object/from16 v1, p9

    invoke-direct/range {v0 .. v16}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/pager/PageSize$Fill;IFLandroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    move-object/from16 v1, v33

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method

.method public static final getJvmMethodNameIfSpecial(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isBuiltIn(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerKt;->getOverriddenBuiltinWithDifferentJvmName(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_4

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getPropertyIfAccessor(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isBuiltIn(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getPropertyIfAccessor(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;->INSTANCE$3:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->firstOverridden$default(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinSpecialProperties;->PROPERTY_FQ_NAME_TO_JVM_GETTER_NAME_MAP:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/name/Name;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    if-eqz v0, :cond_4

    sget v0, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithDifferentJvmName;->$r8$clinit:I

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures;->SIGNATURE_TO_JVM_REPRESENTATION_NAME:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Landroidx/compose/runtime/collection/ScopeMap;->computeJvmSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    move-object p0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/name/Name;

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public static final getOverriddenBuiltinWithDifferentJvmName(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures;->ORIGINAL_SHORT_NAMES:Ljava/util/HashSet;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinSpecialProperties;->SPECIAL_SHORT_NAMES:Ljava/util/Set;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getPropertyIfAccessor(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    if-nez v0, :cond_3

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    if-eqz v0, :cond_2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;->INSTANCE$5:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->firstOverridden$default(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->firstOverridden$default(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static final getOverriddenSpecialBuiltin(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerKt;->getOverriddenBuiltinWithDifferentJvmName(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget v0, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;->$r8$clinit:I

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;->getSameAsBuiltinMethodWithErasedValueParameters(Lkotlin/reflect/jvm/internal/impl/name/Name;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;->INSTANCE$6:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->firstOverridden$default(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static final hasRealKotlinSuperClassWithOverrideOf(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "specialCallableDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    const-string v0, "getDefaultType(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getSuperClassDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_f

    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassDescriptor;

    if-nez v1, :cond_e

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;

    iget-object v7, v5, Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v8

    if-eqz v8, :cond_b

    if-eqz v1, :cond_a

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v4

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;->previous:Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;

    :goto_1
    if-eqz v5, :cond_6

    iget-object v8, v5, Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v9

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v11

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eq v11, v12, :cond_2

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v9

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->create(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->wrapWithCapturingSubstitution$default(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object v9

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-direct {v10, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)V

    invoke-virtual {v10, v7, v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->safeSubstitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->approximateCapturedTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    move-result-object v7

    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->upper:Ljava/lang/Object;

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v9

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->create(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object v9

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-direct {v10, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)V

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v10, v7, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->safeSubstitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    :goto_3
    if-nez v4, :cond_5

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    move v4, v0

    goto :goto_5

    :cond_5
    :goto_4
    move v4, v3

    :goto_5
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;->previous:Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;

    goto :goto_1

    :cond_6
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v7, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableAsSpecified(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v6

    goto :goto_7

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Type constructors should be equals!\nsubstitutedSuperType: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->debugInfo(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \n\nsupertype: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->debugInfo(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_8
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->$$$reportNull$$$0(I)V

    throw v6

    :cond_9
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v9, v8, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    const/4 p0, 0x4

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->$$$reportNull$$$0(I)V

    throw v6

    :cond_b
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->$$$reportNull$$$0(I)V

    throw v6

    :cond_c
    :goto_7
    if-eqz v6, :cond_e

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isBuiltIn(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_d
    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo p1, "subtype"

    aput-object p1, p0, v0

    const-string p1, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure"

    aput-object p1, p0, v3

    const-string p1, "findCorrespondingSupertype"

    const/4 v0, 0x2

    aput-object p1, p0, v0

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getSuperClassDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    goto/16 :goto_0

    :cond_f
    return v0
.end method
