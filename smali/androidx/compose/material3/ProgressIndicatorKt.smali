.class public abstract Landroidx/compose/material3/ProgressIndicatorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final CircularIndicatorDiameter:F

.field public static final SemanticsBoundsPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xa

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/ProgressIndicatorKt;->SemanticsBoundsPadding:F

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget-object v2, Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$1;

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/ScaleFactorKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/material3/ButtonKt$Button$1;->INSTANCE$2:Landroidx/compose/material3/ButtonKt$Button$1;

    new-instance v3, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    sget v0, Landroidx/compose/material3/tokens/ProgressIndicatorTokens;->TrackThickness:F

    sget v1, Landroidx/compose/material3/tokens/ProgressIndicatorTokens;->Size:F

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v0, v3

    sub-float/2addr v1, v0

    sput v1, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v1, 0x3e4ccccd    # 0.2f

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

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-void
.end method

.method public static final CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/ComposerImpl;I)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v7, p7

    const/high16 v0, 0x43910000    # 290.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const v2, -0x6e80f9f

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    const/4 v12, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v12

    :goto_0
    or-int v2, p8, v2

    or-int/lit16 v2, v2, 0x6590

    and-int/lit16 v2, v2, 0x2493

    const/16 v3, 0x2492

    if-ne v2, v3, :cond_2

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    goto/16 :goto_6

    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-wide/from16 v13, p1

    move/from16 v15, p3

    move-wide/from16 v5, p4

    move/from16 v8, p6

    goto :goto_3

    :cond_4
    :goto_2
    sget v2, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularStrokeWidth:F

    sget v2, Landroidx/compose/material3/tokens/ProgressIndicatorTokens;->TrackThickness:F

    sget-object v2, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material3/ColorScheme;

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;I)J

    move-result-wide v2

    sget v4, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularStrokeWidth:F

    sget-wide v5, Landroidx/compose/ui/graphics/Color;->Transparent:J

    sget v8, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularIndeterminateStrokeCap:I

    move-wide v13, v2

    move v15, v4

    :goto_3
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Density;

    new-instance v23, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-interface {v2, v15}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x1a

    const/4 v9, 0x0

    move/from16 p2, v2

    move/from16 p5, v3

    move/from16 p6, v4

    move/from16 p4, v8

    move/from16 p3, v9

    move-object/from16 p1, v23

    invoke-direct/range {p1 .. p6}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    move/from16 v24, p4

    invoke-static {v7}, Landroidx/compose/animation/core/ArcSplineKt;->rememberInfiniteTransition(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-wide/from16 v16, v5

    sget-object v5, Landroidx/compose/animation/core/VectorConvertersKt;->IntToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v6, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    const/16 v9, 0x1a04

    invoke-static {v9, v3, v6, v12}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v9

    move/from16 v18, v3

    move-object v3, v4

    move-object v4, v8

    const v8, 0x81b8

    move-object/from16 v19, v6

    move-object v6, v9

    const/16 v9, 0x10

    move-wide/from16 v25, v16

    move-object/from16 v0, v19

    move-object/from16 v27, v23

    move/from16 v17, v15

    move/from16 v15, v18

    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/core/ArcSplineKt;->animateValue(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Number;Ljava/lang/Number;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v3

    const/16 v4, 0x534

    invoke-static {v4, v15, v0, v12}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v0

    const/high16 v5, 0x438f0000    # 286.0f

    invoke-static {v2, v5, v0, v7}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v0

    new-instance v5, Landroidx/compose/animation/core/KeyframesSpec;

    new-instance v6, Landroidx/media3/extractor/mkv/Sniffer;

    const/4 v8, 0x1

    invoke-direct {v6, v8, v15}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(IB)V

    iput v4, v6, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    invoke-virtual {v6, v11, v15}, Landroidx/media3/extractor/mkv/Sniffer;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object v9

    sget-object v12, Landroidx/compose/material3/ProgressIndicatorKt;->CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    iput-object v12, v9, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->easing:Landroidx/compose/animation/core/Easing;

    const/16 v9, 0x29a

    invoke-virtual {v6, v10, v9}, Landroidx/media3/extractor/mkv/Sniffer;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    invoke-direct {v5, v6}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/media3/extractor/mkv/Sniffer;)V

    invoke-static {v5}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v5

    const/high16 v6, 0x43910000    # 290.0f

    invoke-static {v2, v6, v5, v7}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v5

    new-instance v6, Landroidx/compose/animation/core/KeyframesSpec;

    new-instance v9, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-direct {v9, v8, v15}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(IB)V

    iput v4, v9, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    const/16 v4, 0x29a

    invoke-virtual {v9, v11, v4}, Landroidx/media3/extractor/mkv/Sniffer;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object v4

    iput-object v12, v4, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->easing:Landroidx/compose/animation/core/Easing;

    iget v4, v9, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    invoke-virtual {v9, v10, v4}, Landroidx/media3/extractor/mkv/Sniffer;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    invoke-direct {v6, v9}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/media3/extractor/mkv/Sniffer;)V

    invoke-static {v6}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v4

    const/high16 v6, 0x43910000    # 290.0f

    invoke-static {v2, v6, v4, v7}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v2

    sget-object v4, Landroidx/compose/foundation/ImageKt$Image$1$1;->INSTANCE$3:Landroidx/compose/foundation/ImageKt$Image$1$1;

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsModifierKt;->lastIdentifier:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v6, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    invoke-direct {v6, v4, v8}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    invoke-interface {v1, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget v6, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    move-wide/from16 v8, v25

    invoke-virtual {v7, v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v6

    move-object/from16 v10, v27

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    invoke-virtual {v7, v13, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v11

    or-int/2addr v6, v11

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v6, :cond_5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v11, v6, :cond_6

    :cond_5
    move-wide/from16 v28, v13

    move/from16 v14, v17

    move-wide/from16 v17, v28

    goto :goto_4

    :cond_6
    move-wide/from16 v28, v13

    move/from16 v14, v17

    move-wide/from16 v17, v28

    move v0, v15

    goto :goto_5

    :goto_4
    new-instance v13, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;

    move-object/from16 v22, v0

    move-object/from16 v21, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v23, v10

    move v0, v15

    move-wide v15, v8

    invoke-direct/range {v13 .. v23}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;-><init>(FJJLandroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/ui/graphics/drawscope/Stroke;)V

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v11, v13

    :goto_5
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v11, v7, v0}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    move-wide v5, v8

    move v4, v14

    move-wide/from16 v2, v17

    move/from16 v7, v24

    :goto_6
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_7

    new-instance v0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$6;

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$6;-><init>(Landroidx/compose/ui/Modifier;JFJII)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
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
