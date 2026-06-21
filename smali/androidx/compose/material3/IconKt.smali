.class public abstract Landroidx/compose/material3/IconKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DefaultIconSizeModifier:Landroidx/compose/ui/Modifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget v1, Landroidx/compose/material3/tokens/IconButtonTokens;->IconSize:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/IconKt;->DefaultIconSizeModifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static final Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V
    .locals 16

    move-object/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v0, p5

    move/from16 v6, p6

    const v1, -0x7faffaf9

    .line 14
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v6, 0x6

    move-object/from16 v8, p0

    if-nez v1, :cond_1

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v6

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    and-int/lit8 v3, v6, 0x30

    const/16 v7, 0x20

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v7

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_5

    or-int/lit16 v1, v1, 0x180

    :cond_4
    move-object/from16 v9, p2

    goto :goto_4

    :cond_5
    and-int/lit16 v9, v6, 0x180

    if-nez v9, :cond_4

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x100

    goto :goto_3

    :cond_6
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v1, v10

    :goto_4
    and-int/lit16 v10, v6, 0xc00

    const/16 v11, 0x800

    if-nez v10, :cond_8

    invoke-virtual {v0, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_7

    move v10, v11

    goto :goto_5

    :cond_7
    const/16 v10, 0x400

    :goto_5
    or-int/2addr v1, v10

    :cond_8
    and-int/lit16 v10, v1, 0x493

    const/16 v12, 0x492

    if-ne v10, v12, :cond_a

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_6

    .line 15
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v9

    goto/16 :goto_f

    .line 16
    :cond_a
    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v10, v6, 0x1

    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v10, :cond_d

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_8

    .line 17
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :cond_c
    :goto_7
    move-object v3, v9

    goto :goto_9

    :cond_d
    :goto_8
    if-eqz v3, :cond_c

    move-object v9, v12

    goto :goto_7

    :goto_9
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    and-int/lit16 v9, v1, 0x1c00

    xor-int/lit16 v9, v9, 0xc00

    const/4 v14, 0x0

    if-le v9, v11, :cond_e

    .line 18
    invoke-virtual {v0, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v9

    if-nez v9, :cond_f

    :cond_e
    and-int/lit16 v9, v1, 0xc00

    if-ne v9, v11, :cond_10

    :cond_f
    const/4 v9, 0x1

    goto :goto_a

    :cond_10
    move v9, v14

    .line 19
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .line 20
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v9, :cond_11

    if-ne v11, v13, :cond_13

    .line 21
    :cond_11
    sget-wide v10, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 22
    invoke-static {v4, v5, v10, v11}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x0

    :goto_b
    move-object v11, v9

    goto :goto_c

    .line 23
    :cond_12
    new-instance v9, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    const/4 v10, 0x5

    invoke-direct {v9, v4, v5, v10}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(JI)V

    goto :goto_b

    .line 24
    :goto_c
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_13
    check-cast v11, Landroidx/compose/ui/graphics/ColorFilter;

    const v9, -0x7fd87200

    .line 26
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v2, :cond_17

    and-int/lit8 v1, v1, 0x70

    if-ne v1, v7, :cond_14

    const/4 v10, 0x1

    goto :goto_d

    :cond_14
    move v10, v14

    .line 27
    :goto_d
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v10, :cond_15

    if-ne v1, v13, :cond_16

    .line 28
    :cond_15
    new-instance v1, Landroidx/compose/material3/IconKt$Icon$semantics$1$1;

    const/4 v7, 0x0

    invoke-direct {v1, v2, v7}, Landroidx/compose/material3/IconKt$Icon$semantics$1$1;-><init>(Ljava/lang/String;I)V

    .line 29
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 30
    :cond_16
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_e

    :cond_17
    move-object v1, v12

    .line 31
    :goto_e
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 32
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v9

    const-wide v14, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-static {v9, v10, v14, v15}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v9

    .line 33
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 34
    :cond_18
    sget-object v12, Landroidx/compose/material3/IconKt;->DefaultIconSizeModifier:Landroidx/compose/ui/Modifier;

    .line 35
    :cond_19
    invoke-interface {v3, v12}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    move-object v12, v11

    const/4 v11, 0x0

    const/16 v13, 0x16

    const/4 v9, 0x0

    .line 36
    sget-object v10, Landroidx/compose/ui/layout/ContentScale$Companion;->Fit:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/draw/BlurKt;->paint$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 37
    invoke-interface {v7, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v7, 0x0

    .line 38
    invoke-static {v1, v0, v7}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    .line 39
    :goto_f
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1a

    new-instance v0, Landroidx/compose/material3/IconKt$Icon$1;

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/IconKt$Icon$1;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;JIII)V

    .line 40
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1a
    return-void
.end method

.method public static final Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V
    .locals 10

    move-object v7, p5

    move/from16 v0, p6

    const v2, -0x79033cc

    .line 1
    invoke-virtual {p5, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p5, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v0

    invoke-virtual {p5, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v2, v4

    or-int/lit16 v2, v2, 0x180

    and-int/lit16 v4, v0, 0xc00

    if-nez v4, :cond_3

    and-int/lit8 v4, p7, 0x8

    if-nez v4, :cond_2

    invoke-virtual {p5, p3, p4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x800

    goto :goto_2

    :cond_2
    const/16 v6, 0x400

    :goto_2
    or-int/2addr v2, v6

    :cond_3
    and-int/lit16 v6, v2, 0x493

    const/16 v8, 0x492

    if-ne v6, v8, :cond_5

    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    .line 2
    :cond_4
    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, p2

    move-wide v4, p3

    goto :goto_7

    .line 3
    :cond_5
    :goto_3
    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_8

    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    .line 4
    :cond_6
    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v6, p7, 0x8

    if-eqz v6, :cond_7

    and-int/lit16 v2, v2, -0x1c01

    :cond_7
    move-object v4, p2

    move-wide v5, p3

    goto :goto_6

    :cond_8
    :goto_4
    and-int/lit8 v6, p7, 0x8

    .line 5
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v6, :cond_9

    .line 6
    sget-object v4, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 7
    invoke-virtual {p5, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 8
    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->value:J

    and-int/lit16 v2, v2, -0x1c01

    move-wide v5, v4

    :goto_5
    move-object v4, v8

    goto :goto_6

    :cond_9
    move-wide v5, p3

    goto :goto_5

    .line 9
    :goto_6
    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    .line 10
    invoke-static {p0, p5}, Landroidx/compose/ui/graphics/vector/PathParserKt;->rememberVectorPainter(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    move-result-object v8

    and-int/lit8 v9, v2, 0x70

    or-int/lit16 v9, v9, 0x188

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v2, v9

    const/4 v9, 0x0

    move-object v3, v8

    move v8, v2

    move-object v2, v3

    move-object v3, p1

    .line 11
    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    move-object v3, v4

    move-wide v4, v5

    .line 12
    :goto_7
    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_a

    new-instance v0, Landroidx/compose/material3/IconKt$Icon$1;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/IconKt$Icon$1;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;JIII)V

    .line 13
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method
