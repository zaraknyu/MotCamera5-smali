.class public final Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DiscardScanDialogKt$DiscardScanDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $dimens:Lcom/motorola/camera/ui/compose/Dimensions;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/compose/Dimensions;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DiscardScanDialogKt$DiscardScanDialog$2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DiscardScanDialogKt$DiscardScanDialog$2;->$dimens:Lcom/motorola/camera/ui/compose/Dimensions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 46

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DiscardScanDialogKt$DiscardScanDialog$2;->$r8$classId:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x2

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DiscardScanDialogKt$DiscardScanDialog$2;->$dimens:Lcom/motorola/camera/ui/compose/Dimensions;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-ne v4, v3, :cond_1

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    const v3, 0x7f120045

    invoke-static {v3, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v4

    new-instance v20, Landroidx/compose/ui/text/TextStyle;

    sget-object v3, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v6, v3, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTextColor:J

    iget-wide v8, v0, Lcom/motorola/camera/ui/compose/Dimensions;->dialogFontSize:J

    new-instance v10, Landroidx/compose/ui/text/font/FontWeight;

    iget v3, v0, Lcom/motorola/camera/ui/compose/Dimensions;->dialogTextWeight:I

    invoke-direct {v10, v3}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    iget-wide v11, v0, Lcom/motorola/camera/ui/compose/Dimensions;->dialogLetterSpacing:J

    const-wide/16 v14, 0x0

    const v16, 0xffff78

    const/4 v13, 0x0

    move-object/from16 v5, v20

    invoke-direct/range {v5 .. v16}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    const/16 v23, 0x0

    const v24, 0xfffe

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v21, v1

    invoke-static/range {v4 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    :goto_1
    return-object v2

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-ne v4, v3, :cond_3

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_4

    :cond_3
    :goto_2
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    iget v3, v0, Lcom/motorola/camera/ui/compose/Dimensions;->recreateSessionDialogHorizontalPadding:F

    invoke-static {v3}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v5, 0x30

    invoke-static {v3, v4, v1, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v3

    iget v4, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v1, v6}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v9, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_4

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v1, v3, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v1, v5, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v5, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_5

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_6
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v1, v7, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget v3, v0, Lcom/motorola/camera/ui/compose/Dimensions;->recreateSessionDialogProgressSize:F

    invoke-static {v6, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget v4, v0, Lcom/motorola/camera/ui/compose/Dimensions;->recreateSessionDialogProgressPadding:F

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v25

    const/16 v31, 0x0

    const/16 v33, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    move-object/from16 v32, v1

    invoke-static/range {v25 .. v33}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/ComposerImpl;I)V

    const v3, 0x7f120047

    invoke-static {v3, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v25

    new-instance v3, Landroidx/compose/ui/text/TextStyle;

    sget-object v4, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v4, v4, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTextColor:J

    iget-wide v6, v0, Lcom/motorola/camera/ui/compose/Dimensions;->dialogFontSize:J

    new-instance v8, Landroidx/compose/ui/text/font/FontWeight;

    iget v9, v0, Lcom/motorola/camera/ui/compose/Dimensions;->dialogTextWeight:I

    invoke-direct {v8, v9}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    iget-wide v9, v0, Lcom/motorola/camera/ui/compose/Dimensions;->dialogLetterSpacing:J

    const-wide/16 v12, 0x0

    const v14, 0xffff78

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v14}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    const/16 v44, 0x0

    const v45, 0xfffe

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v43, 0x0

    move-object/from16 v42, v1

    move-object/from16 v41, v3

    invoke-static/range {v25 .. v45}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    return-object v2

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-ne v4, v3, :cond_8

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_6

    :cond_8
    :goto_5
    const v3, 0x7f12002e

    invoke-static {v3, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v3

    new-instance v19, Landroidx/compose/ui/text/TextStyle;

    sget-object v4, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v5, v4, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTextColor:J

    iget-wide v7, v0, Lcom/motorola/camera/ui/compose/Dimensions;->dialogFontSize:J

    new-instance v9, Landroidx/compose/ui/text/font/FontWeight;

    iget v4, v0, Lcom/motorola/camera/ui/compose/Dimensions;->dialogTextWeight:I

    invoke-direct {v9, v4}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    iget-wide v10, v0, Lcom/motorola/camera/ui/compose/Dimensions;->dialogLetterSpacing:J

    const-wide/16 v13, 0x0

    const v15, 0xffff78

    const/4 v12, 0x0

    move-object/from16 v4, v19

    invoke-direct/range {v4 .. v15}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    const/16 v22, 0x0

    const v23, 0xfffe

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v1

    invoke-static/range {v3 .. v23}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    :goto_6
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
