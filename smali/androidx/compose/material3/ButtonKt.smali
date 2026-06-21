.class public abstract Landroidx/compose/material3/ButtonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/material/ripple/RippleAlpha;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3da3d70a    # 0.08f

    const v3, 0x3e23d70a    # 0.16f

    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/compose/material/ripple/RippleAlpha;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/ButtonKt;->RippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    return-void
.end method

.method public static final Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V
    .locals 29

    move-object/from16 v2, p1

    move-object/from16 v9, p8

    move-object/from16 v0, p9

    move/from16 v1, p10

    move/from16 v3, p11

    const v4, 0x26c01063

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, v1, 0x6

    move-object/from16 v10, p0

    if-nez v4, :cond_1

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    and-int/lit8 v6, v1, 0x30

    if-nez v6, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    :cond_3
    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_5

    or-int/lit16 v4, v4, 0x180

    :cond_4
    move/from16 v8, p2

    goto :goto_4

    :cond_5
    and-int/lit16 v8, v1, 0x180

    if-nez v8, :cond_4

    move/from16 v8, p2

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x100

    goto :goto_3

    :cond_6
    const/16 v11, 0x80

    :goto_3
    or-int/2addr v4, v11

    :goto_4
    and-int/lit16 v11, v1, 0xc00

    if-nez v11, :cond_9

    and-int/lit8 v11, v3, 0x8

    if-nez v11, :cond_7

    move-object/from16 v11, p3

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x800

    goto :goto_5

    :cond_7
    move-object/from16 v11, p3

    :cond_8
    const/16 v12, 0x400

    :goto_5
    or-int/2addr v4, v12

    goto :goto_6

    :cond_9
    move-object/from16 v11, p3

    :goto_6
    and-int/lit16 v12, v1, 0x6000

    if-nez v12, :cond_c

    and-int/lit8 v12, v3, 0x10

    if-nez v12, :cond_a

    move-object/from16 v12, p4

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x4000

    goto :goto_7

    :cond_a
    move-object/from16 v12, p4

    :cond_b
    const/16 v13, 0x2000

    :goto_7
    or-int/2addr v4, v13

    goto :goto_8

    :cond_c
    move-object/from16 v12, p4

    :goto_8
    const/high16 v13, 0x30000

    and-int/2addr v13, v1

    if-nez v13, :cond_f

    and-int/lit8 v13, v3, 0x20

    if-nez v13, :cond_d

    move-object/from16 v13, p5

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/high16 v14, 0x20000

    goto :goto_9

    :cond_d
    move-object/from16 v13, p5

    :cond_e
    const/high16 v14, 0x10000

    :goto_9
    or-int/2addr v4, v14

    goto :goto_a

    :cond_f
    move-object/from16 v13, p5

    :goto_a
    and-int/lit8 v14, v3, 0x40

    const/high16 v15, 0x180000

    if-eqz v14, :cond_11

    or-int/2addr v4, v15

    :cond_10
    move-object/from16 v15, p6

    goto :goto_c

    :cond_11
    and-int/2addr v15, v1

    if-nez v15, :cond_10

    move-object/from16 v15, p6

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x100000

    goto :goto_b

    :cond_12
    const/high16 v16, 0x80000

    :goto_b
    or-int v4, v4, v16

    :goto_c
    and-int/lit16 v7, v3, 0x80

    const/high16 v17, 0xc00000

    if-eqz v7, :cond_13

    or-int v4, v4, v17

    move-object/from16 v5, p7

    goto :goto_e

    :cond_13
    and-int v17, v1, v17

    move-object/from16 v5, p7

    if-nez v17, :cond_15

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    const/high16 v18, 0x800000

    goto :goto_d

    :cond_14
    const/high16 v18, 0x400000

    :goto_d
    or-int v4, v4, v18

    :cond_15
    :goto_e
    and-int/lit16 v1, v3, 0x100

    move/from16 v18, v1

    const/4 v1, 0x0

    const/high16 v19, 0x6000000

    if-eqz v18, :cond_16

    or-int v4, v4, v19

    goto :goto_10

    :cond_16
    and-int v18, p10, v19

    if-nez v18, :cond_18

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x4000000

    goto :goto_f

    :cond_17
    const/high16 v18, 0x2000000

    :goto_f
    or-int v4, v4, v18

    :cond_18
    :goto_10
    const/high16 v18, 0x30000000

    and-int v18, p10, v18

    if-nez v18, :cond_1a

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/high16 v18, 0x20000000

    goto :goto_11

    :cond_19
    const/high16 v18, 0x10000000

    :goto_11
    or-int v4, v4, v18

    :cond_1a
    const v18, 0x12492493

    and-int v1, v4, v18

    const v3, 0x12492492

    if-ne v1, v3, :cond_1c

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_12

    :cond_1b
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move v3, v8

    move-object v4, v11

    move-object v6, v13

    move-object v7, v15

    move-object v8, v5

    move-object v5, v12

    goto/16 :goto_21

    :cond_1c
    :goto_12
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v1, p10, 0x1

    const v3, -0x70001

    const v18, -0xe001

    const/16 v20, 0x1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_13

    :cond_1d
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v1, p11, 0x8

    if-eqz v1, :cond_1e

    and-int/lit16 v4, v4, -0x1c01

    :cond_1e
    and-int/lit8 v1, p11, 0x10

    if-eqz v1, :cond_1f

    and-int v4, v4, v18

    :cond_1f
    and-int/lit8 v1, p11, 0x20

    if-eqz v1, :cond_20

    and-int/2addr v4, v3

    :cond_20
    move-object v1, v12

    move-object v3, v13

    move v12, v8

    move-object v13, v11

    goto :goto_15

    :cond_21
    :goto_13
    if-eqz v6, :cond_22

    move/from16 v8, v20

    :cond_22
    and-int/lit8 v1, p11, 0x8

    if-eqz v1, :cond_23

    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->ContainerShape:I

    invoke-static {v1, v0}, Landroidx/compose/material3/ShapesKt;->getValue(ILandroidx/compose/runtime/ComposerImpl;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    and-int/lit16 v4, v4, -0x1c01

    move-object v11, v1

    :cond_23
    and-int/lit8 v1, p11, 0x10

    if-eqz v1, :cond_24

    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/ColorScheme;

    invoke-static {v1}, Landroidx/compose/material3/ButtonDefaults;->getDefaultButtonColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;

    move-result-object v1

    and-int v4, v4, v18

    move-object v12, v1

    :cond_24
    and-int/lit8 v1, p11, 0x20

    if-eqz v1, :cond_25

    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget v22, Landroidx/compose/material3/tokens/FilledButtonTokens;->ContainerElevation:F

    sget v23, Landroidx/compose/material3/tokens/FilledButtonTokens;->PressedContainerElevation:F

    sget v24, Landroidx/compose/material3/tokens/FilledButtonTokens;->FocusContainerElevation:F

    sget v25, Landroidx/compose/material3/tokens/FilledButtonTokens;->HoverContainerElevation:F

    sget v26, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledContainerElevation:F

    new-instance v21, Landroidx/compose/material3/ButtonElevation;

    invoke-direct/range {v21 .. v26}, Landroidx/compose/material3/ButtonElevation;-><init>(FFFFF)V

    and-int v1, v4, v3

    move v4, v1

    goto :goto_14

    :cond_25
    move-object/from16 v21, v13

    :goto_14
    if-eqz v14, :cond_26

    const/4 v15, 0x0

    :cond_26
    if-eqz v7, :cond_27

    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-object v5, v1

    :cond_27
    move-object v13, v11

    move-object v1, v12

    move-object/from16 v3, v21

    move v12, v8

    :goto_15
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    const v6, -0xe413d8f

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v6, v7, :cond_28

    new-instance v6, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v6}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_28
    check-cast v6, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v12, :cond_29

    iget-wide v8, v1, Landroidx/compose/material3/ButtonColors;->containerColor:J

    goto :goto_16

    :cond_29
    iget-wide v8, v1, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    :goto_16
    move-wide/from16 p3, v8

    if-eqz v12, :cond_2a

    iget-wide v8, v1, Landroidx/compose/material3/ButtonColors;->contentColor:J

    goto :goto_17

    :cond_2a
    iget-wide v8, v1, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    :goto_17
    const v11, -0xe4123e0

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v3, :cond_2b

    move-object/from16 p5, v1

    move-object/from16 v26, v3

    move-object/from16 p6, v6

    move/from16 v25, v12

    move-object/from16 p7, v13

    move-object/from16 v18, v15

    const/4 v1, 0x0

    :goto_18
    const/4 v3, 0x0

    goto/16 :goto_1f

    :cond_2b
    shr-int/lit8 v11, v4, 0x6

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v4, v4, 0x9

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v4, v11

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v7, :cond_2c

    new-instance v11, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2c
    check-cast v11, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 p5, v1

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v14, :cond_2d

    if-ne v1, v7, :cond_2e

    :cond_2d
    new-instance v1, Landroidx/compose/material3/ButtonElevation$animateElevation$1$1;

    const/4 v14, 0x0

    invoke-direct {v1, v6, v11, v14}, Landroidx/compose/material3/ButtonElevation$animateElevation$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2e
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v6, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/interaction/Interaction;

    if-nez v12, :cond_2f

    iget v11, v3, Landroidx/compose/material3/ButtonElevation;->disabledElevation:F

    goto :goto_19

    :cond_2f
    instance-of v11, v1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz v11, :cond_30

    iget v11, v3, Landroidx/compose/material3/ButtonElevation;->pressedElevation:F

    goto :goto_19

    :cond_30
    instance-of v11, v1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v11, :cond_31

    iget v11, v3, Landroidx/compose/material3/ButtonElevation;->hoveredElevation:F

    goto :goto_19

    :cond_31
    instance-of v11, v1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v11, :cond_32

    iget v11, v3, Landroidx/compose/material3/ButtonElevation;->focusedElevation:F

    goto :goto_19

    :cond_32
    iget v11, v3, Landroidx/compose/material3/ButtonElevation;->defaultElevation:F

    :goto_19
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v7, :cond_33

    new-instance v14, Landroidx/compose/animation/core/Animatable;

    move-object/from16 p6, v6

    new-instance v6, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v6, v11}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    sget-object v10, Landroidx/compose/animation/core/VectorConvertersKt;->DpToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    move-object/from16 p7, v13

    const/16 v13, 0xc

    move-object/from16 v18, v15

    const/4 v15, 0x0

    invoke-direct {v14, v6, v10, v15, v13}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_33
    move-object/from16 p6, v6

    move-object/from16 p7, v13

    move-object/from16 v18, v15

    :goto_1a
    check-cast v14, Landroidx/compose/animation/core/Animatable;

    new-instance v6, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v6, v11}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v13

    or-int/2addr v10, v13

    and-int/lit8 v13, v4, 0xe

    xor-int/lit8 v13, v13, 0x6

    const/4 v15, 0x4

    if-le v13, v15, :cond_34

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v13

    if-nez v13, :cond_35

    :cond_34
    and-int/lit8 v13, v4, 0x6

    if-ne v13, v15, :cond_36

    :cond_35
    move/from16 v13, v20

    goto :goto_1b

    :cond_36
    const/4 v13, 0x0

    :goto_1b
    or-int/2addr v10, v13

    and-int/lit16 v13, v4, 0x380

    xor-int/lit16 v13, v13, 0x180

    const/16 v15, 0x100

    if-le v13, v15, :cond_37

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_39

    :cond_37
    and-int/lit16 v4, v4, 0x180

    if-ne v4, v15, :cond_38

    goto :goto_1c

    :cond_38
    const/16 v20, 0x0

    :cond_39
    :goto_1c
    or-int v4, v10, v20

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v4, v10

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v4, :cond_3b

    if-ne v10, v7, :cond_3a

    goto :goto_1d

    :cond_3a
    move-object/from16 v26, v3

    move/from16 v25, v12

    goto :goto_1e

    :cond_3b
    :goto_1d
    new-instance v22, Landroidx/compose/material3/ButtonElevation$animateElevation$2$1;

    const/16 v28, 0x0

    move-object/from16 v27, v1

    move-object/from16 v26, v3

    move/from16 v24, v11

    move/from16 v25, v12

    move-object/from16 v23, v14

    invoke-direct/range {v22 .. v28}, Landroidx/compose/material3/ButtonElevation$animateElevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v10, v22

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_1e
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v6, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, v14, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    goto/16 :goto_18

    :goto_1f
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v1, :cond_3c

    iget-object v1, v1, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Dp;

    iget v1, v1, Landroidx/compose/ui/unit/Dp;->value:F

    goto :goto_20

    :cond_3c
    int-to-float v1, v3

    :goto_20
    sget-object v3, Landroidx/compose/material3/ButtonKt$Button$1;->INSTANCE:Landroidx/compose/material3/ButtonKt$Button$1;

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    new-instance v3, Landroidx/compose/material3/ButtonKt$Button$2;

    move-object/from16 v4, p8

    invoke-direct {v3, v8, v9, v5, v4}, Landroidx/compose/material3/ButtonKt$Button$2;-><init>(JLandroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v6, 0x3902db2e

    invoke-static {v6, v3, v0}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    const/16 v23, 0x40

    move-object/from16 v10, p0

    move-wide/from16 v14, p3

    move-object/from16 v20, p6

    move-object/from16 v13, p7

    move-object/from16 v22, v0

    move-wide/from16 v16, v8

    move-object/from16 v19, v18

    move/from16 v12, v25

    move/from16 v18, v1

    invoke-static/range {v10 .. v23}, Landroidx/compose/material3/SurfaceKt;->Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    move-object/from16 v18, v19

    move-object v8, v5

    move-object v4, v13

    move-object/from16 v7, v18

    move/from16 v3, v25

    move-object/from16 v6, v26

    move-object/from16 v5, p5

    :goto_21
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_3d

    new-instance v0, Landroidx/compose/material3/ButtonKt$Button$3;

    move-object/from16 v1, p0

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/ButtonKt$Button$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3d
    return-void
.end method

.method public static final IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V
    .locals 25

    move-object/from16 v2, p1

    move-object/from16 v0, p5

    move/from16 v6, p6

    const v1, -0x441f35f2

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v6, 0x6

    move-object/from16 v12, p0

    if-nez v1, :cond_1

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

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
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    and-int/lit8 v5, p7, 0x4

    if-eqz v5, :cond_4

    or-int/lit16 v1, v1, 0x180

    :cond_3
    move/from16 v7, p2

    goto :goto_4

    :cond_4
    and-int/lit16 v7, v6, 0x180

    if-nez v7, :cond_3

    move/from16 v7, p2

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x100

    goto :goto_3

    :cond_5
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v1, v8

    :goto_4
    or-int/lit16 v1, v1, 0x6400

    const v8, 0x12493

    and-int/2addr v1, v8

    const v8, 0x12492

    if-ne v1, v8, :cond_7

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v3, v7

    goto/16 :goto_c

    :cond_7
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v1, v6, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v3, p3

    :goto_6
    move v10, v7

    goto :goto_8

    :cond_9
    :goto_7
    if-eqz v5, :cond_a

    move v7, v15

    :cond_a
    const v1, -0x5a939695

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v8, v1, Landroidx/compose/ui/graphics/Color;->value:J

    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/ColorScheme;

    iget-object v5, v1, Landroidx/compose/material3/ColorScheme;->defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    const v10, 0x3ec28f5c    # 0.38f

    if-nez v5, :cond_b

    new-instance v16, Landroidx/compose/material3/IconButtonColors;

    sget-wide v17, Landroidx/compose/ui/graphics/Color;->Transparent:J

    invoke-static {v10, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v23

    move-wide/from16 v21, v17

    move-wide/from16 v19, v8

    invoke-direct/range {v16 .. v24}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJ)V

    move-object/from16 v5, v16

    iput-object v5, v1, Landroidx/compose/material3/ColorScheme;->defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    :cond_b
    iget-wide v3, v5, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    invoke-static {v3, v4, v8, v9}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v3, v5

    goto :goto_6

    :cond_c
    invoke-static {v10, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v3

    invoke-static {v5, v8, v9, v3, v4}, Landroidx/compose/material3/IconButtonColors;->copy-jRlVdoo$default(Landroidx/compose/material3/IconButtonColors;JJ)Landroidx/compose/material3/IconButtonColors;

    move-result-object v3

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_6

    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v4, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v4, Landroidx/compose/material3/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material3/MinimumInteractiveModifier;

    invoke-interface {v2, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget v5, Landroidx/compose/material3/tokens/IconButtonTokens;->StateLayerSize:F

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v7, 0x5

    invoke-static {v7, v0}, Landroidx/compose/material3/ShapesKt;->getValue(ILandroidx/compose/runtime/ComposerImpl;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v7

    invoke-static {v4, v7}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v10, :cond_d

    iget-wide v7, v3, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    goto :goto_9

    :cond_d
    iget-wide v7, v3, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    :goto_9
    sget-object v9, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v4, v7, v8, v9}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/4 v11, 0x2

    int-to-float v4, v11

    div-float/2addr v5, v4

    const/16 v4, 0x36

    const/4 v1, 0x4

    invoke-static {v5, v0, v4, v1}, Landroidx/compose/material3/RippleKt;->rippleOrFallbackImplementation-9IZ8Weo(FLandroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/foundation/Indication;

    move-result-object v9

    new-instance v11, Landroidx/compose/ui/semantics/Role;

    invoke-direct {v11, v14}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    const/16 v13, 0x8

    const/4 v8, 0x0

    invoke-static/range {v7 .. v13}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v4, v14}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v0, v1}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v9, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_e

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_a
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v0, v4, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v0, v7, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_f

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    :cond_f
    invoke-static {v5, v0, v5, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_10
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v0, v1, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v10, :cond_11

    iget-wide v4, v3, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    goto :goto_b

    :cond_11
    iget-wide v4, v3, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    :goto_b
    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    const/16 v4, 0x38

    move-object/from16 v5, p4

    invoke-static {v1, v5, v0, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v4, v3

    move v3, v10

    :goto_c
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_12

    new-instance v0, Landroidx/compose/material3/IconButtonKt$IconButton$2;

    move-object/from16 v1, p0

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/IconButtonKt$IconButton$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final OutlinedButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 19

    move-object/from16 v9, p8

    const v0, -0x6504b8df

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p9, v1

    const v2, 0x32580

    or-int/2addr v1, v2

    move-object/from16 v6, p5

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x100000

    goto :goto_1

    :cond_1
    const/high16 v2, 0x80000

    :goto_1
    or-int/2addr v1, v2

    const/high16 v2, 0x6c00000

    or-int/2addr v1, v2

    const v2, 0x12492493

    and-int/2addr v2, v1

    const v3, 0x12492492

    if-ne v2, v3, :cond_3

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    goto/16 :goto_6

    :cond_3
    :goto_2
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v2, p9, 0x1

    const v3, -0xfc01

    if-eqz v2, :cond_5

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/2addr v1, v3

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p6

    goto :goto_5

    :cond_5
    :goto_3
    sget-object v2, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget v2, Landroidx/compose/material3/tokens/OutlinedButtonTokens;->OutlineWidth:F

    const/4 v2, 0x5

    invoke-static {v2, v9}, Landroidx/compose/material3/ShapesKt;->getValue(ILandroidx/compose/runtime/ComposerImpl;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    sget-object v4, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/ColorScheme;

    iget-object v5, v4, Landroidx/compose/material3/ColorScheme;->defaultOutlinedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    if-nez v5, :cond_6

    new-instance v10, Landroidx/compose/material3/ButtonColors;

    sget-wide v11, Landroidx/compose/ui/graphics/Color;->Transparent:J

    const/16 v5, 0x1a

    invoke-static {v4, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;I)J

    move-result-wide v13

    const/16 v5, 0x12

    invoke-static {v4, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;I)J

    move-result-wide v7

    const v5, 0x3ec28f5c    # 0.38f

    invoke-static {v5, v7, v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v17

    move-wide v15, v11

    invoke-direct/range {v10 .. v18}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    iput-object v10, v4, Landroidx/compose/material3/ColorScheme;->defaultOutlinedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    goto :goto_4

    :cond_6
    move-object v10, v5

    :goto_4
    and-int/2addr v1, v3

    sget-object v3, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/4 v4, 0x1

    move-object v7, v3

    move-object v3, v2

    move v2, v4

    move-object v4, v10

    :goto_5
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    const v5, 0x7ffffffe

    and-int v10, v1, v5

    const/4 v11, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    move-object v5, v3

    move-object v6, v4

    move-object v8, v7

    move v4, v2

    :goto_6
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Landroidx/compose/material3/ButtonKt$OutlinedButton$1;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Landroidx/compose/material3/ButtonKt$OutlinedButton$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final OutlinedIconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 25

    move-object/from16 v2, p1

    move-object/from16 v15, p6

    sget-object v0, Lcom/motorola/camera/cli/onboard/large/ComposableSingletons$LargeCliOnboardComponentKt;->lambda$1653312013:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, -0x681b0c11

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v1, p0

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    or-int v0, p7, v0

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    const v4, 0x182580

    or-int/2addr v0, v4

    const v4, 0x492493

    and-int/2addr v0, v4

    const v4, 0x492492

    if-ne v0, v4, :cond_3

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    goto/16 :goto_8

    :cond_3
    :goto_2
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v0, p4

    goto :goto_5

    :cond_5
    :goto_3
    sget v0, Landroidx/compose/material3/tokens/OutlinedIconButtonTokens;->ContainerSize:F

    const/4 v0, 0x5

    invoke-static {v0, v15}, Landroidx/compose/material3/ShapesKt;->getValue(ILandroidx/compose/runtime/ComposerImpl;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    const v4, 0x17340e29

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v4, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/ColorScheme;

    sget-object v5, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    iget-object v8, v4, Landroidx/compose/material3/ColorScheme;->defaultOutlinedIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    const v9, 0x3ec28f5c    # 0.38f

    if-nez v8, :cond_6

    new-instance v16, Landroidx/compose/material3/IconButtonColors;

    sget-wide v17, Landroidx/compose/ui/graphics/Color;->Transparent:J

    invoke-static {v9, v6, v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v23

    move-wide/from16 v21, v17

    move-wide/from16 v19, v6

    invoke-direct/range {v16 .. v24}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJ)V

    move-object/from16 v8, v16

    iput-object v8, v4, Landroidx/compose/material3/ColorScheme;->defaultOutlinedIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    :cond_6
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->value:J

    iget-wide v6, v8, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    invoke-static {v6, v7, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_4

    :cond_7
    invoke-static {v9, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v9

    invoke-static {v8, v4, v5, v9, v10}, Landroidx/compose/material3/IconButtonColors;->copy-jRlVdoo$default(Landroidx/compose/material3/IconButtonColors;JJ)Landroidx/compose/material3/IconButtonColors;

    move-result-object v4

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v8, v4

    :goto_4
    const/4 v4, 0x1

    move-object v6, v0

    move v5, v4

    move-object v0, v8

    :goto_5
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v4, Landroidx/compose/material3/ButtonKt$Button$1;->INSTANCE$1:Landroidx/compose/material3/ButtonKt$Button$1;

    invoke-static {v2, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v5, :cond_8

    iget-wide v7, v0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    goto :goto_6

    :cond_8
    iget-wide v7, v0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    :goto_6
    if-eqz v5, :cond_9

    iget-wide v9, v0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    goto :goto_7

    :cond_9
    iget-wide v9, v0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    :goto_7
    new-instance v11, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$2;

    invoke-direct {v11, v3}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    const v3, 0x22b5b07a    # 4.9247E-18f

    invoke-static {v3, v11, v15}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v14

    const/16 v16, 0xc0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v12, p5

    move-object v3, v1

    invoke-static/range {v3 .. v16}, Landroidx/compose/material3/SurfaceKt;->Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    move v3, v5

    move-object v4, v6

    move-object v5, v0

    :goto_8
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_a

    new-instance v0, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;

    move-object/from16 v1, p0

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/BorderStroke;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static final dynamicDarkColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;
    .locals 76

    move-object/from16 v0, p0

    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106008b

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v4

    const v3, 0x106008c

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v6

    const v3, 0x1060089

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v8

    const v3, 0x106008a

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v10

    const v3, 0x1060060

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v12

    const v3, 0x106008f

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v14

    const v3, 0x1060090

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v16

    const v3, 0x106008d

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v18

    const v3, 0x106008e

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v20

    const v3, 0x1060093

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v22

    const v3, 0x1060094

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v24

    const v3, 0x1060091

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v26

    const v3, 0x1060092

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v28

    const v3, 0x1060095

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v30

    const v3, 0x1060096

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v32

    const v3, 0x1060097

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v34

    const v3, 0x1060098

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v36

    const v3, 0x10600a0

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v38

    const v3, 0x10600a1

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v40

    const v3, 0x106006c

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v44

    const v3, 0x106006d

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v46

    const v3, 0x10600a2

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v56

    const v3, 0x10600c1

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v58

    const v3, 0x106009e

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v62

    const v3, 0x106009f

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v64

    const v3, 0x106009b

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v66

    const v3, 0x106009c

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v68

    const v3, 0x106009d

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v70

    const v3, 0x1060099

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v72

    const v3, 0x106009a

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v74

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v42

    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-wide v48, Landroidx/compose/material3/tokens/ColorDarkTokens;->Error:J

    sget-wide v50, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnError:J

    sget-wide v52, Landroidx/compose/material3/tokens/ColorDarkTokens;->ErrorContainer:J

    sget-wide v54, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnErrorContainer:J

    sget-wide v60, Landroidx/compose/material3/tokens/ColorDarkTokens;->Scrim:J

    new-instance v3, Landroidx/compose/material3/ColorScheme;

    invoke-direct/range {v3 .. v75}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-object v3
.end method
