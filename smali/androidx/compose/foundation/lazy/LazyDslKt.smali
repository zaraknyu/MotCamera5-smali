.class public abstract Landroidx/compose/foundation/lazy/LazyDslKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static zza:Lcom/google/android/gms/internal/mlkit_common/zzsr;


# direct methods
.method public static final LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 16

    move-object/from16 v12, p9

    const v0, 0x3335543

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p10, v1

    or-int/lit16 v1, v1, 0xd90

    move-object/from16 v5, p3

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4000

    goto :goto_1

    :cond_1
    const/16 v2, 0x2000

    :goto_1
    or-int/2addr v1, v2

    const/high16 v2, 0x2080000

    or-int/2addr v1, v2

    move-object/from16 v10, p8

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x20000000

    goto :goto_2

    :cond_2
    const/high16 v2, 0x10000000

    :goto_2
    or-int/2addr v1, v2

    const v2, 0x12492493

    and-int/2addr v2, v1

    const v3, 0x12492492

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    and-int/lit8 v3, v1, 0x1

    invoke-virtual {v12, v3, v2}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v2, p10, 0x1

    const v3, -0xe380071

    if-eqz v2, :cond_5

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/2addr v1, v3

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v6, p7

    move v3, v1

    move-object/from16 v1, p1

    goto :goto_5

    :cond_5
    :goto_4
    invoke-static {v12}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v2

    int-to-float v4, v4

    new-instance v6, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v6, v4, v4, v4, v4}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    invoke-static {v12}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_6

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v8, v7, :cond_7

    :cond_6
    new-instance v8, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-direct {v8, v4}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpecImpl;)V

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    move-object v4, v8

    check-cast v4, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-static {v12}, Landroidx/compose/foundation/OverscrollKt;->rememberOverscrollEffect(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    move-result-object v7

    and-int/2addr v1, v3

    move v3, v1

    move-object v1, v2

    move-object v2, v6

    move-object v6, v7

    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    and-int/lit8 v7, v3, 0xe

    const v8, 0x30186d80

    or-int v13, v7, v8

    shr-int/lit8 v7, v3, 0xc

    and-int/lit8 v7, v7, 0xe

    shr-int/lit8 v3, v3, 0x12

    and-int/lit16 v3, v3, 0x1c00

    or-int v14, v7, v3

    const/16 v15, 0x1900

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p4

    move-object/from16 v11, p8

    move-object v8, v5

    move/from16 v5, p6

    invoke-static/range {v0 .. v15}, Landroidx/compose/foundation/lazy/LazyListKt;->LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;III)V

    move-object v3, v1

    move-object v7, v4

    move-object v9, v6

    move-object v4, v2

    goto :goto_6

    :cond_8
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    :goto_6
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;

    const/4 v12, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public static final LazyRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 16

    move-object/from16 v12, p9

    const v0, -0x705086e1

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p10, v1

    or-int/lit16 v1, v1, 0xd90

    move-object/from16 v5, p3

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4000

    goto :goto_1

    :cond_1
    const/16 v2, 0x2000

    :goto_1
    or-int/2addr v1, v2

    const/high16 v2, 0x2080000

    or-int/2addr v1, v2

    move-object/from16 v10, p8

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x20000000

    goto :goto_2

    :cond_2
    const/high16 v2, 0x10000000

    :goto_2
    or-int/2addr v1, v2

    const v2, 0x12492493

    and-int/2addr v2, v1

    const v3, 0x12492492

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    and-int/lit8 v3, v1, 0x1

    invoke-virtual {v12, v3, v2}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v2, p10, 0x1

    const v3, -0xe380071

    if-eqz v2, :cond_5

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/2addr v1, v3

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v6, p7

    move v3, v1

    move-object/from16 v1, p1

    goto :goto_5

    :cond_5
    :goto_4
    invoke-static {v12}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v2

    int-to-float v4, v4

    new-instance v6, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v6, v4, v4, v4, v4}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    invoke-static {v12}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_6

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v8, v7, :cond_7

    :cond_6
    new-instance v8, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-direct {v8, v4}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpecImpl;)V

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    move-object v4, v8

    check-cast v4, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-static {v12}, Landroidx/compose/foundation/OverscrollKt;->rememberOverscrollEffect(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    move-result-object v7

    and-int/2addr v1, v3

    move v3, v1

    move-object v1, v2

    move-object v2, v6

    move-object v6, v7

    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    and-int/lit8 v7, v3, 0xe

    const v8, 0x186d80

    or-int v13, v7, v8

    shr-int/lit8 v7, v3, 0x6

    and-int/lit16 v7, v7, 0x380

    const/16 v8, 0x30

    or-int/2addr v7, v8

    shr-int/lit8 v3, v3, 0x12

    and-int/lit16 v3, v3, 0x1c00

    or-int v14, v7, v3

    const/16 v15, 0x700

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p4

    move-object v11, v10

    move-object v10, v5

    move/from16 v5, p6

    invoke-static/range {v0 .. v15}, Landroidx/compose/foundation/lazy/LazyListKt;->LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;III)V

    move-object v3, v1

    move-object v7, v4

    move-object v9, v6

    move-object v4, v2

    goto :goto_6

    :cond_8
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    :goto_6
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public static final findAnnotation([Ljava/lang/annotation/Annotation;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;

    invoke-direct {p0, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object p0

    :cond_2
    return-object v2
.end method

.method public static final getAnnotations([Ljava/lang/annotation/Annotation;)Ljava/util/ArrayList;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;

    invoke-direct {v4, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
