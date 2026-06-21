.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzkf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final TwoButtonsStackedDialog(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 19

    move-object/from16 v0, p7

    move/from16 v8, p8

    const v1, 0x5917a38c

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v13, p0

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v8

    move-object/from16 v14, p1

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    and-int/lit16 v2, v8, 0x180

    move-object/from16 v10, p2

    if-nez v2, :cond_3

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x800

    goto :goto_3

    :cond_4
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    and-int/lit16 v2, v8, 0x6000

    move-object/from16 v15, p4

    if-nez v2, :cond_6

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x4000

    goto :goto_4

    :cond_5
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v1, v2

    :cond_6
    move-object/from16 v6, p5

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/high16 v2, 0x20000

    goto :goto_5

    :cond_7
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v1, v2

    const/high16 v2, 0x180000

    and-int/2addr v2, v8

    move-object/from16 v7, p6

    if-nez v2, :cond_9

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/high16 v2, 0x100000

    goto :goto_6

    :cond_8
    const/high16 v2, 0x80000

    :goto_6
    or-int/2addr v1, v2

    :cond_9
    const v2, 0x92493

    and-int/2addr v1, v2

    const v2, 0x92492

    if-ne v1, v2, :cond_b

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_8

    :cond_b
    :goto_7
    sget-object v1, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/motorola/camera/ui/compose/CustomColors;

    sget-object v1, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/motorola/camera/ui/compose/Dimensions;

    new-instance v9, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$CustomComposeDialog$4;

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v16, v7

    invoke-direct/range {v9 .. v18}, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$CustomComposeDialog$4;-><init>(Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/ui/compose/Dimensions;Lcom/motorola/camera/ui/compose/CustomColors;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f17af47

    invoke-static {v1, v9, v0}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lcom/motorola/camera/ui/compose/ThemeKt;->LightDarkCameraTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_c

    new-instance v0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method
