.class public abstract Landroidx/compose/material/ProgressIndicatorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final CircularIndicatorDiameter:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget v0, Landroidx/compose/material/ProgressIndicatorDefaults;->$r8$clinit:I

    const/16 v0, 0x28

    int-to-float v0, v0

    sput v0, Landroidx/compose/material/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v2, v4, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v5, 0x3f266666    # 0.65f

    invoke-direct {v0, v2, v2, v5, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3ee66666    # 0.45f

    invoke-direct {v0, v5, v2, v6, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-direct {v0, v3, v2, v1, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material/ProgressIndicatorKt;->CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-void
.end method

.method public static final CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/ComposerImpl;I)V
    .locals 28

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v10, p7

    move/from16 v0, p8

    const/high16 v13, 0x43910000    # 290.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const v5, -0x42b466e0

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, v0, 0x6

    const/4 v6, 0x2

    if-nez v5, :cond_1

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    or-int/2addr v5, v0

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    and-int/lit8 v7, v0, 0x30

    const/16 v8, 0x20

    if-nez v7, :cond_3

    invoke-virtual {v10, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v5, v7

    :cond_3
    and-int/lit16 v7, v0, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v5, v7

    :cond_5
    or-int/lit16 v7, v5, 0xc00

    and-int/lit16 v11, v0, 0x6000

    if-nez v11, :cond_6

    or-int/lit16 v7, v5, 0x2c00

    :cond_6
    and-int/lit16 v5, v7, 0x2493

    const/16 v11, 0x2492

    const/4 v12, 0x0

    if-eq v5, v11, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    move v5, v12

    :goto_4
    and-int/lit8 v11, v7, 0x1

    invoke-virtual {v10, v11, v5}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v5, v0, 0x1

    const v11, -0xe001

    if-eqz v5, :cond_9

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int v5, v7, v11

    move-wide/from16 v16, p4

    move/from16 v21, p6

    goto :goto_6

    :cond_9
    :goto_5
    sget-wide v16, Landroidx/compose/ui/graphics/Color;->Transparent:J

    and-int v5, v7, v11

    move/from16 v21, v6

    :goto_6
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v7, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/unit/Density;

    new-instance v18, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-interface {v7, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v19

    const/16 v22, 0x0

    const/16 v23, 0x1a

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v23}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    move v7, v5

    invoke-static {v10}, Landroidx/compose/animation/core/ArcSplineKt;->rememberInfiniteTransition(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v19, 0x5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move/from16 v20, v8

    sget-object v8, Landroidx/compose/animation/core/VectorConvertersKt;->IntToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v13, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    const/16 v9, 0x1a04

    invoke-static {v9, v12, v13, v6}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v9

    move/from16 v24, v6

    move-object v6, v11

    const v11, 0x81b8

    move/from16 v25, v12

    const/16 v12, 0x10

    move/from16 v26, v7

    move-object/from16 v27, v18

    move-object/from16 v7, v19

    move/from16 v4, v24

    move/from16 v0, v25

    invoke-static/range {v5 .. v12}, Landroidx/compose/animation/core/ArcSplineKt;->animateValue(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Number;Ljava/lang/Number;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v8

    move-object v6, v5

    move-object v5, v10

    const/16 v7, 0x534

    invoke-static {v7, v0, v13, v4}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v4

    const/high16 v9, 0x438f0000    # 286.0f

    invoke-static {v6, v9, v4, v5}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v11

    new-instance v4, Landroidx/compose/animation/core/KeyframesSpec;

    new-instance v9, Landroidx/media3/extractor/mkv/Sniffer;

    const/4 v10, 0x1

    invoke-direct {v9, v10, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(IB)V

    iput v7, v9, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    invoke-virtual {v9, v15, v0}, Landroidx/media3/extractor/mkv/Sniffer;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object v10

    sget-object v12, Landroidx/compose/material/ProgressIndicatorKt;->CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    iput-object v12, v10, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->easing:Landroidx/compose/animation/core/Easing;

    const/16 v10, 0x29a

    invoke-virtual {v9, v14, v10}, Landroidx/media3/extractor/mkv/Sniffer;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    invoke-direct {v4, v9}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/media3/extractor/mkv/Sniffer;)V

    invoke-static {v4}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v4

    const/high16 v9, 0x43910000    # 290.0f

    invoke-static {v6, v9, v4, v5}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v4

    new-instance v13, Landroidx/compose/animation/core/KeyframesSpec;

    new-instance v9, Landroidx/media3/extractor/mkv/Sniffer;

    const/4 v10, 0x1

    invoke-direct {v9, v10, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(IB)V

    iput v7, v9, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    const/16 v7, 0x29a

    invoke-virtual {v9, v15, v7}, Landroidx/media3/extractor/mkv/Sniffer;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object v7

    iput-object v12, v7, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->easing:Landroidx/compose/animation/core/Easing;

    iget v7, v9, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    invoke-virtual {v9, v14, v7}, Landroidx/media3/extractor/mkv/Sniffer;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    invoke-direct {v13, v9}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/media3/extractor/mkv/Sniffer;)V

    invoke-static {v13}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v7

    const/high16 v9, 0x43910000    # 290.0f

    invoke-static {v6, v9, v7, v5}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v10

    sget-object v6, Landroidx/compose/foundation/ImageKt$Image$1$1;->INSTANCE$3:Landroidx/compose/foundation/ImageKt$Image$1$1;

    sget-object v7, Landroidx/compose/ui/semantics/SemanticsModifierKt;->lastIdentifier:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v7, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    const/4 v9, 0x1

    invoke-direct {v7, v6, v9}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    invoke-interface {v1, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget v7, Landroidx/compose/material/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v13

    move/from16 v7, v26

    and-int/lit16 v6, v7, 0x1c00

    const/16 v12, 0x800

    if-ne v6, v12, :cond_a

    move v12, v9

    :goto_7
    move-object/from16 v6, v27

    goto :goto_8

    :cond_a
    move v12, v0

    goto :goto_7

    :goto_8
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v12, v14

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v12, v14

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v12, v14

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v12, v14

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v12, v14

    and-int/lit16 v14, v7, 0x380

    const/16 v15, 0x100

    if-ne v14, v15, :cond_b

    move v14, v9

    goto :goto_9

    :cond_b
    move v14, v0

    :goto_9
    or-int/2addr v12, v14

    and-int/lit8 v14, v7, 0x70

    xor-int/lit8 v14, v14, 0x30

    const/16 v15, 0x20

    if-le v14, v15, :cond_c

    invoke-virtual {v5, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v14

    if-nez v14, :cond_e

    :cond_c
    and-int/lit8 v7, v7, 0x30

    if-ne v7, v15, :cond_d

    goto :goto_a

    :cond_d
    move v9, v0

    :cond_e
    :goto_a
    or-int v7, v12, v9

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_10

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v9, v7, :cond_f

    goto :goto_b

    :cond_f
    move-object v14, v5

    move-wide/from16 v4, v16

    goto :goto_c

    :cond_10
    :goto_b
    new-instance v2, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$3$1;

    move/from16 v3, p3

    move-object v9, v4

    move-object v14, v5

    move-object v12, v6

    move-wide/from16 v4, v16

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v12}, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$3$1;-><init>(FJJLandroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/ui/graphics/drawscope/Stroke;)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v9, v2

    :goto_c
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v9, v14, v0}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    move-wide v5, v4

    move/from16 v7, v21

    goto :goto_d

    :cond_11
    move-object v14, v10

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-wide/from16 v5, p4

    move/from16 v7, p6

    :goto_d
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_12

    new-instance v0, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;-><init>(Landroidx/compose/ui/Modifier;JFJII)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 10

    iget v0, p5, Landroidx/compose/ui/graphics/drawscope/Stroke;->width:F

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    invoke-static {v2, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v7

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-wide v1, p3

    move-object v9, p5

    invoke-interface/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo(JFFJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    return-void
.end method
