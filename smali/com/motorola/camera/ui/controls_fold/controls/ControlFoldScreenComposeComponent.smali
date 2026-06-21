.class public final Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;
.super Lcom/motorola/camera/ui/compose/component/ComposeComponent;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final controlBarGuideline$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public isFirstDraw:Z

.field public final isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final viewModel:Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/EventListener;)V

    iget-object p1, p2, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-object v0, p1, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getControlBarGuideline()F

    move-result v0

    new-instance v1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v1, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->controlBarGuideline$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object p1, p1, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    const-string v0, "getLayoutManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->isFirstDraw:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenViewModel;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenViewModel;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenViewModel;

    return-void
.end method


# virtual methods
.method public final ControlLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    const v2, 0x44347ca6

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p3, v2

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int v12, v2, v3

    and-int/lit8 v2, v12, 0x13

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_d

    :cond_3
    :goto_2
    sget-object v13, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v2, v2, Lcom/motorola/camera/ui/compose/Dimensions;->foldControlButtonSize:F

    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v14, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v15, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    const/16 v4, 0x30

    invoke-static {v15, v3, v5, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v3

    iget v4, v5, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v5, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_4

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v3, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v6, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v7, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_5

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    invoke-static {v4, v5, v4, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_6
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v2, v11}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    const v7, 0x6e3c21fe

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v18, v8

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v7, v8, :cond_7

    new-instance v7, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v7, v2}, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v19, v6

    const/16 v6, 0xc00

    move/from16 v20, v2

    move-object v2, v4

    move-object v4, v7

    const/4 v7, 0x6

    move-object/from16 v21, v3

    const/4 v3, 0x0

    move-object/from16 v17, v9

    move-object/from16 v23, v19

    move/from16 v9, v20

    move-object/from16 v22, v21

    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/MutableState;

    move-object v3, v2

    new-array v2, v9, [Ljava/lang/Object;

    const v4, 0x6e3c21fe

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v8, :cond_8

    new-instance v6, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move/from16 v19, v4

    move-object v4, v6

    const/16 v6, 0xc00

    const/4 v7, 0x6

    move-object/from16 v20, v3

    const/4 v3, 0x0

    move-object/from16 v9, v20

    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/MutableState;

    const v2, 0x6afede18

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->uiRotation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    iget-object v6, v0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenViewModel;

    if-nez v3, :cond_b

    iget-object v3, v6, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenViewModel;->isShowDualPane$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v3, v3, Lcom/motorola/camera/ui/compose/Dimensions;->foldControlButtonSize:F

    invoke-static {v14, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v7

    invoke-static {v3, v7}, Lcom/motorola/camera/ui/compose/CustomModifiersKt;->animateRotation$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v7, -0x615d173a

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    or-int v7, v7, v20

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v7, :cond_9

    if-ne v1, v8, :cond_a

    :cond_9
    new-instance v1, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    const/16 v7, 0x8

    invoke-direct {v1, v7, v9, v0}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v7, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$Draw$1;

    move-object/from16 v21, v1

    const/4 v1, 0x2

    invoke-direct {v7, v1, v9}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$Draw$1;-><init>(ILjava/lang/Object;)V

    const v1, -0x599a6b36

    invoke-static {v1, v7, v5}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    move-object v7, v8

    const/high16 v8, 0x30000

    const/16 v9, 0x1c

    move-object/from16 v24, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v17, v12

    move-object v12, v0

    move-object v0, v6

    move-object/from16 v25, v7

    const/4 v10, 0x0

    move-object/from16 v7, p2

    move-object v6, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v21

    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/ButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    move-object v2, v7

    goto :goto_4

    :cond_b
    move-object/from16 v0, v17

    move/from16 v17, v12

    move-object v12, v0

    move-object/from16 v24, v4

    move-object v0, v6

    move-object/from16 v25, v8

    move-object/from16 v1, v18

    const/4 v10, 0x0

    move-object/from16 v18, v2

    move-object v2, v5

    :goto_4
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v3, v3, Lcom/motorola/camera/ui/compose/Dimensions;->foldPaddingGap:F

    invoke-static {v14, v3}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v3, v3, Lcom/motorola/camera/ui/compose/Dimensions;->foldControlIconCornerShape:F

    invoke-static {v14, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v4, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    iget v5, v2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v2, v3}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_c

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_c
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_5
    invoke-static {v2, v4, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v9, v22

    invoke-static {v2, v6, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v4, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_d

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    move-object/from16 v4, v23

    goto :goto_6

    :cond_e
    move-object/from16 v4, v23

    goto :goto_7

    :goto_6
    invoke-static {v5, v2, v5, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :goto_7
    invoke-static {v2, v3, v11}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v3, v3, Lcom/motorola/camera/ui/compose/Dimensions;->foldPaddingGap:F

    const/4 v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v3, v5

    const/4 v7, 0x0

    const/16 v8, 0xe

    move v6, v5

    const/4 v5, 0x0

    move/from16 v16, v6

    const/4 v6, 0x0

    move-object/from16 v27, v4

    move v4, v3

    move-object v3, v14

    move-object/from16 v14, v27

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v4, v5}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v6, 0x7f0603f8

    invoke-static {v6, v2}, Landroidx/compose/ui/res/ColorResources_androidKt;->colorResource(ILandroidx/compose/runtime/ComposerImpl;)J

    move-result-wide v6

    sget-object v8, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v4, v6, v7, v8}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v15, v6, v2, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v6

    iget v7, v2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v2, v4}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v10, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_f

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_f
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_8
    invoke-static {v2, v6, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v15, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v6, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_10

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    :cond_10
    invoke-static {v7, v2, v7, v14}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_11
    invoke-static {v2, v4, v11}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v4, 0x6d681d39

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenViewModel;->isShowExternalDisplay$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v4, v4, Lcom/motorola/camera/ui/compose/Dimensions;->foldControlIconCornerShape:F

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v6

    invoke-static {v4, v6}, Lcom/motorola/camera/ui/compose/CustomModifiersKt;->animateRotation$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v6, 0x6e3c21fe

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v7, v25

    if-ne v6, v7, :cond_12

    new-instance v6, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v2, v6

    sget-object v6, Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt;->lambda$1694049696:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v7, v8

    const v8, 0x30006

    move-object/from16 v21, v9

    const/16 v9, 0x1c

    move-object v15, v3

    move-object v3, v4

    const/4 v4, 0x0

    move-object/from16 v19, v5

    const/4 v5, 0x0

    move-object/from16 v10, v21

    move-object/from16 v21, v0

    move-object v0, v15

    move-object v15, v10

    move-object/from16 v26, v7

    move-object/from16 v10, v19

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/ButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    move-object v5, v7

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v2, v2, Lcom/motorola/camera/ui/compose/Dimensions;->foldPaddingGap:F

    mul-float v2, v2, v16

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v3, v3, Lcom/motorola/camera/ui/compose/Dimensions;->foldControlIconCornerShape:F

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->BottomCenter:Landroidx/compose/ui/BiasAlignment;

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget v4, v5, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v5, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_13

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_13
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_9
    invoke-static {v5, v3, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v6, v15}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_14

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_14
    invoke-static {v4, v5, v4, v14}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_15
    invoke-static {v5, v2, v11}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v10}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v2, v2, Lcom/motorola/camera/ui/compose/Dimensions;->foldControlButtonDividerWidth:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v2, v2, Lcom/motorola/camera/ui/compose/Dimensions;->foldControlButtonDividerHeight:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->White:J

    move-object/from16 v7, v26

    invoke-static {v1, v2, v3, v7}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v3, v1, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static {v1, v5, v7}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_a

    :cond_16
    move-object/from16 v21, v0

    move-object v5, v2

    move-object v0, v3

    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v1, 0x6d68d9b2

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v1, v21

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenViewModel;->isShowRearCamera$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v1, v1, Lcom/motorola/camera/ui/compose/Dimensions;->foldControlIconCornerShape:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v7, v0, Lcom/motorola/camera/ui/compose/Dimensions;->foldPaddingGap:F

    const/4 v10, 0x0

    const/16 v11, 0xe

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/camera/ui/compose/CustomModifiersKt;->animateRotation$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt;->lambda$1682637641:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    and-int/lit8 v0, v17, 0xe

    const/high16 v1, 0x30000

    or-int v7, v0, v1

    const/16 v8, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/ButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    move-object v5, v6

    :goto_b
    const/4 v7, 0x0

    goto :goto_c

    :cond_17
    move-object/from16 v1, p1

    goto :goto_b

    :goto_c
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v0, 0x6d694dcd

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_d
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v2, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;

    const/4 v3, 0x2

    move-object/from16 v4, p0

    move/from16 v10, p3

    invoke-direct {v2, v10, v3, v4, v1}, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method

.method public final Draw(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 9

    const v0, 0x67097599

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    and-int/lit8 v2, v0, 0x3

    if-ne v2, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_2

    :cond_2
    :goto_1
    const v1, 0x7f0b000b

    invoke-static {v1, p2}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->integerResource(ILandroidx/compose/runtime/ComposerImpl;)I

    move-result v1

    const v2, 0x6e3c21fe

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v3, v4, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v3, Landroidx/compose/animation/core/Animatable;

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenViewModel;

    invoke-virtual {v6}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const v7, 0x4c5de2

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_4

    if-ne v8, v4, :cond_5

    :cond_4
    new-instance v8, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v7, 0xe

    invoke-direct {v8, v7, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v6, v8, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    const v7, -0x6815fd56

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_6

    if-ne v8, v4, :cond_7

    :cond_6
    new-instance v8, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;

    const/4 v7, 0x0

    invoke-direct {v8, p0, v3, v1, v7}, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;-><init>(Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;Landroidx/compose/animation/core/Animatable;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p2, v6, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_8

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->createCompositionCoroutineScope(Landroidx/compose/runtime/ComposerImpl;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_9

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v6, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;

    const/4 v7, 0x1

    invoke-direct {v6, p0, v1, v2, v7}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v7, 0x61158d9

    invoke-static {v7, v6, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/16 v7, 0x38

    invoke-static {v3, v6, p2, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    const v6, -0x615d173a

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_a

    if-ne v7, v4, :cond_b

    :cond_a
    new-instance v7, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v7, v1, v2, v4}, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x380

    invoke-virtual {p0, v3, v7, p2, v0}, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->RearSelfieTutorial(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    :cond_c
    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_d

    new-instance v0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponent;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method

.method public final RearSelfieTutorial(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move/from16 v3, p4

    const-string v4, "closeTutorial"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, -0x3e888175

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit8 v6, v3, 0x30

    if-nez v6, :cond_3

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    :cond_3
    and-int/lit16 v6, v3, 0x180

    if-nez v6, :cond_5

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v4, v6

    :cond_5
    and-int/lit16 v6, v4, 0x93

    const/16 v7, 0x92

    if-ne v6, v7, :cond_7

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v15, v0

    goto/16 :goto_1a

    :cond_7
    :goto_4
    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Black:J

    sget-object v9, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    iget v9, v11, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v11, v6}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v13, v11, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_8

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_5
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v11, v7, v13}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v11, v10, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v14, v11, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v14, :cond_9

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    :cond_9
    invoke-static {v9, v11, v9, v10}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_a
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v11, v6, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 v6, 0x10d

    int-to-float v6, v6

    int-to-float v14, v8

    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v15, v14, v6}, Landroidx/compose/foundation/layout/OffsetKt;->offset-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    sget-object v8, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v8, v6, v5}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    const/16 v1, 0x30

    invoke-static {v2, v6, v11, v1}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v2

    iget v6, v11, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-static {v11, v5}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v3, v11, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v3, :cond_b

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_6
    invoke-static {v11, v2, v13}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v1, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v11, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_c

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    invoke-static {v6, v11, v6, v10}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_d
    invoke-static {v11, v5, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz p1, :cond_e

    const v1, 0x7f110033

    goto :goto_7

    :cond_e
    const v1, 0x7f110032

    :goto_7
    new-instance v2, Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;

    invoke-direct {v2, v1}, Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v2, v11, v1}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt;->rememberLottieComposition(Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;Landroidx/compose/runtime/ComposerImpl;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    move-result-object v1

    if-eqz p1, :cond_f

    const/16 v2, 0xb4

    :goto_8
    int-to-float v2, v2

    goto :goto_9

    :cond_f
    const/16 v2, 0xfa

    goto :goto_8

    :goto_9
    if-eqz p1, :cond_10

    const/16 v3, 0xc8

    :goto_a
    int-to-float v3, v3

    goto :goto_b

    :cond_10
    const/16 v3, 0x118

    goto :goto_a

    :goto_b
    invoke-virtual {v1}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieComposition;

    invoke-static {v15, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/high16 v3, 0x180000

    invoke-static {v1, v2, v11, v3}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->LottieAnimation(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    iget-object v1, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_11

    const v2, 0x7f12062c

    goto :goto_c

    :cond_11
    const v2, 0x7f12062d

    :goto_c
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "getString(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x18

    if-eqz p1, :cond_12

    const/16 v2, 0x13

    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v5

    goto :goto_d

    :cond_12
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v5

    :goto_d
    if-eqz p1, :cond_13

    :goto_e
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v1

    goto :goto_f

    :cond_13
    const/16 v1, 0x1e

    goto :goto_e

    :goto_f
    if-eqz p1, :cond_14

    const/16 v7, 0x2e

    :goto_10
    int-to-float v7, v7

    goto :goto_11

    :cond_14
    const/16 v7, 0x7c

    goto :goto_10

    :goto_11
    if-eqz p1, :cond_15

    const/16 v9, 0x48

    :goto_12
    int-to-float v9, v9

    goto :goto_13

    :cond_15
    const/16 v9, 0x60

    goto :goto_12

    :goto_13
    const/4 v10, 0x0

    const/4 v12, 0x2

    invoke-static {v15, v7, v10, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v7, v14, v9}, Landroidx/compose/foundation/layout/OffsetKt;->offset-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v7

    move v9, v4

    move-object v4, v7

    move-object v10, v8

    move-wide v7, v5

    sget-wide v5, Landroidx/compose/ui/graphics/Color;->White:J

    move v12, v9

    new-instance v9, Landroidx/compose/ui/text/font/FontWeight;

    const/16 v13, 0x190

    invoke-direct {v9, v13}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    const-wide v16, 0x3fc851eb851eb852L    # 0.19

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v16

    move v13, v12

    new-instance v12, Landroidx/compose/ui/text/style/TextAlign;

    move-object/from16 v18, v15

    const/4 v15, 0x3

    invoke-direct {v12, v15}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v22, 0x0

    const v23, 0x1f950

    move/from16 v19, v15

    const/4 v15, 0x0

    move-wide/from16 v26, v16

    move-object/from16 v17, v10

    move-wide/from16 v10, v26

    const/16 v16, 0x0

    move-object/from16 v20, v17

    const/16 v17, 0x0

    move-object/from16 v21, v18

    const/16 v18, 0x0

    move/from16 v24, v19

    const/16 v19, 0x0

    move-object/from16 v25, v21

    const v21, 0xc30180

    move-object/from16 v0, v20

    move-object/from16 v20, p3

    move/from16 v26, v24

    move/from16 v24, v13

    move-wide/from16 v27, v1

    move v2, v14

    move-wide/from16 v13, v27

    move-object/from16 v1, v25

    move/from16 v25, v26

    invoke-static/range {v3 .. v23}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    move-object/from16 v11, v20

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz p1, :cond_16

    const/16 v3, 0x104

    :goto_14
    int-to-float v3, v3

    goto :goto_15

    :cond_16
    const/16 v3, 0x12f

    goto :goto_14

    :goto_15
    if-eqz p1, :cond_17

    const/16 v4, 0x30

    :goto_16
    int-to-float v4, v4

    goto :goto_17

    :cond_17
    const/16 v4, 0x38

    goto :goto_16

    :goto_17
    if-eqz p1, :cond_18

    const/16 v5, -0x48

    :goto_18
    int-to-float v5, v5

    goto :goto_19

    :cond_18
    const/16 v5, -0x40

    goto :goto_18

    :goto_19
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->BottomCenter:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v0, v1, v6}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v2, v5}, Landroidx/compose/foundation/layout/OffsetKt;->offset-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    new-instance v0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$SupportingPane$3;

    const/4 v1, 0x3

    move-object/from16 v15, p0

    invoke-direct {v0, v1, v15}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$SupportingPane$3;-><init>(ILjava/lang/Object;)V

    const v1, -0x2896927f

    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    shr-int/lit8 v0, v24, 0x3

    and-int/lit8 v0, v0, 0xe

    const/high16 v1, 0x30000000

    or-int v12, v0, v1

    const/16 v13, 0x1fc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v13}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1a
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_19

    new-instance v1, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda3;

    move/from16 v3, p1

    move/from16 v4, p4

    invoke-direct {v1, v15, v3, v2, v4}, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;ZLkotlin/jvm/functions/Function0;I)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method

.method public final getViewModel()Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenViewModel;

    return-object p0
.end method

.method public final onConfigurationChanged(Z)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    const-string v0, "getLayoutManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
