.class public abstract synthetic La/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lkotlin/jvm/functions/Function0;

.field public static addPageTime:J

.field public static autoCaptureDetectionTime:J

.field public static loadCapturePreviewTime:J

.field public static retakeTime:J

.field public static saveStartTime:J


# direct methods
.method public static final CropEditDialog(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 12

    move-object v8, p3

    move/from16 v11, p4

    const-string v0, "onKeepCropChanges"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRevertCropChanges"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDismiss"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x2b35011

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v11, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v11

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    and-int/lit8 v3, v11, 0x30

    const/16 v4, 0x20

    if-nez v3, :cond_3

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_3
    and-int/lit16 v3, v11, 0x180

    if-nez v3, :cond_5

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v0, v3

    :cond_5
    and-int/lit16 v3, v0, 0x93

    const/16 v5, 0x92

    if-ne v3, v5, :cond_7

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_6

    :cond_7
    :goto_4
    const v3, 0x7f12002c

    invoke-static {v3, p3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f120029

    invoke-static {v5, p3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f12002a

    invoke-static {v6, p3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x4c5de2

    invoke-virtual {p3, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v7, v0, 0x70

    const/4 v9, 0x0

    if-ne v7, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    move v4, v9

    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_9

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v7, v4, :cond_a

    :cond_9
    new-instance v7, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v7, v4, p1}, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {p3, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p3, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v1, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    sget-object v7, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/ComposableSingletons$CropEditDialogKt;->lambda$-1102902696:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    and-int/lit16 v4, v0, 0x380

    const/high16 v9, 0xc00000

    or-int/2addr v4, v9

    shl-int/lit8 v0, v0, 0xc

    const v9, 0xe000

    and-int/2addr v0, v9

    or-int v9, v4, v0

    const/4 v10, 0x1

    const/4 v0, 0x0

    move-object v4, p0

    move-object v2, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkc;->CustomComposeDialog(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    :goto_6
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_b

    new-instance v0, Lc/Z$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v11

    invoke-direct/range {v0 .. v5}, Lc/Z$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final DiscardScanDialog(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 12

    move v11, p3

    const-string v0, "onDismiss"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiscardScan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x781317e1

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v11

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x20

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x13

    const/16 v4, 0x12

    if-ne v1, v4, :cond_3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_4

    :cond_3
    :goto_2
    sget-object v1, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/compose/Dimensions;

    const v4, 0x7f12002f

    invoke-static {v4, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f12002d

    invoke-static {v5, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f12002a

    invoke-static {v6, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x4c5de2

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v7, v0, 0x70

    const/4 v9, 0x0

    if-ne v7, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v9

    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_5

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v7, v3, :cond_6

    :cond_5
    new-instance v7, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v7, v3, p1}, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v3, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DiscardScanDialogKt$DiscardScanDialog$2;

    const/4 v9, 0x0

    invoke-direct {v3, v1, v9}, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DiscardScanDialogKt$DiscardScanDialog$2;-><init>(Lcom/motorola/camera/ui/compose/Dimensions;I)V

    const v1, 0x70210eca

    invoke-static {v1, v3, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    shl-int/lit8 v3, v0, 0x6

    and-int/lit16 v3, v3, 0x380

    const/high16 v9, 0xc00000

    or-int/2addr v3, v9

    shl-int/lit8 v0, v0, 0xc

    const v9, 0xe000

    and-int/2addr v0, v9

    or-int v9, v3, v0

    const/4 v10, 0x1

    const/4 v0, 0x0

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v1

    move-object v1, v4

    move-object v4, p0

    move-object v2, p0

    move-object v8, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkc;->CustomComposeDialog(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, p3, v3, p0, p1}, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final DownloadAdobeDialog(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move/from16 v14, p4

    const-string v3, "positiveButton"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "dismissAction"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x102e012d

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v14, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v14

    goto :goto_1

    :cond_1
    move v3, v14

    :goto_1
    and-int/lit8 v4, v14, 0x30

    const/16 v5, 0x20

    if-nez v4, :cond_3

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x100

    if-eqz v4, :cond_4

    move v4, v6

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v3, v4

    and-int/lit16 v4, v3, 0x93

    const/16 v7, 0x92

    if-ne v4, v7, :cond_6

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_a

    :cond_6
    :goto_4
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    sget-object v7, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/Dimensions;

    const v8, 0x7f120021

    invoke-static {v8, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v0, :cond_7

    const v10, -0x2660318a

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v10, 0x7f12004f

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10, v12, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_5

    :cond_7
    const v10, -0x265eaa0b

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v10, 0x7f120034

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10, v12, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    if-eqz v0, :cond_8

    const v12, -0x265c972b

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v12, 0x7f12004e

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v12, v8, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_6

    :cond_8
    const v12, -0x265b0bad

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v12, 0x7f120033

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v12, v8, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_6
    if-eqz v0, :cond_9

    const v12, -0x2658dea5

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v12, 0x7f12004d

    invoke-static {v12, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_7

    :cond_9
    const v12, -0x26576a67

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v12, 0x7f120031

    invoke-static {v12, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_7
    const v13, 0x4c5de2

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit16 v13, v3, 0x380

    if-ne v13, v6, :cond_a

    const/4 v6, 0x1

    goto :goto_8

    :cond_a
    move v6, v9

    :goto_8
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v6, :cond_b

    if-ne v13, v15, :cond_c

    :cond_b
    new-instance v13, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda1;

    const/4 v6, 0x3

    invoke-direct {v13, v6, v2}, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v6, -0x615d173a

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    and-int/lit8 v3, v3, 0x70

    if-ne v3, v5, :cond_d

    const/16 v16, 0x1

    goto :goto_9

    :cond_d
    move/from16 v16, v9

    :goto_9
    or-int v3, v6, v16

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_e

    if-ne v5, v15, :cond_f

    :cond_e
    new-instance v5, Le/D$$ExternalSyntheticLambda2;

    const/4 v3, 0x2

    invoke-direct {v5, v3, v4, v1}, Le/D$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, 0x7f120032

    invoke-static {v3, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$StorageFull$2;

    const/4 v6, 0x1

    invoke-direct {v4, v6, v8, v7}, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$StorageFull$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v6, 0x5a3be296

    invoke-static {v6, v4, v11}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    move-object v6, v12

    const/high16 v12, 0xc00000

    move-object v7, v5

    move-object v5, v13

    const/4 v13, 0x1

    move-object v8, v3

    const/4 v3, 0x0

    move-object v9, v5

    move-object/from16 v17, v10

    move-object v10, v4

    move-object/from16 v4, v17

    invoke-static/range {v3 .. v13}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkc;->CustomComposeDialog(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    :goto_a
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_10

    new-instance v4, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DownloadAdobeDialogKt$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v1, v2, v14}, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DownloadAdobeDialogKt$$ExternalSyntheticLambda2;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method

.method public static final LoadingSavedSessionDialog(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 11

    const v1, 0x613592af

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, p2, 0x6

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v3, v1, 0x3

    if-ne v3, v2, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v2, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    new-instance v3, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DiscardScanDialogKt$DiscardScanDialog$2;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DiscardScanDialogKt$DiscardScanDialog$2;-><init>(Lcom/motorola/camera/ui/compose/Dimensions;I)V

    const v2, 0x222bed18

    invoke-static {v2, v3, p1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    and-int/lit8 v1, v1, 0xe

    const/high16 v2, 0xc00000

    or-int v9, v1, v2

    const/16 v10, 0x7e

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v8, p1

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkc;->CustomComposeDialog(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Le/T$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Le/T$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;I)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final MaterialTheme(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 45

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p4

    iget-object v3, v1, Landroidx/compose/material/Colors;->onError$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v4, v1, Landroidx/compose/material/Colors;->onSurface$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v5, v1, Landroidx/compose/material/Colors;->onBackground$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v6, v1, Landroidx/compose/material/Colors;->onSecondary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v7, v1, Landroidx/compose/material/Colors;->onPrimary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v8, v1, Landroidx/compose/material/Colors;->error$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v9, v1, Landroidx/compose/material/Colors;->surface$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v10, v1, Landroidx/compose/material/Colors;->background$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v11, v1, Landroidx/compose/material/Colors;->secondaryVariant$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v12, v1, Landroidx/compose/material/Colors;->secondary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v13, v1, Landroidx/compose/material/Colors;->primaryVariant$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const v14, -0x3521f1f7    # -7276292.5f

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x4

    goto :goto_0

    :cond_0
    const/4 v14, 0x2

    :goto_0
    or-int v14, p5, v14

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/16 v15, 0x20

    goto :goto_1

    :cond_1
    const/16 v15, 0x10

    :goto_1
    or-int/2addr v14, v15

    or-int/lit16 v14, v14, 0x80

    and-int/lit16 v15, v14, 0x493

    const/16 v1, 0x492

    move-object/from16 v16, v3

    const/4 v3, 0x1

    if-eq v15, v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    and-int/2addr v14, v3

    invoke-virtual {v0, v14, v1}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v1, p2

    goto :goto_4

    :cond_4
    :goto_3
    sget-object v1, Landroidx/compose/material/ShapesKt;->LocalShapes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material/Shapes;

    :goto_4
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v14, v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v19

    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/graphics/Color;

    move-object/from16 v44, v4

    iget-wide v3, v14, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v21, v3

    iget-wide v3, v14, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v23, v3

    iget-wide v3, v14, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v25, v3

    iget-wide v3, v14, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v27, v3

    iget-wide v3, v14, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v29, v3

    iget-wide v3, v14, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v31, v3

    iget-wide v3, v14, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v33, v3

    iget-wide v3, v14, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v35, v3

    iget-wide v3, v14, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-virtual/range {v44 .. v44}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v37, v3

    iget-wide v3, v14, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v39, v3

    iget-wide v3, v14, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/Colors;->isLight()Z

    move-result v43

    new-instance v18, Landroidx/compose/material/Colors;

    move-wide/from16 v41, v3

    invoke-direct/range {v18 .. v43}, Landroidx/compose/material/Colors;-><init>(JJJJJJJJJJJJZ)V

    move-object/from16 v14, v18

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    move-object/from16 v44, v4

    :goto_5
    check-cast v14, Landroidx/compose/material/Colors;

    sget-object v3, Landroidx/compose/material/ColorsKt;->LocalColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v3

    move-object/from16 v18, v5

    iget-object v5, v14, Landroidx/compose/material/Colors;->primary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-object/from16 v19, v6

    iget-object v6, v14, Landroidx/compose/material/Colors;->onSurface$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-object/from16 v20, v7

    iget-object v7, v14, Landroidx/compose/material/Colors;->onBackground$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-object/from16 v21, v8

    iget-object v8, v14, Landroidx/compose/material/Colors;->error$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-object/from16 v22, v9

    iget-object v9, v14, Landroidx/compose/material/Colors;->surface$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-object/from16 v23, v10

    iget-object v10, v14, Landroidx/compose/material/Colors;->secondaryVariant$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-object/from16 v24, v11

    iget-object v11, v14, Landroidx/compose/material/Colors;->secondary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-object/from16 v25, v12

    iget-object v12, v14, Landroidx/compose/material/Colors;->primaryVariant$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-object/from16 v26, v13

    iget-object v13, v14, Landroidx/compose/material/Colors;->onSecondary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v2, v14, Landroidx/compose/material/Colors;->onPrimary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-object/from16 v27, v1

    iget-object v1, v14, Landroidx/compose/material/Colors;->background$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-object/from16 p2, v15

    new-instance v15, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v15, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {v44 .. v44}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    iget-object v5, v14, Landroidx/compose/material/Colors;->onError$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v15, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v15, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/Colors;->isLight()Z

    move-result v3

    iget-object v4, v14, Landroidx/compose/material/Colors;->isLight$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object v3, Landroidx/compose/material/RippleKt;->LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    const/high16 v5, 0x7fc00000    # Float.NaN

    invoke-static {v5, v5}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v3, v4, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroidx/compose/material/RippleKt;->DefaultBoundedRipple:Landroidx/compose/material/RippleNodeFactory;

    :goto_6
    move-object/from16 v16, v1

    move-object v15, v2

    goto :goto_7

    :cond_6
    new-instance v5, Landroidx/compose/material/RippleNodeFactory;

    const/4 v15, 0x1

    invoke-direct {v5, v3, v4, v15}, Landroidx/compose/material/RippleNodeFactory;-><init>(JZ)V

    goto :goto_6

    :goto_7
    invoke-virtual {v14}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-wide/from16 v19, v3

    move-object/from16 v3, v18

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-object/from16 v18, v6

    const v6, 0x41bad364

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v21, v7

    invoke-virtual {v14}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    goto/16 :goto_8

    :cond_8
    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    goto :goto_8

    :cond_9
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    goto :goto_8

    :cond_a
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    goto :goto_8

    :cond_b
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    goto :goto_8

    :cond_c
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v14, Landroidx/compose/material/Colors;->onError$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    goto :goto_8

    :cond_d
    move-wide/from16 v6, v19

    :goto_8
    const-wide/16 v8, 0x10

    cmp-long v8, v6, v8

    if-eqz v8, :cond_e

    :goto_9
    const/4 v8, 0x0

    goto :goto_a

    :cond_e
    sget-object v6, Landroidx/compose/material/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    goto :goto_9

    :goto_a
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v9, Landroidx/compose/material/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/Color;

    iget-wide v9, v9, Landroidx/compose/ui/graphics/Color;->value:J

    sget-object v11, Landroidx/compose/material/ColorsKt;->LocalColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/material/Colors;

    invoke-virtual {v11}, Landroidx/compose/material/Colors;->isLight()Z

    move-result v11

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    if-eqz v11, :cond_f

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Brush;->luminance-8_81llA(J)F

    move-result v9

    float-to-double v9, v9

    cmpl-double v9, v9, v12

    if-lez v9, :cond_10

    goto :goto_b

    :cond_f
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Brush;->luminance-8_81llA(J)F

    move-result v9

    float-to-double v9, v9

    cmpg-double v9, v9, v12

    if-gez v9, :cond_10

    :goto_b
    const v9, 0x3f3d70a4    # 0.74f

    goto :goto_c

    :cond_10
    const v9, 0x3f19999a    # 0.6f

    :goto_c
    invoke-static {v9, v6, v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v6

    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v9

    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    if-nez v9, :cond_11

    move-object/from16 v9, p2

    if-ne v10, v9, :cond_17

    :cond_11
    new-instance v10, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    invoke-virtual {v14}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v8

    const v18, 0x3ecccccd    # 0.4f

    move-wide/from16 v19, v1

    move-wide/from16 v23, v3

    move-wide/from16 v21, v6

    invoke-static/range {v18 .. v24}, La/l;->calculateContrastRatio-nb2GgbA(FJJJ)F

    move-result v1

    const v18, 0x3e4ccccd    # 0.2f

    invoke-static/range {v18 .. v24}, La/l;->calculateContrastRatio-nb2GgbA(FJJJ)F

    move-result v2

    const/high16 v3, 0x40900000    # 4.5f

    cmpl-float v1, v1, v3

    const v4, 0x3ecccccd    # 0.4f

    if-ltz v1, :cond_12

    move v2, v4

    :goto_d
    move-wide/from16 v3, v19

    goto :goto_11

    :cond_12
    cmpg-float v1, v2, v3

    const v2, 0x3e4ccccd    # 0.2f

    if-gez v1, :cond_13

    goto :goto_d

    :cond_13
    move/from16 v18, v4

    const/4 v1, 0x0

    :goto_e
    const/4 v6, 0x7

    if-ge v1, v6, :cond_16

    invoke-static/range {v18 .. v24}, La/l;->calculateContrastRatio-nb2GgbA(FJJJ)F

    move-result v6

    move/from16 p2, v3

    move v7, v4

    move-wide/from16 v3, v19

    div-float v6, v6, p2

    sub-float/2addr v6, v11

    const/4 v15, 0x0

    cmpg-float v16, v15, v6

    if-gtz v16, :cond_14

    const v16, 0x3c23d70a    # 0.01f

    cmpg-float v16, v6, v16

    if-gtz v16, :cond_14

    goto :goto_10

    :cond_14
    cmpg-float v6, v6, v15

    if-gez v6, :cond_15

    goto :goto_f

    :cond_15
    move/from16 v2, v18

    move/from16 v18, v7

    :goto_f
    add-float v6, v18, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v19, v3

    move/from16 v4, v18

    move/from16 v3, p2

    move/from16 v18, v6

    goto :goto_e

    :cond_16
    move-wide/from16 v3, v19

    :goto_10
    move/from16 v2, v18

    :goto_11
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v1

    invoke-direct {v10, v8, v9, v1, v2}, Landroidx/compose/foundation/text/selection/TextSelectionColors;-><init>(JJ)V

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_17
    check-cast v10, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    sget-object v1, Landroidx/compose/material/ColorsKt;->LocalColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v15

    sget-object v2, Landroidx/compose/material/ContentAlphaKt;->LocalContentAlpha:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    sget-object v3, Landroidx/compose/material/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material/Colors;

    invoke-virtual {v1}, Landroidx/compose/material/Colors;->isLight()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Brush;->luminance-8_81llA(J)F

    move-result v1

    float-to-double v3, v1

    cmpl-double v1, v3, v12

    if-lez v1, :cond_19

    goto :goto_12

    :cond_18
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Brush;->luminance-8_81llA(J)F

    move-result v1

    float-to-double v3, v1

    cmpg-double v1, v3, v12

    if-gez v1, :cond_19

    goto :goto_12

    :cond_19
    const v11, 0x3f5eb852    # 0.87f

    :goto_12
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v16

    sget-object v1, Landroidx/compose/foundation/IndicationKt;->LocalIndication:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v17

    sget-object v1, Landroidx/compose/material/ShapesKt;->LocalShapes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    move-object/from16 v2, v27

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v18

    sget-object v1, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v19

    sget-object v1, Landroidx/compose/material/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v20

    filled-new-array/range {v15 .. v20}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    new-instance v4, Landroidx/compose/material/TextKt$ProvideTextStyle$1;

    move-object/from16 v5, p3

    invoke-direct {v4, v3, v5}, Landroidx/compose/material/TextKt$ProvideTextStyle$1;-><init>(Landroidx/compose/material/Typography;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v6, -0x67b7dd37

    invoke-static {v6, v4, v0}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/16 v6, 0x38

    invoke-static {v1, v4, v0, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_13

    :cond_1a
    move-object/from16 v5, p3

    move-object v3, v2

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v2, p2

    :goto_13
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_1b

    new-instance v0, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;

    move-object v1, v3

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p0

    move-object v4, v5

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;-><init>(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method

.method public static final PlatformMaterialTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 3

    const v0, -0x4eda09f6

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    and-int/lit8 v2, v0, 0x3

    if-eq v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2, v1}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$1$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$1$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method

.method public static final PoweredByAdobeScan(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const v1, 0x37aa5b0a

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p3, v1

    or-int/lit8 v1, v1, 0x10

    and-int/lit8 v1, v1, 0x13

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v1, p1

    goto/16 :goto_5

    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v1, p1

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->scanUiManager:Lh/H;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lh/H;->h:Lh/t;

    invoke-virtual {v1, v7}, Lh/t;->getDrawable(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    :goto_3
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v2, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/motorola/camera/ui/compose/Dimensions;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    iget v3, v10, Lcom/motorola/camera/ui/compose/Dimensions;->poweredByAdobeHeight:F

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    iget v12, v10, Lcom/motorola/camera/ui/compose/Dimensions;->poweredByAdobePaddingStart:F

    iget v15, v10, Lcom/motorola/camera/ui/compose/Dimensions;->poweredByAdobePaddingBottom:F

    const/16 v16, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    const/16 v5, 0x30

    invoke-static {v4, v2, v7, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    iget v4, v7, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v7, v3}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_5

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v2, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v5, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v5, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_6

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4, v2}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_7
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v3, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget v14, v10, Lcom/motorola/camera/ui/compose/Dimensions;->poweredByAdobePaddingEnd:F

    const/4 v15, 0x0

    const/16 v16, 0xb

    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget v3, v10, Lcom/motorola/camera/ui/compose/Dimensions;->poweredByAdobeIconSize:F

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v8, 0x30

    const/16 v9, 0x78

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FLandroidx/compose/runtime/ComposerImpl;II)V

    move-object/from16 v22, v1

    const v1, 0x7f120021

    invoke-static {v1, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1203c1

    invoke-static {v2, v1, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v10, Lcom/motorola/camera/ui/compose/Dimensions;->poweredByAdobeFontSize:J

    sget-object v4, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v4, v4, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum80:J

    new-instance v17, Landroidx/compose/ui/text/TextStyle;

    const-wide/16 v32, 0x0

    const v34, 0xff7ffc

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x3

    move-wide/from16 v26, v2

    move-wide/from16 v24, v4

    move-object/from16 v23, v17

    invoke-direct/range {v23 .. v34}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    const/16 v20, 0x0

    const v21, 0xfffe

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, p2

    invoke-static/range {v1 .. v21}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    move-object/from16 v7, v18

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v1, v22

    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v3, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    move/from16 v5, p3

    invoke-direct {v3, v5, v4, v0, v1}, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public static final ResumeSavedSessionDialog(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    move/from16 v12, p4

    const-string v1, "onDiscardScan"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onResumeScan"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x6e402c1a

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v9, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v12

    invoke-virtual {v9, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x100

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    and-int/lit16 v2, v1, 0x93

    const/16 v4, 0x92

    if-ne v2, v4, :cond_4

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_4
    :goto_3
    sget-object v2, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    const v4, 0x6e3c21fe

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v4, v5, :cond_5

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v4, Landroidx/compose/runtime/MutableState;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    const v2, -0x22ef08b

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v1, v1, 0xe

    invoke-static {p0, v9, v1}, La/l;->LoadingSavedSessionDialog(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_5

    :cond_6
    const v6, -0x22d9865

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v6, 0x7f120046

    invoke-static {v6, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f120043

    invoke-static {v7, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v7

    const v8, -0x615d173a

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit16 v8, v1, 0x380

    if-ne v8, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    move v3, v13

    :goto_4
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_8

    if-ne v8, v5, :cond_9

    :cond_8
    new-instance v8, Le/D$$ExternalSyntheticLambda2;

    const/4 v3, 0x3

    invoke-direct {v8, v3, v0, v4}, Le/D$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    move-object v5, v8

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, 0x7f120044

    invoke-static {v3, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DiscardScanDialogKt$DiscardScanDialog$2;

    const/4 v8, 0x2

    invoke-direct {v4, v2, v8}, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DiscardScanDialogKt$DiscardScanDialog$2;-><init>(Lcom/motorola/camera/ui/compose/Dimensions;I)V

    const v2, -0x5f62034b

    invoke-static {v2, v4, v9}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    and-int/lit8 v2, v1, 0xe

    const/high16 v4, 0xc00000

    or-int/2addr v2, v4

    shl-int/lit8 v1, v1, 0xf

    const/high16 v4, 0x380000

    and-int/2addr v1, v4

    or-int v10, v2, v1

    const/4 v11, 0x4

    move-object v2, v6

    move-object v6, v3

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, v7

    move-object v7, p1

    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkc;->CustomComposeDialog(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v3, Le/D$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, v0, v12}, Le/D$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static final SaveLocationDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 12

    move v11, p3

    const-string v0, "onDismiss"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x5d379b6a

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v11

    and-int/lit8 v1, v0, 0x13

    const/16 v3, 0x12

    if-ne v1, v3, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_2
    :goto_1
    const v1, 0x7f12004a

    invoke-static {v1, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f120141

    invoke-static {v3, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Le/S;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v5}, Le/S;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    const v5, -0x1329ba01

    invoke-static {v5, v4, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    shl-int/lit8 v4, v0, 0x6

    and-int/lit16 v4, v4, 0x380

    const/high16 v5, 0xc00000

    or-int/2addr v4, v5

    shl-int/lit8 v0, v0, 0xc

    const v5, 0xe000

    and-int/2addr v0, v5

    or-int v9, v4, v0

    const/16 v10, 0x61

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    move-object v2, p0

    move-object v8, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkc;->CustomComposeDialog(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v1, p3, v3, p0, p1}, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method

.method public static final SaveLocationDialogText(Ljava/lang/String;Ljava/util/Map;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move/from16 v7, p3

    const-string v0, "text"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3eabcdf3

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v7

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    and-int/lit8 v3, v0, 0x13

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_4

    :cond_3
    :goto_2
    sget-object v3, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v8, 0x0

    invoke-static {v4, v6, v5, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v4

    iget v6, v5, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v5, v9}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_4

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v4, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v8, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v8, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v8, :cond_5

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_6
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v9, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/CustomColors;

    new-instance v8, Landroidx/compose/ui/text/SpanStyle;

    iget-wide v9, v4, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTextColor:J

    iget-wide v11, v3, Lcom/motorola/camera/ui/compose/Dimensions;->dialogFontSize:J

    iget v4, v3, Lcom/motorola/camera/ui/compose/Dimensions;->dialogTextWeight:I

    new-instance v13, Landroidx/compose/ui/text/font/FontWeight;

    invoke-direct {v13, v4}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    iget-wide v14, v3, Lcom/motorola/camera/ui/compose/Dimensions;->dialogLetterSpacing:J

    const/16 v26, 0x0

    const v27, 0xff78

    move-wide/from16 v18, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v8 .. v27}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    new-instance v9, Landroidx/compose/ui/text/SpanStyle;

    const v6, 0x7f060421

    invoke-static {v6, v5}, Landroidx/compose/ui/res/ColorResources_androidKt;->colorResource(ILandroidx/compose/runtime/ComposerImpl;)J

    move-result-wide v10

    iget-wide v12, v3, Lcom/motorola/camera/ui/compose/Dimensions;->dialogFontSize:J

    new-instance v14, Landroidx/compose/ui/text/font/FontWeight;

    invoke-direct {v14, v4}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    iget-wide v3, v3, Lcom/motorola/camera/ui/compose/Dimensions;->dialogLetterSpacing:J

    const/16 v27, 0x0

    const v28, 0xef78

    const/16 v18, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    sget-object v26, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    move-wide/from16 v19, v3

    invoke-direct/range {v9 .. v28}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    move-object v4, v9

    shl-int/lit8 v0, v0, 0x3

    and-int/lit16 v6, v0, 0x3f0

    const/4 v0, 0x0

    move-object v3, v8

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzke;->MultipleClickableText(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/Map;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/runtime/ComposerImpl;I)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v3, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v3, v7, v4, v1, v2}, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final ShowForMillis(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 5

    const v0, -0x352b6211    # -6967031.5f

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    or-int/lit16 v0, p4, 0x1b0

    and-int/lit16 v0, v0, 0x493

    const/16 v1, 0x492

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    const p0, 0x6e3c21fe

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne p1, v0, :cond_2

    new-instance p1, Lb/o$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Lb/o$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast p1, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    new-instance v2, Lb/o$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lb/o$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const-wide/16 v3, 0xbb8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const v4, -0x48fade91

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_5

    new-instance v4, Lcom/motorola/camera/adobe_scan/ui/compose/ShowForMillisKt$ShowForMillis$3$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v2, p0, v0}, Lcom/motorola/camera/adobe_scan/ui/compose/ShowForMillisKt$ShowForMillis$3$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p3, v3, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object p0, p1

    move-object p1, v2

    :goto_1
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_7

    new-instance v0, Le/D$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p4}, Le/D$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final StorageFull(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 3

    const v0, 0x1a6ef824

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

    or-int/lit8 v0, v0, 0x30

    and-int/lit8 v0, v0, 0x13

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_2
    :goto_1
    const p1, 0x6e3c21fe

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne p1, v0, :cond_3

    new-instance p1, Lb/o$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lb/o$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast p1, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$StorageFull$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$StorageFull$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v1, -0x431add40

    invoke-static {v1, v0, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0xc06

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, p2, v1}, La/l;->ShowForMillis(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final StorageFullPill(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    const v2, 0x441af92b

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p3, v2

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v2, v3

    and-int/lit8 v3, v2, 0x13

    const/16 v5, 0x12

    const/4 v11, 0x1

    if-ne v3, v5, :cond_3

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move v0, v11

    goto/16 :goto_5

    :cond_3
    :goto_2
    sget-object v3, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/motorola/camera/ui/compose/Dimensions;

    sget-object v3, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/motorola/camera/ui/compose/CustomColors;

    iget v3, v12, Lcom/motorola/camera/ui/compose/Dimensions;->storageFullWidth:F

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget v5, v12, Lcom/motorola/camera/ui/compose/Dimensions;->storageFullHeight:F

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    const v3, 0x6e3c21fe

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v3, v5, :cond_4

    new-instance v3, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v3}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    move-object v15, v3

    check-cast v15, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v6, 0x4c5de2

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v2, v2, 0x70

    if-ne v2, v4, :cond_5

    move v2, v11

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_6

    if-ne v4, v5, :cond_7

    :cond_6
    new-instance v4, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, v1}, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    move-object/from16 v19, v4

    check-cast v19, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v20, 0x1c

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-wide v3, v13, Lcom/motorola/camera/ui/compose/CustomColors;->storageFullBackgroundColor:J

    iget v5, v12, Lcom/motorola/camera/ui/compose/Dimensions;->storageFullRoundedCorners:F

    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    iget v3, v12, Lcom/motorola/camera/ui/compose/Dimensions;->storageFullArrangementSpace:F

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-D5KLDUw(FLandroidx/compose/ui/BiasAlignment$Horizontal;)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v5, 0x30

    invoke-static {v3, v4, v8, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v3

    iget v4, v8, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v8, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v8, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_8

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v8, v3, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v8, v5, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v5, v8, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_9

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4, v3}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_a
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v8, v2, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    iget v3, v12, Lcom/motorola/camera/ui/compose/Dimensions;->bottomBarButtonIconSize:F

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v2, 0x7f080204

    const/4 v3, 0x6

    invoke-static {v2, v8, v3}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v2

    const/16 v9, 0x30

    const/16 v10, 0x78

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FLandroidx/compose/runtime/ComposerImpl;II)V

    const v2, 0x7f12015a

    invoke-static {v2, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v2

    iget-wide v6, v12, Lcom/motorola/camera/ui/compose/Dimensions;->storageFullFontSize:J

    iget-wide v4, v13, Lcom/motorola/camera/ui/compose/CustomColors;->storageFullTextColor:J

    const/16 v21, 0x0

    const v22, 0x1fff2

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move v12, v11

    const/4 v11, 0x0

    move v14, v12

    const-wide/16 v12, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v19, p2

    invoke-static/range {v2 .. v22}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    move-object/from16 v8, v19

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance v3, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda0;

    move-object/from16 v4, p0

    move/from16 v5, p3

    invoke-direct {v3, v4, v1, v5, v0}, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static a(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static a(IZ)I
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p1

    add-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x1f

    return p1
.end method

.method public static a(Landroidx/compose/runtime/MutableState;I)I
    .locals 0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static final a(FJ)J
    .locals 11

    const/16 v0, 0x168

    int-to-float v0, v0

    rem-float v0, p0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpg-float v1, v0, v1

    const/16 v2, 0x20

    const-wide v3, 0xffffffffL

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x3c790000    # -270.0f

    cmpg-float v1, v0, v1

    if-nez v1, :cond_1

    :goto_0
    and-long v0, p1, v3

    long-to-int p0, v0

    .line 4
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    neg-float p0, p0

    shr-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    .line 6
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long/2addr v0, v2

    and-long/2addr p0, v3

    or-long/2addr p0, v0

    return-wide p0

    :cond_1
    const/high16 v1, 0x43340000    # 180.0f

    cmpg-float v1, v0, v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-nez v1, :cond_3

    :goto_1
    shr-long v0, p1, v2

    long-to-int p0, v0

    .line 7
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    neg-float p0, p0

    and-long/2addr p1, v3

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    neg-float p1, p1

    .line 8
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    .line 9
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long/2addr v0, v2

    and-long/2addr p0, v3

    or-long/2addr p0, v0

    return-wide p0

    :cond_3
    const/high16 v1, 0x43870000    # 270.0f

    cmpg-float v1, v0, v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpg-float v1, v0, v1

    if-nez v1, :cond_5

    :goto_2
    and-long v0, p1, v3

    long-to-int p0, v0

    .line 10
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    shr-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    neg-float p1, p1

    .line 11
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    .line 12
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long/2addr v0, v2

    and-long/2addr p0, v3

    or-long/2addr p0, v0

    return-wide p0

    :cond_5
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6

    return-wide p1

    :cond_6
    float-to-double v0, p0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    shr-long v7, p1, v2

    long-to-int p0, v7

    .line 16
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v7, v5

    and-long/2addr p1, v3

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    float-to-double v9, p2

    mul-double/2addr v9, v0

    sub-double/2addr v7, v9

    double-to-float p2, v7

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    float-to-double v7, p0

    mul-double/2addr v7, v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    float-to-double p0, p0

    mul-double/2addr p0, v5

    add-double/2addr p0, v7

    double-to-float p0, p0

    .line 17
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    .line 18
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    shl-long p0, p1, v2

    and-long/2addr v0, v3

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final a(JJ)J
    .locals 6

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    .line 168
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    shr-long v2, p2, v0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr p0, v4

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    and-long p1, p2, v4

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    sub-float/2addr p1, v3

    mul-float/2addr p1, p0

    .line 169
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p2, p0

    .line 170
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long/2addr p2, v0

    and-long/2addr p0, v4

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static final a(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 4

    .line 116
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p1

    iget v3, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, p1

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static a()Lb/o;
    .locals 2

    .line 19
    sget-object v0, La/l;->a:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lb/o;

    invoke-direct {v0}, Lb/o;-><init>()V

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Edge Detection provider not initialized"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lc/z1;)Lc/A1;
    .locals 7

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/high16 v0, 0x447c0000    # 1008.0f

    const v1, 0x4494d1a3

    const v2, 0x43d1c387

    const/high16 v3, 0x44460000    # 792.0f

    const v4, 0x445278f3

    const v5, 0x4414d1a3

    const/high16 v6, 0x44190000    # 612.0f

    packed-switch p0, :pswitch_data_0

    .line 23
    new-instance p0, Lc/A1;

    invoke-direct {p0, v6, v3}, Lc/A1;-><init>(FF)V

    return-object p0

    .line 24
    :pswitch_0
    new-instance p0, Lc/A1;

    invoke-direct {p0, v5, v2}, Lc/A1;-><init>(FF)V

    return-object p0

    .line 25
    :pswitch_1
    new-instance p0, Lc/A1;

    invoke-direct {p0, v2, v5}, Lc/A1;-><init>(FF)V

    return-object p0

    .line 26
    :pswitch_2
    new-instance p0, Lc/A1;

    invoke-direct {p0, v4, v5}, Lc/A1;-><init>(FF)V

    return-object p0

    .line 27
    :pswitch_3
    new-instance p0, Lc/A1;

    invoke-direct {p0, v5, v4}, Lc/A1;-><init>(FF)V

    return-object p0

    .line 28
    :pswitch_4
    new-instance p0, Lc/A1;

    invoke-direct {p0, v1, v4}, Lc/A1;-><init>(FF)V

    return-object p0

    .line 29
    :pswitch_5
    new-instance p0, Lc/A1;

    invoke-direct {p0, v4, v1}, Lc/A1;-><init>(FF)V

    return-object p0

    .line 30
    :pswitch_6
    new-instance p0, Lc/A1;

    invoke-direct {p0, v0, v6}, Lc/A1;-><init>(FF)V

    return-object p0

    .line 31
    :pswitch_7
    new-instance p0, Lc/A1;

    invoke-direct {p0, v6, v0}, Lc/A1;-><init>(FF)V

    return-object p0

    .line 32
    :pswitch_8
    new-instance p0, Lc/A1;

    invoke-direct {p0, v3, v6}, Lc/A1;-><init>(FF)V

    return-object p0

    .line 33
    :pswitch_9
    new-instance p0, Lc/A1;

    invoke-direct {p0, v6, v3}, Lc/A1;-><init>(FF)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lorg/json/JSONObject;)Lc/J;
    .locals 1

    .line 34
    sget-object v0, Lc/X;->E:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 36
    sget-object v0, Lc/X;->V:Ljava/lang/String;

    .line 37
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Business Card"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "BusinessCard"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 38
    :cond_0
    sget-object v0, Lc/X;->W:Ljava/lang/String;

    .line 39
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Whiteboard"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 40
    :cond_1
    sget-object v0, Lc/X;->U:Ljava/lang/String;

    .line 41
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Document"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 42
    :cond_2
    sget-object v0, Lc/X;->X:Ljava/lang/String;

    .line 43
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ID Card"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "IdCard"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 44
    :cond_3
    sget-object v0, Lc/X;->Y:Ljava/lang/String;

    .line 45
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Book"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :cond_5
    :goto_0
    sget-object p0, Lc/J;->b:Lc/J;

    return-object p0

    .line 46
    :cond_6
    :goto_1
    sget-object p0, Lc/J;->d:Lc/J;

    return-object p0

    .line 47
    :cond_7
    :goto_2
    sget-object p0, Lc/J;->c:Lc/J;

    return-object p0

    .line 48
    :cond_8
    :goto_3
    sget-object p0, Lc/J;->a:Lc/J;

    return-object p0

    .line 49
    :cond_9
    :goto_4
    sget-object p0, Lc/J;->e:Lc/J;

    return-object p0
.end method

.method public static a(Landroid/net/Uri;Lc/h;)Lc/X;
    .locals 8

    sget-object v0, Lc/X;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Page"

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    .line 62
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 63
    :cond_0
    invoke-static {}, La/z;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_5

    .line 64
    :cond_1
    invoke-virtual {v3, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 65
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 66
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 67
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "US"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "toLowerCase(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-nez v4, :cond_3

    goto :goto_5

    .line 69
    :cond_3
    sget-object v2, Lg/Q;->a:Ljava/util/List;

    .line 70
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5

    .line 71
    :cond_4
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_7

    .line 72
    :try_start_1
    invoke-static {v4}, Lg/Q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v3}, Lg/Z;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_3

    :cond_5
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_6

    .line 73
    :try_start_2
    invoke-static {v2, v3}, Lorg/apache/commons/io/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v3

    .line 75
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    :cond_6
    :goto_2
    :try_start_6
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    goto :goto_4

    .line 77
    :goto_3
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 78
    :goto_4
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_5
    move-object v3, v1

    :goto_6
    if-nez v3, :cond_8

    goto/16 :goto_c

    .line 79
    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_c

    .line 81
    :cond_9
    :try_start_9
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 82
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 83
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 84
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v7, 0x64

    if-le v6, v7, :cond_10

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v7, :cond_10

    .line 85
    sget-object v4, Lg/Q;->a:Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_3

    const/4 v4, 0x0

    if-nez v2, :cond_a

    goto :goto_9

    .line 86
    :cond_a
    :try_start_a
    new-instance v6, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v6, v2}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v2, "Orientation"

    .line 88
    invoke-virtual {v6, v2}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_3

    const/4 v7, -0x1

    if-nez v2, :cond_b

    goto :goto_7

    .line 89
    :cond_b
    :try_start_b
    iget-object v6, v6, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_8

    :catch_1
    :goto_7
    move v2, v7

    :goto_8
    if-eq v2, v7, :cond_f

    const/4 v6, 0x3

    if-eq v2, v6, :cond_e

    const/4 v6, 0x6

    if-eq v2, v6, :cond_d

    const/16 v6, 0x8

    if-eq v2, v6, :cond_c

    goto :goto_9

    :cond_c
    const/16 v4, 0x10e

    goto :goto_9

    :cond_d
    const/16 v4, 0x5a

    goto :goto_9

    :cond_e
    const/16 v4, 0xb4

    goto :goto_9

    :catch_2
    move-exception v2

    .line 90
    :try_start_c
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "g.B"

    invoke-static {v6, v2}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_9
    const v2, 0x16e3600

    .line 91
    invoke-static {v3, v2, v5}, Lg/Z;->a(Ljava/io/File;IZ)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 92
    new-instance v3, Lc/X;

    invoke-direct {v3, v2, v4, p0, p1}, Lc/X;-><init>(Ljava/io/File;ILandroid/net/Uri;Lc/h;)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 93
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v3, v1, p0}, Lc/X;->a(Lc/z1;Ljava/lang/Float;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_3

    move-object v1, v3

    goto :goto_c

    :catch_3
    move-exception p0

    goto :goto_a

    :catch_4
    move-exception p0

    goto :goto_b

    .line 94
    :goto_a
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 95
    :goto_b
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_c
    return-object v1
.end method

.method public static final a(Lc/a;Lc/a;F)Lc/a;
    .locals 11

    const-string v0, "start"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "stop"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    new-instance v2, Lc/a;

    .line 172
    iget-object p0, p0, Lc/a;->a:[Landroid/graphics/PointF;

    iget-object p1, p1, Lc/a;->a:[Landroid/graphics/PointF;

    .line 173
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_1

    .line 175
    array-length v3, p0

    new-array v4, v3, [Landroid/graphics/PointF;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 176
    aget-object v6, p0, v5

    aget-object v7, p1, v5

    .line 177
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v8, Landroid/graphics/PointF;

    .line 179
    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v10, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v9, v10, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v9

    .line 180
    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v7, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v6

    .line 181
    invoke-direct {v8, v9, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 182
    aput-object v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 183
    :cond_0
    invoke-direct {v2, v4}, Lc/a;-><init>([Landroid/graphics/PointF;)V

    return-object v2

    .line 184
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Le/W0;FZ)Le/N;
    .locals 8

    const-string v0, "scaleParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1, p2}, Le/W0;->a(FZ)F

    move-result v6

    .line 51
    new-instance v1, Le/N;

    .line 52
    iget-wide v2, p0, Le/W0;->b:J

    .line 53
    new-instance v7, Le/O$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v6, p1}, Le/O$$ExternalSyntheticLambda1;-><init>(Le/W0;FF)V

    const-wide/16 v4, 0x0

    .line 54
    invoke-direct/range {v1 .. v7}, Le/N;-><init>(JJFLkotlin/jvm/functions/Function1;)V

    return-object v1
.end method

.method public static final a(JJ)Le/W0;
    .locals 13

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    .line 185
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const-wide v2, 0xffffffffL

    and-long v4, p0, v2

    long-to-int v4, v4

    .line 186
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    shr-long v5, p2, v0

    long-to-int v0, v5

    .line 187
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    div-float v5, v1, v5

    and-long/2addr v2, p2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    div-float v3, v4, v3

    .line 188
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 189
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    div-float/2addr v4, v0

    .line 190
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 191
    new-instance v6, Le/W0;

    move-wide v7, p0

    move-wide v9, p2

    invoke-direct/range {v6 .. v12}, Le/W0;-><init>(JJFF)V

    return-object v6
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 55
    new-instance v0, Ljava/io/File;

    .line 56
    invoke-static {}, La/z;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 57
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static final a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 3

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    const v1, 0x1b3ad331

    .line 96
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, p2, 0x6

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v2, p2, 0x30

    if-nez v2, :cond_3

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit8 v1, v1, 0x13

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 97
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_4

    .line 98
    :cond_5
    :goto_3
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 99
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    .line 100
    new-instance v1, Le/S;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/S;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    const v2, 0x6aa427f1

    invoke-static {v2, v1, p1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, p1, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    .line 101
    :goto_4
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Le/T$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Le/T$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 102
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final a(Landroidx/compose/ui/graphics/AndroidImageBitmap;JFLandroidx/compose/ui/Modifier;FFJLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 25

    move-object/from16 v14, p0

    move-object/from16 v15, p4

    move/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v0, p10

    move/from16 v1, p11

    const-string v2, "image"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x406a7a19

    .line 117
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v1, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    and-int/lit8 v4, v1, 0x30

    move-wide/from16 v10, p1

    if-nez v4, :cond_3

    invoke-virtual {v0, v10, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :cond_3
    and-int/lit16 v4, v1, 0x180

    if-nez v4, :cond_5

    move/from16 v4, p3

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x100

    goto :goto_3

    :cond_4
    const/16 v12, 0x80

    :goto_3
    or-int/2addr v2, v12

    goto :goto_4

    :cond_5
    move/from16 v4, p3

    :goto_4
    and-int/lit16 v12, v1, 0xc00

    if-nez v12, :cond_7

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x800

    goto :goto_5

    :cond_6
    const/16 v12, 0x400

    :goto_5
    or-int/2addr v2, v12

    :cond_7
    and-int/lit16 v12, v1, 0x6000

    if-nez v12, :cond_9

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x4000

    goto :goto_6

    :cond_8
    const/16 v12, 0x2000

    :goto_6
    or-int/2addr v2, v12

    :cond_9
    const/high16 v12, 0x30000

    or-int/2addr v2, v12

    const/high16 v12, 0x180000

    and-int v16, v1, v12

    move/from16 v17, v12

    if-nez v16, :cond_b

    invoke-virtual {v0, v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_a

    const/high16 v16, 0x100000

    goto :goto_7

    :cond_a
    const/high16 v16, 0x80000

    :goto_7
    or-int v2, v2, v16

    :cond_b
    const/high16 v16, 0xc00000

    and-int v16, v1, v16

    const/16 v18, 0x20

    move-object/from16 v7, p9

    if-nez v16, :cond_d

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    const/high16 v19, 0x800000

    goto :goto_8

    :cond_c
    const/high16 v19, 0x400000

    :goto_8
    or-int v2, v2, v19

    :cond_d
    const v19, 0x492493

    and-int v5, v2, v19

    const v12, 0x492492

    if-ne v5, v12, :cond_f

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_9

    .line 118
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v7, p6

    move-object v15, v0

    goto/16 :goto_14

    .line 119
    :cond_f
    :goto_9
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_11

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_a

    .line 120
    :cond_10
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v5, p6

    goto :goto_b

    :cond_11
    :goto_a
    const/high16 v5, 0x40200000    # 2.5f

    .line 121
    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    .line 122
    sget-object v12, Le/j1;->c:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 123
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/i1;

    .line 124
    iget-object v12, v12, Le/i1;->F:Le/y;

    .line 125
    iget-wide v3, v12, Le/y;->a:J

    const/4 v12, 0x3

    int-to-float v12, v12

    const v13, 0x7f66af8a

    .line 126
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 127
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    .line 128
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move/from16 p6, v5

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v13, :cond_12

    if-ne v1, v5, :cond_13

    .line 129
    :cond_12
    iget-object v1, v14, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 130
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    .line 131
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 132
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v6, v13

    .line 133
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    move-wide/from16 v20, v6

    int-to-long v6, v1

    shl-long v20, v20, v18

    const-wide v22, 0xffffffffL

    and-long v6, v6, v22

    or-long v6, v20, v6

    .line 134
    new-instance v1, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v1, v6, v7}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 135
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 136
    :cond_13
    check-cast v1, Landroidx/compose/ui/geometry/Size;

    .line 137
    iget-wide v6, v1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    const/4 v1, 0x0

    .line 138
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v13, 0x2

    int-to-float v13, v13

    mul-float v13, v13, p5

    .line 139
    invoke-static {v15, v13}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const v1, 0x7f66c4d2

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 140
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_14

    .line 141
    new-instance v1, Lc/a$$ExternalSyntheticLambda0;

    const/4 v10, 0x7

    invoke-direct {v1, v10}, Lc/a$$ExternalSyntheticLambda0;-><init>(I)V

    .line 142
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 143
    :cond_14
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v10, 0x0

    .line 144
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 145
    invoke-static {v13, v1}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v11, 0x7f66d373

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v11, 0xe000

    and-int/2addr v11, v2

    const/16 v10, 0x4000

    if-ne v11, v10, :cond_15

    const/4 v10, 0x1

    goto :goto_c

    :cond_15
    const/4 v10, 0x0

    :goto_c
    const/high16 v11, 0x380000

    and-int/2addr v11, v2

    xor-int v11, v11, v17

    const/high16 v13, 0x100000

    if-le v11, v13, :cond_16

    invoke-virtual {v0, v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v11

    if-nez v11, :cond_17

    :cond_16
    and-int v11, v2, v17

    if-ne v11, v13, :cond_18

    :cond_17
    const/4 v11, 0x1

    goto :goto_d

    :cond_18
    const/4 v11, 0x0

    :goto_d
    or-int/2addr v10, v11

    const/high16 v11, 0x1c00000

    and-int/2addr v11, v2

    const/high16 v13, 0x800000

    if-ne v11, v13, :cond_19

    const/4 v11, 0x1

    goto :goto_e

    :cond_19
    const/4 v11, 0x0

    :goto_e
    or-int/2addr v10, v11

    and-int/lit16 v11, v2, 0x380

    const/16 v13, 0x100

    if-ne v11, v13, :cond_1a

    const/4 v11, 0x1

    goto :goto_f

    :cond_1a
    const/4 v11, 0x0

    :goto_f
    or-int/2addr v10, v11

    const/high16 v11, 0x70000

    and-int/2addr v11, v2

    const/high16 v13, 0x20000

    if-ne v11, v13, :cond_1b

    const/4 v11, 0x1

    goto :goto_10

    :cond_1b
    const/4 v11, 0x0

    :goto_10
    or-int/2addr v10, v11

    and-int/lit8 v2, v2, 0x70

    move/from16 v11, v18

    if-ne v2, v11, :cond_1c

    const/4 v13, 0x1

    goto :goto_11

    :cond_1c
    const/4 v13, 0x0

    :goto_11
    or-int v2, v10, v13

    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v10

    or-int/2addr v2, v10

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v2, v10

    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v10

    or-int/2addr v2, v10

    .line 146
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v2, :cond_1e

    if-ne v10, v5, :cond_1d

    goto :goto_12

    :cond_1d
    move/from16 v9, p6

    move-object v15, v0

    move-object/from16 v24, v1

    goto :goto_13

    .line 147
    :cond_1e
    :goto_12
    new-instance v0, Le/A$$ExternalSyntheticLambda1;

    move-wide v10, v3

    move v4, v12

    move-wide v12, v6

    move-wide v5, v10

    move-wide/from16 v10, p1

    move-object/from16 v7, p9

    move-object/from16 v15, p10

    move-object/from16 v24, v1

    move-wide v2, v8

    move/from16 v8, p3

    move/from16 v1, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v14}, Le/A$$ExternalSyntheticLambda1;-><init>(FJFJLkotlin/jvm/functions/Function1;FFJJLandroidx/compose/ui/graphics/AndroidImageBitmap;)V

    .line 148
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v10, v0

    .line 149
    :goto_13
    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    .line 150
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v1, v24

    .line 151
    invoke-static {v1, v10, v15, v0}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    move v7, v9

    .line 152
    :goto_14
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_1f

    new-instance v0, Le/A$$ExternalSyntheticLambda2;

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Le/A$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/graphics/AndroidImageBitmap;JFLandroidx/compose/ui/Modifier;FFJLkotlin/jvm/functions/Function1;I)V

    .line 153
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void
.end method

.method public static final a(Landroidx/compose/ui/graphics/AndroidImageBitmap;Le/t;FFJLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 11

    move-object/from16 v8, p7

    move/from16 v9, p8

    const-string v0, "existingCrop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x4a024006    # 2134017.5f

    .line 154
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v9, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v8, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v9

    goto :goto_1

    :cond_1
    move v0, v9

    :goto_1
    and-int/lit8 v3, v9, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v8, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_3
    or-int/lit16 v0, v0, 0x180

    and-int/lit16 v3, v9, 0xc00

    if-nez v3, :cond_5

    invoke-virtual {v8, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x800

    goto :goto_3

    :cond_4
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    :cond_5
    and-int/lit16 v3, v9, 0x6000

    if-nez v3, :cond_6

    or-int/lit16 v0, v0, 0x2000

    :cond_6
    const/high16 v3, 0x30000

    and-int/2addr v3, v9

    if-nez v3, :cond_8

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v3, 0x20000

    goto :goto_4

    :cond_7
    const/high16 v3, 0x10000

    :goto_4
    or-int/2addr v0, v3

    :cond_8
    const/high16 v3, 0x180000

    and-int/2addr v3, v9

    move-object/from16 v7, p6

    if-nez v3, :cond_a

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/high16 v3, 0x100000

    goto :goto_5

    :cond_9
    const/high16 v3, 0x80000

    :goto_5
    or-int/2addr v0, v3

    :cond_a
    const v3, 0x92493

    and-int/2addr v0, v3

    const v3, 0x92492

    if-ne v0, v3, :cond_c

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6

    .line 155
    :cond_b
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move v3, p2

    move-wide v5, p4

    goto :goto_9

    .line 156
    :cond_c
    :goto_6
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_7

    .line 157
    :cond_d
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move v3, p2

    move-wide v5, p4

    goto :goto_8

    .line 158
    :cond_e
    :goto_7
    sget v0, Le/m0;->a:F

    .line 159
    sget-object v3, Le/j1;->c:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 160
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/i1;

    .line 161
    iget-wide v5, v3, Le/i1;->f:J

    move v3, v0

    .line 162
    :goto_8
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    .line 163
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    new-instance v0, Le/K;

    move-object v2, p0

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v7}, Le/K;-><init>(Le/t;Landroidx/compose/ui/graphics/AndroidImageBitmap;FFJLkotlin/jvm/functions/Function1;)V

    const v1, 0x30059f29

    invoke-static {v1, v0, v8}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0x36

    invoke-static {v0, v8, v1}, La/l;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    .line 164
    :goto_9
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_f

    new-instance v0, Le/L$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object/from16 v7, p6

    move v8, v9

    invoke-direct/range {v0 .. v8}, Le/L$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/AndroidImageBitmap;Le/t;FFJLkotlin/jvm/functions/Function1;I)V

    .line 165
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final a(Le/t;FLe/W0;FLe/D;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 43

    move-object/from16 v1, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v13, p3

    move-object/from16 v9, p4

    move-object/from16 v15, p5

    move/from16 v8, p6

    const v0, -0x41743b5

    .line 192
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v8, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v8

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    and-int/lit8 v3, v8, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_3
    and-int/lit16 v3, v8, 0x180

    const/16 v4, 0x100

    if-nez v3, :cond_5

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v0, v3

    :cond_5
    and-int/lit16 v3, v8, 0xc00

    const/16 v14, 0x800

    if-nez v3, :cond_7

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v14

    goto :goto_4

    :cond_6
    const/16 v3, 0x400

    :goto_4
    or-int/2addr v0, v3

    :cond_7
    and-int/lit16 v3, v8, 0x6000

    const/4 v5, 0x0

    if-nez v3, :cond_9

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x4000

    goto :goto_5

    :cond_8
    const/16 v3, 0x2000

    :goto_5
    or-int/2addr v0, v3

    :cond_9
    const/high16 v3, 0x30000

    and-int/2addr v3, v8

    if-nez v3, :cond_b

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/high16 v3, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v3, 0x10000

    :goto_6
    or-int/2addr v0, v3

    :cond_b
    const v3, 0x12493

    and-int/2addr v3, v0

    const v12, 0x12492

    if-ne v3, v12, :cond_e

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_7

    .line 193
    :cond_c
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :cond_d
    move-object v3, v15

    goto/16 :goto_24

    .line 194
    :cond_e
    :goto_7
    sget-object v3, Le/t;->h:Le/t;

    .line 195
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const v3, -0x1e0b7575

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit16 v3, v0, 0x380

    const/4 v12, 0x1

    if-ne v3, v4, :cond_f

    move v3, v12

    goto :goto_8

    :cond_f
    move v3, v5

    :goto_8
    and-int/lit16 v4, v0, 0x1c00

    if-ne v4, v14, :cond_10

    move/from16 v17, v12

    goto :goto_9

    :cond_10
    move/from16 v17, v5

    :goto_9
    or-int v3, v3, v17

    .line 196
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v3, :cond_11

    if-ne v14, v11, :cond_12

    .line 197
    :cond_11
    iget-wide v2, v7, Le/W0;->b:J

    .line 198
    invoke-virtual {v7, v13, v12}, Le/W0;->a(FZ)F

    move-result v14

    invoke-static {v14, v2, v3}, Landroidx/compose/ui/geometry/Size;->times-7Ah8Wj8(FJ)J

    move-result-wide v2

    .line 199
    new-instance v14, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 200
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 201
    :cond_12
    check-cast v14, Landroidx/compose/ui/geometry/Size;

    .line 202
    iget-wide v2, v14, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 203
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 204
    sget-object v14, Le/j1;->c:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 205
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v10, v20

    check-cast v10, Le/i1;

    .line 206
    iget-object v10, v10, Le/i1;->F:Le/y;

    .line 207
    iget-wide v12, v10, Le/y;->a:J

    .line 208
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/i1;

    .line 209
    iget-object v10, v10, Le/i1;->F:Le/y;

    .line 210
    iget-wide v5, v10, Le/y;->b:J

    const/16 v10, 0x9

    int-to-float v10, v10

    const/4 v14, 0x3

    move-wide/from16 v24, v5

    int-to-float v6, v14

    const v5, -0x1e0b4967

    .line 211
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 212
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    .line 213
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v5, :cond_13

    if-ne v14, v11, :cond_14

    :cond_13
    move v14, v4

    goto :goto_a

    :cond_14
    move/from16 v26, v0

    move-object v0, v14

    move v14, v4

    goto :goto_b

    .line 214
    :goto_a
    iget-wide v4, v9, Le/D;->c:J

    move/from16 v26, v0

    .line 215
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v0, v4, v5}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 216
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 217
    :goto_b
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 218
    iget-wide v4, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    const/4 v0, 0x0

    .line 219
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v0, -0x1e0b3db8

    .line 220
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 221
    invoke-virtual {v15, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v0

    move/from16 v27, v0

    .line 222
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v27, :cond_15

    if-ne v0, v11, :cond_16

    :cond_15
    move-wide/from16 v27, v4

    goto :goto_c

    :cond_16
    move-wide/from16 v27, v4

    goto :goto_d

    .line 223
    :goto_c
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v4

    .line 224
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v0, v4, v5}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 225
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 226
    :goto_d
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 227
    iget-wide v4, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    const/4 v0, 0x0

    .line 228
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v0, -0x1e0b348c

    .line 229
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 230
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v29

    or-int v0, v0, v29

    move/from16 v29, v0

    .line 231
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v29, :cond_18

    if-ne v0, v11, :cond_17

    goto :goto_e

    :cond_17
    move-wide/from16 v29, v4

    move/from16 v23, v6

    goto :goto_14

    .line 232
    :cond_18
    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    move-wide/from16 v29, v4

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_f
    const/4 v5, 0x4

    if-ge v4, v5, :cond_1c

    add-int/lit8 v19, v4, 0x1

    .line 233
    rem-int/lit8 v4, v4, 0x4

    const/4 v5, -0x3

    if-eq v4, v5, :cond_1b

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1a

    const/4 v5, -0x1

    if-eq v4, v5, :cond_19

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1b

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1a

    const/4 v5, 0x3

    if-eq v4, v5, :cond_19

    move/from16 v23, v6

    .line 234
    iget-wide v5, v1, Le/t;->a:J

    goto :goto_13

    :cond_19
    move/from16 v23, v6

    goto :goto_10

    :cond_1a
    move/from16 v23, v6

    goto :goto_11

    :cond_1b
    move/from16 v23, v6

    goto :goto_12

    .line 235
    :goto_10
    iget-wide v5, v1, Le/t;->d:J

    goto :goto_13

    .line 236
    :goto_11
    iget-wide v5, v1, Le/t;->c:J

    goto :goto_13

    .line 237
    :goto_12
    iget-wide v5, v1, Le/t;->b:J

    .line 238
    :goto_13
    invoke-static {v5, v6, v2, v3}, La/l;->a(JJ)J

    move-result-wide v5

    .line 239
    new-instance v4, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 240
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, v19

    move/from16 v6, v23

    goto :goto_f

    :cond_1c
    move/from16 v23, v6

    .line 241
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 242
    :goto_14
    move-object/from16 v19, v0

    check-cast v19, Ljava/util/List;

    const/4 v0, 0x0

    .line 243
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move/from16 v22, v0

    .line 244
    new-instance v0, Le/M;

    move-wide v4, v2

    move-object/from16 v3, v19

    move/from16 v6, v22

    move-wide/from16 v32, v24

    move-wide/from16 v34, v27

    move-wide/from16 v36, v29

    const/16 v20, 0x1

    move-object v2, v1

    move/from16 v1, p3

    invoke-direct/range {v0 .. v5}, Le/M;-><init>(FLe/t;Ljava/util/List;J)V

    .line 245
    invoke-static {v0, v15}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float v2, v10, v1

    add-float v2, v2, v23

    const/16 v6, 0x10

    int-to-float v6, v6

    move/from16 v28, v1

    .line 246
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 247
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    .line 248
    check-cast v1, Landroidx/compose/ui/unit/Density;

    const v7, -0x1e0af7ef

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 249
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    move/from16 v18, v7

    .line 250
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v18, :cond_1d

    if-ne v7, v11, :cond_1e

    .line 251
    :cond_1d
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v7

    div-float v7, v7, v28

    .line 252
    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v18

    add-float v7, v18, v7

    neg-float v7, v7

    .line 253
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 254
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 255
    :cond_1e
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    move/from16 v29, v2

    const/4 v2, 0x0

    .line 256
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, -0x1e0ada06

    .line 257
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 258
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    move/from16 v18, v2

    and-int/lit8 v2, v26, 0x70

    move/from16 v26, v6

    const/16 v6, 0x20

    if-ne v2, v6, :cond_1f

    move/from16 v2, v20

    goto :goto_15

    :cond_1f
    const/4 v2, 0x0

    :goto_15
    or-int v2, v18, v2

    .line 259
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_20

    if-ne v6, v11, :cond_21

    :cond_20
    move/from16 v2, p1

    goto :goto_16

    :cond_21
    move/from16 v2, p1

    move-wide/from16 v18, v12

    goto :goto_17

    .line 260
    :goto_16
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v6

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    .line 261
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    move-wide/from16 v18, v12

    int-to-long v12, v6

    .line 262
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    move-wide/from16 v21, v12

    int-to-long v12, v1

    const/16 v16, 0x20

    shl-long v21, v21, v16

    const-wide v24, 0xffffffffL

    and-long v12, v12, v24

    or-long v12, v21, v12

    .line 263
    new-instance v6, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v6, v12, v13}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 264
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 265
    :goto_17
    check-cast v6, Landroidx/compose/ui/geometry/Offset;

    .line 266
    iget-wide v12, v6, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    const/4 v6, 0x0

    .line 267
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 268
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    const v6, -0x1e0ab70f

    .line 269
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    or-int v6, v6, v16

    invoke-virtual {v15, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v16

    or-int v6, v6, v16

    move-wide/from16 v8, v34

    invoke-virtual {v15, v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v16

    or-int v6, v6, v16

    move-object/from16 v16, v0

    .line 270
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_22

    if-ne v0, v11, :cond_23

    :cond_22
    move-wide/from16 v34, v8

    goto :goto_18

    :cond_23
    move-object/from16 v2, v16

    move/from16 v16, v10

    move-object v10, v2

    move/from16 v30, v7

    move-object/from16 v38, v11

    move-wide v11, v12

    move-wide/from16 v6, v18

    const/16 v2, 0x800

    move-wide/from16 v39, v8

    move-object/from16 v9, p4

    move-object v8, v0

    move v0, v14

    move-wide/from16 v13, v39

    goto :goto_19

    .line 271
    :goto_18
    new-instance v8, Le/E;

    move-object/from16 v0, v16

    move/from16 v16, v10

    move-object v10, v0

    move-object/from16 v9, p4

    move/from16 v30, v7

    move-object/from16 v38, v11

    move-wide v11, v12

    move v0, v14

    move-wide/from16 v6, v18

    move-wide/from16 v13, v34

    const/16 v2, 0x800

    invoke-direct/range {v8 .. v14}, Le/E;-><init>(Le/D;Landroidx/compose/runtime/MutableState;JJ)V

    .line 272
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 273
    :goto_19
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    const/4 v2, 0x0

    .line 274
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 275
    invoke-static {v1, v9, v8}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v8, -0x1e0a4907

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15, v13, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    invoke-virtual {v15, v11, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v17

    or-int v8, v8, v17

    move/from16 v17, v8

    const/16 v8, 0x800

    if-ne v0, v8, :cond_24

    const/4 v8, 0x1

    goto :goto_1a

    :cond_24
    const/4 v8, 0x0

    :goto_1a
    or-int v8, v17, v8

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    move-wide/from16 v10, v36

    invoke-virtual {v15, v10, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v12

    or-int/2addr v8, v12

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v8, v12

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v8, v12

    invoke-virtual {v15, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v12

    or-int/2addr v8, v12

    invoke-virtual {v15, v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v12

    or-int/2addr v8, v12

    move-wide/from16 v20, v4

    move-object v5, v3

    move-wide/from16 v3, v32

    invoke-virtual {v15, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v12

    or-int/2addr v8, v12

    .line 276
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_26

    move-object/from16 v8, v38

    if-ne v12, v8, :cond_25

    move-object/from16 v38, v8

    goto :goto_1b

    :cond_25
    move-wide/from16 v24, v3

    move-object/from16 v19, v5

    move-object v5, v8

    move-object v8, v12

    move-object v3, v15

    move-object/from16 v4, v17

    move-wide/from16 v39, v20

    move/from16 v21, v16

    move-wide/from16 v41, v13

    move-wide v14, v10

    move-wide/from16 v10, v41

    move-wide/from16 v12, v39

    goto :goto_1c

    .line 277
    :cond_26
    :goto_1b
    new-instance v8, Le/L$$ExternalSyntheticLambda1;

    move-wide/from16 v24, v3

    move-object v3, v15

    move-object/from16 v4, v17

    move/from16 v17, v23

    move-wide/from16 v22, v6

    move-wide/from16 v39, v13

    move/from16 v13, p3

    move-wide v14, v10

    move-wide/from16 v11, v18

    move-object/from16 v19, v5

    move-object/from16 v18, v9

    move-wide/from16 v9, v39

    move-object/from16 v5, v38

    invoke-direct/range {v8 .. v25}, Le/L$$ExternalSyntheticLambda1;-><init>(JJFJFFLe/D;Ljava/util/List;JJJ)V

    move-wide v10, v9

    move-wide/from16 v12, v20

    move/from16 v21, v16

    move/from16 v23, v17

    .line 278
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 279
    :goto_1c
    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-wide/from16 v31, v6

    const/4 v6, 0x0

    .line 280
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 281
    invoke-static {v2, v8, v3, v6}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    move/from16 v2, p1

    .line 282
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 283
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 284
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    .line 285
    iget v6, v3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 286
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    .line 287
    invoke-static {v3, v1}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 288
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 290
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move/from16 v16, v6

    .line 291
    iget-boolean v6, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_27

    .line 292
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1d

    .line 293
    :cond_27
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    .line 294
    :goto_1d
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 295
    invoke-static {v3, v7, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 296
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 297
    invoke-static {v3, v8, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 298
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 299
    iget-boolean v6, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_28

    .line 300
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 301
    :cond_28
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 302
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 303
    :cond_29
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 304
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v1, -0x144eef07

    .line 305
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 306
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    if-ltz v2, :cond_35

    check-cast v6, Landroidx/compose/ui/geometry/Offset;

    .line 307
    iget-wide v8, v6, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    mul-float v6, v26, v28

    add-float v6, v6, v29

    move-object/from16 v22, v1

    const v1, -0x144ee406

    .line 308
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v1, 0x0

    .line 309
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 310
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 311
    invoke-static {v1, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v6, -0x8f2b6e

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move/from16 v6, v30

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v17

    move-object/from16 v6, p4

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    or-int v17, v17, v18

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v18

    or-int v17, v17, v18

    invoke-virtual {v3, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v18

    or-int v17, v17, v18

    invoke-virtual {v3, v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v18

    or-int v17, v17, v18

    invoke-virtual {v3, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v18

    or-int v17, v17, v18

    move/from16 v18, v2

    const/16 v2, 0x800

    if-ne v0, v2, :cond_2a

    const/16 v19, 0x1

    goto :goto_1f

    :cond_2a
    const/16 v19, 0x0

    :goto_1f
    or-int v17, v17, v19

    invoke-virtual {v3, v10, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v19

    or-int v17, v17, v19

    .line 312
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v17, :cond_2b

    if-ne v2, v5, :cond_2c

    :cond_2b
    move-wide/from16 v36, v14

    move-wide v14, v8

    goto :goto_20

    :cond_2c
    move-object v8, v2

    move-object v9, v6

    move v2, v7

    move-wide/from16 v34, v10

    move-wide/from16 v36, v14

    move/from16 v11, v18

    move-wide/from16 v6, v24

    move/from16 v24, v0

    move-wide/from16 v17, v12

    const/4 v0, 0x0

    goto :goto_21

    .line 313
    :goto_20
    new-instance v8, Le/L$$ExternalSyntheticLambda2;

    move v2, v7

    move-wide/from16 v19, v10

    move/from16 v11, v18

    move/from16 v9, v30

    move-wide/from16 v16, v36

    move/from16 v18, p3

    move-object v10, v6

    move-wide/from16 v6, v24

    move/from16 v24, v0

    const/4 v0, 0x0

    invoke-direct/range {v8 .. v20}, Le/L$$ExternalSyntheticLambda2;-><init>(FLe/D;IJJJFJ)V

    move-object v9, v10

    move-wide/from16 v34, v19

    move-wide/from16 v17, v12

    .line 314
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 315
    :goto_21
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    .line 316
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 317
    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/OffsetKt;->absoluteOffset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 318
    sget-object v8, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 319
    invoke-static {v1, v8}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v8, -0x8eb601

    .line 320
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 321
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_2d

    if-ne v10, v5, :cond_2e

    .line 322
    :cond_2d
    new-instance v10, Le/J$$ExternalSyntheticLambda4;

    const/4 v8, 0x1

    invoke-direct {v10, v8, v0}, Le/J$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 323
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 324
    :cond_2e
    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    .line 325
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 326
    invoke-static {v1, v10}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, -0x8ea3f2

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v8

    or-int/2addr v1, v8

    .line 327
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_2f

    if-ne v8, v5, :cond_30

    .line 328
    :cond_2f
    new-instance v8, Le/F;

    invoke-direct {v8, v9, v4, v11}, Le/F;-><init>(Le/D;Landroidx/compose/runtime/MutableState;I)V

    .line 329
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 330
    :cond_30
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    .line 331
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 332
    invoke-static {v0, v8}, Landroidx/compose/ui/input/key/Key_androidKt;->onKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, -0x8e6098

    .line 333
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v8

    or-int/2addr v1, v8

    .line 334
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_31

    if-ne v8, v5, :cond_32

    .line 335
    :cond_31
    new-instance v8, Le/G;

    invoke-direct {v8, v9, v4, v11}, Le/G;-><init>(Le/D;Landroidx/compose/runtime/MutableState;I)V

    .line 336
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 337
    :cond_32
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    const/4 v14, 0x0

    .line 338
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 339
    invoke-static {v0, v9, v8}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, -0x8e3b8a

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v8

    or-int/2addr v1, v8

    move-wide/from16 v13, v31

    invoke-virtual {v3, v13, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-virtual {v3, v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    or-int/2addr v1, v8

    .line 340
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_34

    if-ne v8, v5, :cond_33

    goto :goto_22

    :cond_33
    move-wide v15, v6

    move/from16 v9, v21

    goto :goto_23

    .line 341
    :cond_34
    :goto_22
    new-instance v8, Le/L$$ExternalSyntheticLambda4;

    move-wide v15, v6

    move v12, v11

    move/from16 v10, v23

    move-object v11, v9

    move/from16 v9, v21

    invoke-direct/range {v8 .. v16}, Le/L$$ExternalSyntheticLambda4;-><init>(FFLe/D;IJJ)V

    .line 342
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 343
    :goto_23
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    .line 344
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 345
    invoke-static {v0, v8, v3, v6}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    move/from16 v21, v9

    move-wide/from16 v31, v13

    move-wide/from16 v12, v17

    move-object/from16 v1, v22

    move/from16 v0, v24

    move-wide/from16 v10, v34

    move-wide/from16 v24, v15

    move-wide/from16 v14, v36

    goto/16 :goto_1e

    :cond_35
    const/4 v0, 0x0

    .line 346
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v0

    :cond_36
    const/4 v6, 0x0

    .line 347
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v0, -0x144d7eeb

    .line 348
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 349
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v5, 0x1

    .line 350
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 351
    :goto_24
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_37

    new-instance v0, Le/L$$ExternalSyntheticLambda5;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Le/L$$ExternalSyntheticLambda5;-><init>(Le/t;FLe/W0;FLe/D;I)V

    .line 352
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_37
    return-void
.end method

.method public static final a(Ljava/lang/Error;Ljava/lang/String;)V
    .locals 1

    .line 103
    instance-of v0, p0, Ljava/lang/UnsatisfiedLinkError;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/NoClassDefFoundError;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    instance-of v0, p0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "Out of memory error has been caught"

    .line 106
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 107
    :cond_1
    throw p0

    .line 108
    :cond_2
    :goto_0
    const-string v0, "Corrupted installation has been detected"

    .line 109
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static final a(Ljava/lang/Exception;)V
    .locals 1

    .line 60
    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    throw p0
.end method

.method public static final a(Landroid/util/Size;)[Landroid/graphics/PointF;
    .locals 5

    .line 166
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 167
    new-instance p0, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    filled-new-array {p0, v1, v2, v3}, [Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lc/a;Landroid/util/Size;)[Landroid/graphics/PointF;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Lc/a;->a:[Landroid/graphics/PointF;

    .line 111
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    filled-new-array {v0, v1, v2, v3}, [Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 112
    aget-object v3, v0, v2

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v3, :cond_1

    .line 113
    aget-object p0, v0, v1

    .line 114
    iget v2, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iput v2, p0, Landroid/graphics/PointF;->x:F

    .line 115
    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iput v2, p0, Landroid/graphics/PointF;->y:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;)Lc/a;
    .locals 9

    sget-object v0, Lc/X;->L:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/graphics/PointF;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    move-object p0, v3

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v4, v0, [Landroid/graphics/PointF;

    move v5, v1

    :goto_1
    if-ge v5, v0, :cond_1

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    aput-object v6, v4, v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v1, v0, :cond_2

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v5, Landroid/graphics/PointF;

    const-string v6, "x"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    const-string v7, "y"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v2, v7

    invoke-direct {v5, v6, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v5, v4, v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v4

    goto :goto_3

    :cond_2
    move-object v2, v4

    goto :goto_4

    :goto_3
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "g.S"

    invoke-static {v0, p0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    array-length p0, v2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    goto :goto_5

    :cond_4
    new-instance v3, Lc/a;

    invoke-direct {v3, v2}, Lc/a;-><init>([Landroid/graphics/PointF;)V

    :goto_5
    return-object v3
.end method

.method public static c(Lorg/json/JSONObject;)I
    .locals 1

    :try_start_0
    sget-object v0, Lc/X;->I:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lc/X;->R:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lc/X;->N:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lc/X;->P:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    sget-object v0, Lc/X;->S:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    sget-object v0, Lc/X;->T:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    sget-object v0, Lc/X;->Q:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final calculateContrastRatio-nb2GgbA(FJJJ)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide p0

    invoke-static {p0, p1, p5, p6}, Landroidx/compose/ui/graphics/Brush;->compositeOver--OWjLjI(JJ)J

    move-result-wide p0

    invoke-static {p3, p4, p0, p1}, Landroidx/compose/ui/graphics/Brush;->compositeOver--OWjLjI(JJ)J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Brush;->luminance-8_81llA(J)F

    move-result p2

    const p3, 0x3d4ccccd    # 0.05f

    add-float/2addr p2, p3

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Brush;->luminance-8_81llA(J)F

    move-result p0

    add-float/2addr p0, p3

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public static createCameraImageMediaData([B)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;
    .locals 11

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    new-instance v0, Lcom/motorola/camera/saving/ImageDataHolder;

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/saving/ImageDataHolder;-><init>(ILjava/nio/ByteBuffer;IIII[IZLjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v2

    sget-object v3, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScan:Z

    new-instance v4, Lcom/motorola/camera/saving/FileName;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    const-wide/32 v5, 0x2000000

    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v4}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-direct {v4, v3}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;-><init>(Lcom/motorola/camera/storage/MediaFilePath;)V

    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    iput-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "CAPTURE_TRIGGER"

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-direct {p0, v1, v3, v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    invoke-virtual {p0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->processExif()V

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    const-string v3, "Orientation"

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/utility/ExifUtility;->getOrientationFromExif(I)I

    move-result v0

    iput v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    return-object p0
.end method

.method public static createMediaDataListFromFileList(Ljava/util/List;Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "imageFileList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v1}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v2}, La/l;->createCameraImageMediaData([B)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    return-object p0
.end method

.method public static d(Lorg/json/JSONObject;)Lc/N;
    .locals 1

    :try_start_0
    sget-object v0, Lc/X;->D:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lc/X;->O:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lc/N;->a:Lc/N;

    return-object p0

    :cond_0
    sget-object v0, Lc/X;->w:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lc/N;->b:Lc/N;

    return-object p0

    :cond_1
    sget-object p0, Lc/N;->b:Lc/N;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Lorg/json/JSONObject;)Lc/z1;
    .locals 2

    sget-object v0, Lc/X;->G:Ljava/lang/String;

    const-string v1, "fit"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "optString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "letter_landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object p0, Lc/z1;->c:Lc/z1;

    return-object p0

    :sswitch_1
    const-string v0, "letter_portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object p0, Lc/z1;->b:Lc/z1;

    return-object p0

    :sswitch_2
    const-string v0, "A4_landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lc/z1;->i:Lc/z1;

    return-object p0

    :sswitch_3
    const-string v0, "legal_portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lc/z1;->d:Lc/z1;

    return-object p0

    :sswitch_4
    const-string v0, "business_card"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lc/z1;->l:Lc/z1;

    return-object p0

    :sswitch_5
    const-string v0, "A5_landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lc/z1;->k:Lc/z1;

    return-object p0

    :sswitch_6
    const-string v0, "legal_landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    sget-object p0, Lc/z1;->e:Lc/z1;

    return-object p0

    :sswitch_7
    const-string v0, "A3_portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    sget-object p0, Lc/z1;->f:Lc/z1;

    return-object p0

    :sswitch_8
    const-string v0, "A4_portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    sget-object p0, Lc/z1;->h:Lc/z1;

    return-object p0

    :sswitch_9
    const-string v0, "A3_landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    sget-object p0, Lc/z1;->g:Lc/z1;

    return-object p0

    :sswitch_a
    const-string v0, "A5_portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    :goto_0
    sget-object p0, Lc/z1;->a:Lc/z1;

    return-object p0

    :cond_a
    sget-object p0, Lc/z1;->j:Lc/z1;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6ddd449a -> :sswitch_a
        -0x65ce7932 -> :sswitch_9
        -0x6226b5b9 -> :sswitch_8
        -0x567026d8 -> :sswitch_7
        -0x4ce5034b -> :sswitch_6
        -0x3c0513b0 -> :sswitch_5
        0x25864c2f -> :sswitch_4
        0x263c8a61 -> :sswitch_3
        0x2f16398f -> :sswitch_2
        0x4cbb1394 -> :sswitch_1
        0x5c6d99e2 -> :sswitch_0
    .end sparse-switch
.end method

.method public static initialize$default(Lcom/adobe/scan/sdk/ScanSDK;Landroid/content/Context;)V
    .locals 5

    check-cast p0, Lh/s;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lh/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, La/z;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, La/z;->a:Landroid/content/Context;

    :cond_0
    new-instance p0, Lb/o$$ExternalSyntheticLambda0;

    const/16 p1, 0xb

    invoke-direct {p0, p1}, Lb/o$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object p0, La/l;->a:Lkotlin/jvm/functions/Function0;

    new-instance p0, Lb/o;

    invoke-direct {p0}, Lb/o;-><init>()V

    sget-object p1, Lb/o;->d:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v0, Lb/m;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lb/m;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v0, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :try_start_0
    iget-object p0, p0, Lb/o;->b:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/adobe/magic_clean/CameraCleanAndroidShim;

    new-instance v0, Lb/m;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v2, v4}, Lb/m;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    invoke-static {v1, p1, v2, v0, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MagicCleanEdgeDetection"

    invoke-static {p0, p1}, La/l;->a(Ljava/lang/Error;Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance p1, Lh/r;

    invoke-direct {p1, v3, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v1, p0, v2, p1, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already initialized."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static updateCaptureMetadataAttributes(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Ljava/io/ByteArrayInputStream;)V
    .locals 8

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x1

    const-string v1, "Orientation"

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result p1

    const/4 v2, 0x0

    const-string v3, "ImageWidth"

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v3

    const-string v4, "ImageLength"

    invoke-virtual {v0, v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy:MM:dd HH:mm:ss.SSS"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    const-string v6, "DateTimeOriginal"

    invoke-virtual {v0, v6, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "DateTimeDigitized"

    invoke-virtual {v0, v6, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "PixelXDimension"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PixelYDimension"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object p1

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method
