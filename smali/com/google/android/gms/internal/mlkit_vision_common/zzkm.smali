.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final ControlPanelItem(Landroidx/compose/ui/Modifier;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    iget-object v0, v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->icon:Ljava/lang/Integer;

    const-string/jumbo v4, "viewModel"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, -0x5afc0e6d

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int v4, p4, v4

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v4, v6

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v4, v6

    and-int/lit16 v4, v4, 0x93

    const/16 v6, 0x92

    if-ne v4, v6, :cond_4

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_7

    :cond_4
    :goto_3
    if-nez v0, :cond_5

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_c

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/Modifier;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_5
    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    sget-object v1, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/motorola/camera/ui/compose/Dimensions;

    const v1, 0x73cdfa5d

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v1, v9, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->value:Ljava/lang/Object;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ON_VALUE_ALLOWED_SETTINGS:Ljava/util/List;

    iget-object v2, v9, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/ColorScheme;

    iget-wide v1, v1, Landroidx/compose/material3/ColorScheme;->primary:J

    :goto_4
    move-wide v14, v1

    goto :goto_5

    :cond_6
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->White:J

    goto :goto_4

    :goto_5
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget v2, v11, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonItemHeight:F

    invoke-static {v8, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget v3, v11, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonItemWidth:F

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget v3, v11, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonCornerShape:F

    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v3, v3, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelButtonColor:J

    sget-object v6, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v2, v3, v4, v6}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, -0x615d173a

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_7

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v4, v3, :cond_8

    :cond_7
    new-instance v4, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    const/4 v3, 0x6

    invoke-direct {v4, v3, v10, v9}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v3, 0x7

    invoke-static {v2, v1, v4, v3}, Landroidx/compose/foundation/ImageKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v6, 0x36

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v3

    iget v4, v5, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v5, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v13, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_9

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_9
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_6
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v3, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v6, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v6, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_a

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    invoke-static {v4, v5, v4, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_b
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v2, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget v2, v11, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonIconPadding:F

    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v13, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v5, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    iget-object v1, v9, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->contentDescription:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v3, v14

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    iget v0, v9, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->title:I

    invoke-static {v0, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v13, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-wide v2, v11, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonFontSize:J

    sget-object v18, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    new-instance v13, Landroidx/compose/ui/text/TextStyle;

    const-wide/16 v22, 0x0

    const v24, 0xff7ff8

    const-wide/16 v19, 0x0

    const/16 v21, 0x5

    move-wide/from16 v16, v2

    invoke-direct/range {v13 .. v24}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    const/16 v19, 0x0

    const v20, 0xfffc

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move v14, v12

    const/4 v12, 0x0

    move-object/from16 v16, v13

    const/4 v13, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    const/16 v18, 0x30

    move-object/from16 v17, p3

    invoke-static/range {v0 .. v20}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    move-object/from16 v5, v17

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_7
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_c

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$$ExternalSyntheticLambda2;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/Modifier;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method

.method public static final ControlPanelItemExpanded(Landroidx/compose/ui/Modifier;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    iget-object v8, v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    const-string/jumbo v0, "viewModel"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x6e7f39d4

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p4, v0

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    and-int/lit16 v0, v0, 0x93

    const/16 v4, 0x92

    if-ne v0, v4, :cond_4

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    goto/16 :goto_a

    :cond_4
    :goto_3
    iget-object v0, v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->icon:Ljava/lang/Integer;

    if-nez v0, :cond_5

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_12

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$$ExternalSyntheticLambda2;

    const/4 v5, 0x2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/Modifier;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_5
    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    sget-object v0, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v1, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonItemHeight:F

    iget v12, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonIconPadding:F

    invoke-static {v9, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget v2, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonItemWidth:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonCornerShape:F

    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v1, v1, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelButtonColor:J

    sget-object v3, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->SpaceAround:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v3, 0x36

    invoke-static {v1, v2, v5, v3}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v1

    iget v2, v5, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v5, v0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_6

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v1, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v3, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v3, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_7

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    invoke-static {v2, v5, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_8
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v0, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x2419d954

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    move v0, v14

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v1, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v16, v0, 0x1

    if-ltz v0, :cond_d

    iget-object v2, v10, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/Setting;->getAndroidIcon(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x2419e221

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v2, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v15, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v4, -0x6815fd56

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_a

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v6, v4, :cond_b

    :cond_a
    new-instance v6, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;

    invoke-direct {v6, v11, v10, v0}, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;I)V

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x7

    invoke-static {v3, v14, v6, v0}, Landroidx/compose/foundation/ImageKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v2, v5, v14}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v2

    invoke-virtual {v10, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->getSettingContentDescription(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, -0x12c7bd08

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v4, v10, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->value:Ljava/lang/Object;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/ColorScheme;

    iget-wide v6, v1, Landroidx/compose/material3/ColorScheme;->primary:J

    goto :goto_6

    :cond_c
    sget-wide v6, Landroidx/compose/ui/graphics/Color;->White:J

    :goto_6
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v1, v3

    move-wide v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v17, v2

    move-object v2, v0

    move-object/from16 v0, v17

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    :goto_7
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move/from16 v0, v16

    goto/16 :goto_5

    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_e
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v11}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->getControlPanelItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_f
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget-object v2, v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    move v1, v2

    goto :goto_8

    :cond_10
    const v0, 0x241a3ea0

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_11

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v8, v1, v0

    move v13, v14

    :goto_9
    if-ge v13, v8, :cond_11

    invoke-static {v15, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v0, 0x7f08024f

    const/4 v1, 0x6

    invoke-static {v0, v5, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Transparent:J

    const/16 v6, 0xc30

    const/4 v7, 0x0

    const-string v1, ""

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_a
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_12

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$$ExternalSyntheticLambda2;

    const/4 v5, 0x3

    move/from16 v4, p4

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/Modifier;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void

    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static final ControlPanelSettingExpand(Landroidx/compose/animation/AnimatedVisibilityScope;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;ILandroidx/compose/runtime/ComposerImpl;I)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v0, p3

    move-object/from16 v8, p4

    move/from16 v11, p5

    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "viewModel"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "item"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x4db98e5d    # 3.8913936E8f

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, v11, 0x6

    const/4 v12, 0x2

    if-nez v4, :cond_1

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v12

    :goto_0
    or-int/2addr v4, v11

    goto :goto_1

    :cond_1
    move v4, v11

    :goto_1
    and-int/lit8 v5, v11, 0x30

    if-nez v5, :cond_3

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_3
    and-int/lit16 v5, v11, 0x180

    if-nez v5, :cond_5

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v4, v5

    :cond_5
    and-int/lit16 v5, v11, 0xc00

    if-nez v5, :cond_7

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x800

    goto :goto_4

    :cond_6
    const/16 v5, 0x400

    :goto_4
    or-int/2addr v4, v5

    :cond_7
    and-int/lit16 v4, v4, 0x493

    const/16 v5, 0x492

    if-ne v4, v5, :cond_9

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_15

    :cond_9
    :goto_5
    sget-object v4, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v13, v10, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonItemHeight:F

    iget v14, v10, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelGridPadding:F

    iget v4, v10, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelGridArrangement:F

    add-float v5, v13, v4

    int-to-double v6, v0

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-float v6, v6

    mul-float v19, v5, v6

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->getControlPanelItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v6, v12

    mul-float v7, v14, v6

    move/from16 v23, v13

    int-to-double v12, v5

    div-double/2addr v12, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v9, v12

    int-to-float v9, v9

    mul-float v13, v23, v9

    add-float/2addr v13, v7

    const/4 v12, 0x1

    sub-int/2addr v5, v12

    move v7, v13

    int-to-double v12, v5

    div-double/2addr v12, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v5, v12

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float v12, v5, v7

    rem-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_a

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    :goto_6
    move-object v13, v5

    goto :goto_7

    :cond_a
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopEnd:Landroidx/compose/ui/BiasAlignment;

    goto :goto_6

    :goto_7
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/unit/Density;

    iget v9, v10, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonItemWidth:F

    invoke-interface {v7, v9}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v9

    invoke-interface {v7, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v4

    mul-float/2addr v6, v9

    add-float/2addr v6, v4

    div-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_9

    :cond_c
    const/high16 v4, 0x3f000000    # 0.5f

    :goto_9
    invoke-interface {v1}, Landroidx/compose/animation/AnimatedVisibilityScope;->getTransition()Landroidx/compose/animation/core/Transition;

    move-result-object v6

    sget-object v7, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-virtual {v6}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/animation/EnterExitState;

    const v9, 0x6a0a8722

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/ui/unit/Density;

    sget-object v16, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v16, v7

    const/16 v24, 0x0

    const/4 v15, 0x1

    if-ne v7, v15, :cond_d

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_d
    move v7, v4

    :goto_a
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget-object v15, v6, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/animation/EnterExitState;

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v16, v5

    const/4 v15, 0x1

    if-ne v5, v15, :cond_e

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_e
    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v6}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v5

    const-string v9, "$this$animateFloat"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v9, -0x1f42f48c

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->expandAnimDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v9

    invoke-interface {v5}, Landroidx/compose/animation/core/Transition$Segment;->getTargetState()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/animation/EnterExitState;

    sget-object v15, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    if-ne v5, v15, :cond_f

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->expandAnimFadeDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v5

    goto :goto_b

    :cond_f
    const/4 v5, 0x0

    :goto_b
    sget-object v15, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    move-object/from16 v16, v7

    new-instance v7, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v7, v9, v5, v15}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/high16 v9, 0x30000

    move-object v5, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v16

    invoke-static/range {v4 .. v9}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v4

    move-object v15, v8

    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v6, v12}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const v7, 0x4c5de2

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v7, :cond_10

    if-ne v8, v12, :cond_11

    :cond_10
    new-instance v8, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v7, 0x14

    invoke-direct {v8, v7, v2}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_11
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v9, 0x7

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/foundation/ImageKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v13, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    iget v7, v15, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v15, v6}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v0, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v0, :cond_12

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_12
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_c
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v15, v8, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v15, v9, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v1, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_13

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    invoke-static {v7, v15, v7, v9}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_14
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v15, v6, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 v21, 0x0

    const/16 v22, 0xd

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v5

    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v14}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move/from16 v5, v23

    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget v5, v10, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonItemExpandedWidth:F

    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v5, Landroidx/compose/animation/FlingCalculator;

    iget v6, v10, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonCornerShape:F

    iget-object v4, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput v6, v5, Landroidx/compose/animation/FlingCalculator;->friction:F

    iput v4, v5, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    invoke-static {v2, v5}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v4, v4, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelButtonColor:J

    sget-object v6, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v2, v4, v5, v6}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->SpaceAround:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v6, 0x36

    invoke-static {v4, v5, v15, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v4

    iget v5, v15, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v15, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_15

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    :cond_15
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_d
    invoke-static {v15, v4, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15, v6, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v0, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_16

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    invoke-static {v5, v15, v5, v9}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_17
    invoke-static {v15, v2, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_18

    invoke-static {v15}, Landroidx/compose/runtime/AnchoredGroupPath;->createCompositionCoroutineScope(Landroidx/compose/runtime/ComposerImpl;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v15}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->expandAnimDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v6

    const v0, -0x4a41c088

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v8, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    move-object v4, v10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v1, v8, 0x1

    if-ltz v8, :cond_1e

    iget-object v2, v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    invoke-virtual {v2, v10}, Lcom/motorola/camera/settings/Setting;->getAndroidIcon(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    const v7, -0x4a41b743

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v2, :cond_19

    move-object/from16 v18, v0

    move-object v10, v4

    move-object/from16 v17, v5

    move/from16 v19, v6

    move-object v8, v15

    const/4 v14, 0x2

    :goto_f
    const/4 v5, 0x0

    goto/16 :goto_14

    :cond_19
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v9

    const v2, 0x6e3c21fe

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_1a

    new-instance v2, Landroidx/compose/animation/core/MutableTransitionState;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v7}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v13, v2, Landroidx/compose/animation/core/MutableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1a
    move-object v13, v2

    check-cast v13, Landroidx/compose/animation/core/MutableTransitionState;

    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, -0x6a34cc15

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v2, 0x7f0b000e

    const v14, 0x352b3590

    if-nez v8, :cond_1b

    move v2, v7

    goto :goto_10

    :cond_1b
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v2, v15}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->integerResource(ILandroidx/compose/runtime/ComposerImpl;)I

    move-result v25

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move/from16 v2, v25

    :goto_10
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v14, -0x6a34c17d

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v8, :cond_1c

    move v14, v7

    goto :goto_11

    :cond_1c
    invoke-static {v15}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->expandAnimDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v25

    move/from16 v14, v25

    :goto_11
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v7, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    move-object/from16 v18, v0

    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v0, v2, v14, v7}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v0

    const v2, 0x352b3590

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v2, 0x7f0b000e

    invoke-static {v2, v15}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->integerResource(ILandroidx/compose/runtime/ComposerImpl;)I

    move-result v2

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v14, -0x6a34a61d

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v8, :cond_1d

    invoke-static {v15}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->expandAnimDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v14

    :goto_12
    move-object/from16 v16, v0

    const/4 v0, 0x0

    goto :goto_13

    :cond_1d
    const/4 v14, 0x0

    goto :goto_12

    :goto_13
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v0, v2, v14, v7}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    const/4 v14, 0x2

    invoke-static {v0, v14}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;

    move-object v7, v3

    move-object v3, v4

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;-><init>(Lcom/motorola/camera/ui/compose/Dimensions;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Lkotlinx/coroutines/CoroutineScope;ILcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;IILjava/lang/Object;)V

    move-object v10, v3

    move-object/from16 v17, v5

    move/from16 v19, v6

    const v3, -0x3e64626

    invoke-static {v3, v2, v15}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    const v9, 0x180006

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v5, v0

    move-object v2, v13

    move-object v8, v15

    move-object/from16 v4, v16

    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility$1(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    goto/16 :goto_f

    :goto_14
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v3, p2

    move-object v15, v8

    move-object/from16 v5, v17

    move-object/from16 v0, v18

    move/from16 v6, v19

    move v8, v1

    goto/16 :goto_e

    :cond_1e
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v24

    :cond_1f
    move-object v8, v15

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_15
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_20

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method

.method public static final expandAnimDuration(Landroidx/compose/runtime/ComposerImpl;)I
    .locals 2

    const v0, 0x7871b73f

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v0, 0x7f0b006d

    invoke-static {v0, p0}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->integerResource(ILandroidx/compose/runtime/ComposerImpl;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return v0
.end method

.method public static final expandAnimFadeDuration(Landroidx/compose/runtime/ComposerImpl;)I
    .locals 2

    const v0, 0x2977cba3

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v0, 0x7f0b006d

    invoke-static {v0, p0}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->integerResource(ILandroidx/compose/runtime/ComposerImpl;)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return v0
.end method

.method public static final visibilityAnimDuration(Landroidx/compose/runtime/ComposerImpl;)I
    .locals 2

    const v0, 0x18eaf2c7

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v0, 0x7f0b0025

    invoke-static {v0, p0}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->integerResource(ILandroidx/compose/runtime/ComposerImpl;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return v0
.end method
