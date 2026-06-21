.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzkc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final CustomComposeDialog(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V
    .locals 28

    move-object/from16 v0, p8

    move/from16 v9, p9

    const v1, -0x78b63b6b

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, p10, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v2, v9, 0x6

    move v3, v2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v9, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v9

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    move v3, v9

    :goto_1
    and-int/lit8 v4, p10, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v9, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit8 v6, p10, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move-object/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v9, 0x180

    if-nez v7, :cond_6

    move-object/from16 v7, p2

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v3, v8

    :goto_5
    and-int/lit8 v8, p10, 0x8

    if-eqz v8, :cond_a

    or-int/lit16 v3, v3, 0xc00

    :cond_9
    move-object/from16 v10, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v9, 0xc00

    if-nez v10, :cond_9

    move-object/from16 v10, p3

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x800

    goto :goto_6

    :cond_b
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v3, v11

    :goto_7
    and-int/lit8 v11, p10, 0x10

    if-eqz v11, :cond_d

    or-int/lit16 v3, v3, 0x6000

    :cond_c
    move-object/from16 v12, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v12, v9, 0x6000

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/16 v13, 0x4000

    goto :goto_8

    :cond_e
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v3, v13

    :goto_9
    and-int/lit8 v13, p10, 0x20

    const/high16 v14, 0x30000

    if-eqz v13, :cond_10

    or-int/2addr v3, v14

    :cond_f
    move-object/from16 v14, p5

    goto :goto_b

    :cond_10
    and-int/2addr v14, v9

    if-nez v14, :cond_f

    move-object/from16 v14, p5

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v3, v15

    :goto_b
    and-int/lit8 v15, p10, 0x40

    const/high16 v16, 0x180000

    if-eqz v15, :cond_13

    or-int v3, v3, v16

    :cond_12
    move/from16 v16, v1

    move-object/from16 v1, p6

    goto :goto_d

    :cond_13
    and-int v16, v9, v16

    if-nez v16, :cond_12

    move/from16 v16, v1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v17, 0x80000

    :goto_c
    or-int v3, v3, v17

    :goto_d
    const/high16 v17, 0xc00000

    and-int v17, v9, v17

    move-object/from16 v1, p7

    if-nez v17, :cond_16

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v17, 0x400000

    :goto_e
    or-int v3, v3, v17

    :cond_16
    const v17, 0x492493

    and-int v1, v3, v17

    const v2, 0x492492

    if-ne v1, v2, :cond_18

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_f

    :cond_17
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v7

    move-object v4, v10

    move-object v5, v12

    move-object v6, v14

    move-object/from16 v7, p6

    goto/16 :goto_17

    :cond_18
    :goto_f
    if-eqz v16, :cond_19

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v19, v1

    goto :goto_10

    :cond_19
    move-object/from16 v19, p0

    :goto_10
    const-string v1, ""

    if-eqz v4, :cond_1a

    move-object/from16 v22, v1

    goto :goto_11

    :cond_1a
    move-object/from16 v22, v5

    :goto_11
    const/4 v2, 0x0

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    const v5, 0x6e3c21fe

    if-eqz v6, :cond_1c

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_1b

    new-instance v6, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v7, 0x15

    invoke-direct {v6, v7}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1b
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_12

    :cond_1c
    move-object v6, v7

    :goto_12
    if-eqz v8, :cond_1d

    move-object/from16 v25, v1

    goto :goto_13

    :cond_1d
    move-object/from16 v25, v10

    :goto_13
    if-eqz v11, :cond_1f

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_1e

    new-instance v7, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v8, 0x15

    invoke-direct {v7, v8}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1e
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v27, v7

    goto :goto_14

    :cond_1f
    move-object/from16 v27, v12

    :goto_14
    if-eqz v13, :cond_20

    move-object/from16 v24, v1

    goto :goto_15

    :cond_20
    move-object/from16 v24, v14

    :goto_15
    if-eqz v15, :cond_22

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_21

    new-instance v1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v4, 0x15

    invoke-direct {v1, v4}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_21
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v26, v1

    goto :goto_16

    :cond_22
    move-object/from16 v26, p6

    :goto_16
    sget-object v1, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/motorola/camera/ui/compose/CustomColors;

    sget-object v1, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/motorola/camera/ui/compose/Dimensions;

    new-instance v18, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$CustomComposeDialog$4;

    move-object/from16 v23, p7

    invoke-direct/range {v18 .. v27}, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$CustomComposeDialog$4;-><init>(Landroidx/compose/ui/Modifier;Lcom/motorola/camera/ui/compose/Dimensions;Lcom/motorola/camera/ui/compose/CustomColors;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v1, v18

    const v2, 0x49b91de

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    shr-int/lit8 v2, v3, 0x6

    and-int/lit8 v2, v2, 0xe

    or-int/lit16 v2, v2, 0x180

    const/4 v3, 0x0

    invoke-static {v6, v3, v1, v0, v2}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->Dialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    move-object v3, v6

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v6, v24

    move-object/from16 v4, v25

    move-object/from16 v7, v26

    move-object/from16 v5, v27

    :goto_17
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_23

    new-instance v0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;

    move-object/from16 v8, p7

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_23
    return-void
.end method

.method public static final DialogButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const v3, -0x44eae3c4

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p3, v3

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v3, v4

    and-int/lit8 v4, v3, 0x13

    const/16 v6, 0x12

    if-ne v4, v6, :cond_3

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_7

    :cond_3
    :goto_2
    const v4, 0x6e3c21fe

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v4, v6, :cond_4

    new-instance v4, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    move-object v8, v4

    check-cast v8, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v7, 0x4c5de2

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v7, v3, 0x70

    const/4 v14, 0x1

    if-ne v7, v5, :cond_5

    move v5, v14

    goto :goto_3

    :cond_5
    move v5, v4

    :goto_3
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_6

    if-ne v7, v6, :cond_7

    :cond_6
    new-instance v7, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v5, 0x12

    invoke-direct {v7, v5, v1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    move-object v12, v7

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v13, 0x1c

    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v6, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    iget v7, v2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v2, v5}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v10, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_8

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v6, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v8, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v8, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v8, :cond_9

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_9
    invoke-static {v7, v2, v7, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_a
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v5, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/compose/Dimensions;

    iget-wide v5, v5, Lcom/motorola/camera/ui/compose/Dimensions;->dialogButtonFontSize:J

    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v2}, Landroidx/compose/foundation/ImageKt;->isSystemInDarkTheme(Landroidx/compose/runtime/ComposerImpl;)Z

    move-result v7

    if-eqz v7, :cond_b

    const v7, 0x6396b5da

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v7, 0x7f060421

    invoke-static {v7, v2}, Landroidx/compose/ui/res/ColorResources_androidKt;->colorResource(ILandroidx/compose/runtime/ComposerImpl;)J

    move-result-wide v7

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    move-wide/from16 v16, v7

    goto :goto_6

    :cond_b
    const v7, 0x63980ada

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v7, 0x7f06041f

    invoke-static {v7, v2}, Landroidx/compose/ui/res/ColorResources_androidKt;->colorResource(ILandroidx/compose/runtime/ComposerImpl;)J

    move-result-wide v7

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_5

    :goto_6
    new-instance v15, Landroidx/compose/ui/text/TextStyle;

    const-wide/16 v24, 0x0

    const v26, 0xff7ff8

    const-wide/16 v21, 0x0

    const/16 v23, 0x3

    move-wide/from16 v18, v5

    invoke-direct/range {v15 .. v26}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    and-int/lit8 v18, v3, 0xe

    const/16 v19, 0x0

    const v20, 0xfffe

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v16

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, p2

    invoke-static/range {v0 .. v20}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    move-object/from16 v2, v17

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_7
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v2, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct {v2, v5, v3, v0, v4}, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method
