.class public abstract Landroidx/compose/material3/MaterialThemeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/material3/ShapesKt$LocalShapes$1;->INSTANCE$6:Landroidx/compose/material3/ShapesKt$LocalShapes$1;

    new-instance v1, Landroidx/compose/runtime/LazyValueHolder;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/LazyValueHolder;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    const v2, -0x7ec9fb7e

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p5, v2

    or-int/lit16 v2, v2, 0x90

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x800

    goto :goto_1

    :cond_1
    const/16 v3, 0x400

    :goto_1
    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0x493

    const/16 v3, 0x492

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto/16 :goto_5

    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto :goto_4

    :cond_5
    :goto_3
    sget-object v2, Landroidx/compose/material3/ShapesKt;->LocalShapes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material3/Shapes;

    sget-object v3, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/Typography;

    :goto_4
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static {v7, v0, v5, v6}, Landroidx/compose/material3/RippleKt;->rippleOrFallbackImplementation-9IZ8Weo(FLandroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/foundation/Indication;

    move-result-object v5

    iget-wide v6, v1, Landroidx/compose/material3/ColorScheme;->primary:J

    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_6

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v9, v8, :cond_7

    :cond_6
    new-instance v9, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    const v8, 0x3ecccccd    # 0.4f

    invoke-static {v8, v6, v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v10

    invoke-direct {v9, v6, v7, v10, v11}, Landroidx/compose/foundation/text/selection/TextSelectionColors;-><init>(JJ)V

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    check-cast v9, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    sget-object v6, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v10

    sget-object v6, Landroidx/compose/foundation/IndicationKt;->LocalIndication:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v11

    sget-object v5, Landroidx/compose/material/ripple/RippleThemeKt;->LocalRippleTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v6, Landroidx/compose/material3/CompatRippleTheme;->INSTANCE:Landroidx/compose/material3/CompatRippleTheme;

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v12

    sget-object v5, Landroidx/compose/material3/ShapesKt;->LocalShapes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v13

    sget-object v5, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v14

    sget-object v5, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v15

    filled-new-array/range {v10 .. v15}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v5

    new-instance v6, Landroidx/compose/material3/ButtonKt$Button$2$1;

    const/16 v7, 0x8

    invoke-direct {v6, v7, v3, v4}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v7, -0x3f9276be

    invoke-static {v7, v6, v0}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/16 v7, 0x38

    invoke-static {v5, v6, v0, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_8

    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;-><init>(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method
