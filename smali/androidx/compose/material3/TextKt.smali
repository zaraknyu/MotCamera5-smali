.class public abstract Landroidx/compose/material3/TextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/material3/ShapesKt$LocalShapes$1;->INSTANCE$10:Landroidx/compose/material3/ShapesKt$LocalShapes$1;

    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    return-void
.end method

.method public static final ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 3

    const v0, -0x1b6f9f5f

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v1, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v2, p0}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    and-int/lit8 v0, v0, 0x70

    const/16 v2, 0x8

    or-int/2addr v0, v2

    invoke-static {v1, p1, p2, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Landroidx/compose/material3/ButtonKt$Button$2$1;

    const/16 v1, 0x9

    invoke-direct {v0, p3, v1, p0, p1}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V
    .locals 31

    move-object/from16 v0, p17

    move/from16 v1, p18

    move/from16 v2, p20

    const v3, -0x7a7e7926

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v1, 0x6

    if-nez v3, :cond_1

    move-object/from16 v3, p0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v3, p0

    move v6, v1

    :goto_1
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_3

    or-int/lit8 v6, v6, 0x30

    :cond_2
    move-object/from16 v10, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v10, v1, 0x30

    if-nez v10, :cond_2

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x20

    goto :goto_2

    :cond_4
    const/16 v11, 0x10

    :goto_2
    or-int/2addr v6, v11

    :goto_3
    and-int/lit8 v11, v2, 0x4

    if-eqz v11, :cond_6

    or-int/lit16 v6, v6, 0x180

    :cond_5
    move-wide/from16 v12, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v12, v1, 0x180

    if-nez v12, :cond_5

    move-wide/from16 v12, p2

    invoke-virtual {v0, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v14

    if-eqz v14, :cond_7

    const/16 v14, 0x100

    goto :goto_4

    :cond_7
    const/16 v14, 0x80

    :goto_4
    or-int/2addr v6, v14

    :goto_5
    and-int/lit8 v14, v2, 0x8

    const/16 v16, 0x800

    if-eqz v14, :cond_8

    or-int/lit16 v6, v6, 0xc00

    move v4, v6

    move-wide/from16 v5, p4

    goto :goto_7

    :cond_8
    and-int/lit16 v4, v1, 0xc00

    move/from16 v18, v6

    move-wide/from16 v5, p4

    if-nez v4, :cond_a

    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_9

    move/from16 v19, v16

    goto :goto_6

    :cond_9
    const/16 v19, 0x400

    :goto_6
    or-int v18, v18, v19

    :cond_a
    move/from16 v4, v18

    :goto_7
    or-int/lit16 v8, v4, 0x6000

    and-int/lit8 v20, v2, 0x20

    const v21, 0x36000

    const/high16 v22, 0x30000

    const/high16 v23, 0x10000

    if-eqz v20, :cond_c

    or-int v8, v4, v21

    :cond_b
    move-object/from16 v4, p6

    goto :goto_9

    :cond_c
    and-int v4, v1, v22

    if-nez v4, :cond_b

    move-object/from16 v4, p6

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    const/high16 v24, 0x20000

    goto :goto_8

    :cond_d
    move/from16 v24, v23

    :goto_8
    or-int v8, v8, v24

    :goto_9
    const/high16 v24, 0x180000

    or-int v24, v8, v24

    and-int/lit16 v9, v2, 0x80

    const/high16 v25, 0xc00000

    if-eqz v9, :cond_e

    const/high16 v24, 0xd80000

    or-int v24, v8, v24

    move-wide/from16 v3, p7

    goto :goto_b

    :cond_e
    and-int v8, v1, v25

    move-wide/from16 v3, p7

    if-nez v8, :cond_10

    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_f

    const/high16 v8, 0x800000

    goto :goto_a

    :cond_f
    const/high16 v8, 0x400000

    :goto_a
    or-int v24, v24, v8

    :cond_10
    :goto_b
    const/high16 v8, 0x6000000

    or-int v8, v24, v8

    and-int/lit16 v15, v2, 0x200

    if-eqz v15, :cond_11

    const/high16 v8, 0x36000000

    or-int v8, v24, v8

    move-object/from16 v1, p9

    goto :goto_d

    :cond_11
    const/high16 v24, 0x30000000

    and-int v24, v1, v24

    move-object/from16 v1, p9

    if-nez v24, :cond_13

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    const/high16 v24, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v24, 0x10000000

    :goto_c
    or-int v8, v8, v24

    :cond_13
    :goto_d
    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_14

    or-int/lit8 v17, p19, 0x6

    move-wide/from16 v3, p10

    goto :goto_f

    :cond_14
    move-wide/from16 v3, p10

    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v24

    if-eqz v24, :cond_15

    const/16 v17, 0x4

    goto :goto_e

    :cond_15
    const/16 v17, 0x2

    :goto_e
    or-int v17, p19, v17

    :goto_f
    move/from16 v19, v1

    and-int/lit16 v1, v2, 0x800

    if-eqz v1, :cond_16

    or-int/lit8 v17, v17, 0x30

    move/from16 v24, v1

    :goto_10
    move/from16 v1, v17

    goto :goto_12

    :cond_16
    and-int/lit8 v24, p19, 0x30

    if-nez v24, :cond_18

    move/from16 v24, v1

    move/from16 v1, p12

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v27

    if-eqz v27, :cond_17

    const/16 v18, 0x20

    goto :goto_11

    :cond_17
    const/16 v18, 0x10

    :goto_11
    or-int v17, v17, v18

    goto :goto_10

    :cond_18
    move/from16 v24, v1

    move/from16 v1, p12

    goto :goto_10

    :goto_12
    or-int/lit16 v3, v1, 0x180

    and-int/lit16 v4, v2, 0x2000

    if-eqz v4, :cond_19

    or-int/lit16 v1, v1, 0xd80

    move v3, v1

    move/from16 v1, p14

    goto :goto_14

    :cond_19
    move/from16 v1, p14

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_1a

    move/from16 v26, v16

    goto :goto_13

    :cond_1a
    const/16 v26, 0x400

    :goto_13
    or-int v3, v3, v26

    :goto_14
    or-int v3, v3, v21

    and-int v16, v2, v23

    move-object/from16 v1, p16

    if-nez v16, :cond_1b

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    const/high16 v16, 0x100000

    goto :goto_15

    :cond_1b
    const/high16 v16, 0x80000

    :goto_15
    or-int v3, v3, v16

    const v16, 0x12492493

    and-int v1, v8, v16

    const v2, 0x12492492

    if-ne v1, v2, :cond_1d

    const v1, 0x92493

    and-int/2addr v1, v3

    const v2, 0x92492

    if-ne v1, v2, :cond_1d

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_16

    :cond_1c
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object v2, v10

    move-wide v3, v12

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move/from16 v13, p12

    goto/16 :goto_25

    :cond_1d
    :goto_16
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v1, p18, 0x1

    const v2, -0x380001

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_18

    :cond_1e
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int v1, p20, v23

    if-eqz v1, :cond_1f

    and-int/2addr v3, v2

    :cond_1f
    move-wide/from16 v16, p7

    move-object/from16 v7, p9

    move-wide/from16 v14, p10

    move/from16 v11, p12

    move/from16 v9, p13

    move/from16 v4, p14

    move/from16 v2, p15

    move/from16 v18, v3

    move-object v1, v10

    move-object/from16 v10, p6

    :goto_17
    move-object/from16 v3, p16

    goto/16 :goto_20

    :cond_20
    :goto_18
    if-eqz v7, :cond_21

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_19

    :cond_21
    move-object v1, v10

    :goto_19
    if-eqz v11, :cond_22

    sget-wide v10, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    move-wide v12, v10

    :cond_22
    if-eqz v14, :cond_23

    sget-wide v5, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    :cond_23
    const/4 v7, 0x0

    if-eqz v20, :cond_24

    move-object v10, v7

    goto :goto_1a

    :cond_24
    move-object/from16 v10, p6

    :goto_1a
    if-eqz v9, :cond_25

    sget-wide v16, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    goto :goto_1b

    :cond_25
    move-wide/from16 v16, p7

    :goto_1b
    if-eqz v15, :cond_26

    goto :goto_1c

    :cond_26
    move-object/from16 v7, p9

    :goto_1c
    if-eqz v19, :cond_27

    sget-wide v14, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    goto :goto_1d

    :cond_27
    move-wide/from16 v14, p10

    :goto_1d
    const/4 v9, 0x1

    if-eqz v24, :cond_28

    move v11, v9

    goto :goto_1e

    :cond_28
    move/from16 v11, p12

    :goto_1e
    if-eqz v4, :cond_29

    const v4, 0x7fffffff

    goto :goto_1f

    :cond_29
    move/from16 v4, p14

    :goto_1f
    and-int v18, p20, v23

    if-eqz v18, :cond_2a

    move/from16 v18, v2

    sget-object v2, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/TextStyle;

    and-int v3, v3, v18

    move/from16 v18, v3

    move-object v3, v2

    move v2, v9

    goto :goto_20

    :cond_2a
    move/from16 v18, v3

    move v2, v9

    goto :goto_17

    :goto_20
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    move-object/from16 p15, v1

    const v1, -0x6cf36ecd

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const-wide/16 v19, 0x10

    cmp-long v1, v12, v19

    move/from16 p1, v1

    if-eqz p1, :cond_2b

    move/from16 p16, v2

    move-wide/from16 v23, v12

    const/4 v1, 0x0

    goto :goto_23

    :cond_2b
    const v1, -0x6cf36bc8

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v23

    cmp-long v1, v23, v19

    if-eqz v1, :cond_2c

    move/from16 p16, v2

    :goto_21
    const/4 v1, 0x0

    goto :goto_22

    :cond_2c
    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    move/from16 p16, v2

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v23, v1

    goto :goto_21

    :goto_22
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_23
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v7, :cond_2d

    iget v1, v7, Landroidx/compose/ui/text/style/TextAlign;->value:I

    goto :goto_24

    :cond_2d
    const/high16 v1, -0x80000000

    :goto_24
    const/4 v2, 0x0

    const v19, 0xfd6f50

    const/16 v20, 0x0

    move/from16 p10, v1

    move-object/from16 p13, v2

    move-object/from16 p1, v3

    move-wide/from16 p4, v5

    move-object/from16 p6, v10

    move-wide/from16 p11, v14

    move-wide/from16 p8, v16

    move/from16 p14, v19

    move-object/from16 p7, v20

    move-wide/from16 p2, v23

    invoke-static/range {p1 .. p14}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    move-object/from16 v2, p1

    and-int/lit8 v3, v8, 0x7e

    or-int/lit16 v3, v3, 0xc00

    shl-int/lit8 v8, v18, 0x9

    const v18, 0xe000

    and-int v18, v8, v18

    or-int v3, v3, v18

    or-int v3, v3, v22

    const/high16 v18, 0x380000

    and-int v8, v8, v18

    or-int/2addr v3, v8

    or-int v3, v3, v25

    const/16 v8, 0x100

    const/16 v18, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, p15

    move/from16 p7, p16

    move-object/from16 p9, v0

    move-object/from16 p3, v1

    move/from16 p10, v3

    move/from16 p6, v4

    move/from16 p11, v8

    move/from16 p5, v9

    move/from16 p4, v11

    move-object/from16 p8, v18

    invoke-static/range {p1 .. p11}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-VhcvRP8(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/ComposerImpl;II)V

    move-object/from16 v1, p2

    move/from16 v0, p7

    move-wide/from16 v29, v14

    move v15, v4

    move-wide v3, v12

    move v13, v11

    move-wide/from16 v11, v29

    move-object v8, v10

    move-object v10, v7

    move-object v7, v8

    move v14, v9

    move-wide/from16 v8, v16

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object v2, v1

    :goto_25
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2e

    move-object v1, v0

    new-instance v0, Landroidx/compose/material3/TextKt$Text$1;

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v28, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v20}, Landroidx/compose/material3/TextKt$Text$1;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;III)V

    move-object/from16 v1, v28

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2e
    return-void
.end method
