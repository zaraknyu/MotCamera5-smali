.class public final Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;
.super Lcom/motorola/camera/ui/compose/component/ComposeComponent;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->$r8$classId:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;

    invoke-direct {p1, p2}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponentViewModel;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponentViewModel;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    return-void

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/ui/compose/viewmodel/FeedbackPopupComponentViewModel;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/compose/viewmodel/FeedbackPopupComponentViewModel;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public ClickableOverlay(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast v4, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;

    const-string v5, "modifier"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x1fb51866

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v3

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    and-int/lit8 v6, v3, 0x30

    if-nez v6, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    :cond_3
    and-int/lit8 v5, v5, 0x13

    const/16 v6, 0x12

    if-ne v5, v6, :cond_5

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_5
    :goto_3
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v7}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v5

    iget v6, v2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v2, v1}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_6

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v5, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v8, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v8, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v8, :cond_7

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    invoke-static {v6, v2, v6, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_8
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v9, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/high16 v5, 0x3f000000    # 0.5f

    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v6, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v5, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-wide v9, Landroidx/compose/ui/graphics/Color;->Transparent:J

    sget-object v11, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v5, v9, v10, v11}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const v5, 0x6e3c21fe

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v13, v14, :cond_9

    new-instance v13, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v13}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    check-cast v13, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v4}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v15

    iget-object v15, v15, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v15}, Lcom/motorola/camera/fsm/Fsm;->isScrollInProgress()Z

    move-result v15

    const/4 v5, 0x1

    xor-int/2addr v15, v5

    move/from16 v19, v5

    const v5, 0x4c5de2

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v16, :cond_a

    if-ne v5, v14, :cond_b

    :cond_a
    new-instance v5, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;

    const/4 v8, 0x3

    invoke-direct {v5, v0, v8}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;I)V

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v17, v5

    check-cast v17, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v18, 0x18

    move-object v5, v14

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v8, v2, v7}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v6, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v6, v9, v10, v11}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const v6, 0x6e3c21fe

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_c

    new-instance v6, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v6}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    move-object v13, v6

    check-cast v13, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v4}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v4

    iget-object v4, v4, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/Fsm;->isScrollInProgress()Z

    move-result v4

    xor-int/lit8 v15, v4, 0x1

    const v4, 0x4c5de2

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_d

    if-ne v6, v5, :cond_e

    :cond_d
    new-instance v6, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;

    const/4 v4, 0x4

    invoke-direct {v6, v0, v4}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;I)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v17, v6

    check-cast v17, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v18, 0x18

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v4, v2, v7}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    move/from16 v4, v19

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_f

    new-instance v4, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v3, v5}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponent;Ljava/lang/Object;II)V

    iput-object v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public final Draw(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const v0, -0x5635b1bf

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

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_2
    :goto_1
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    const v1, 0x606fd122

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/LayoutDirection;

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$Draw$1;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$Draw$1;-><init>(ILjava/lang/Object;)V

    const v2, 0x451d1181

    invoke-static {v2, v1, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, p2, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast v0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponentViewModel;

    const v1, 0x1744a754

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    or-int/2addr v1, p1

    and-int/lit8 v3, v1, 0x3

    if-ne v3, v2, :cond_7

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_6

    :cond_7
    :goto_5
    const v2, 0x58b82848

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v2, v0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponentViewModel;->showFlipThePhoneTip$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    and-int/lit8 v2, v1, 0xe

    invoke-virtual {p0, v2, p2}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->FlipThePhoneTip(ILandroidx/compose/runtime/ComposerImpl;)V

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponentViewModel;->showExternalDisplayToast$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    and-int/lit8 v0, v1, 0xe

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->ExternalDisplayToast(ILandroidx/compose/runtime/ComposerImpl;)V

    :cond_9
    :goto_6
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_a

    new-instance v0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void

    :pswitch_1
    const v0, -0x233ede8c

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto :goto_7

    :cond_b
    move v0, v1

    :goto_7
    or-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_d

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v9, p2

    goto/16 :goto_9

    :cond_d
    :goto_8
    const v0, 0x7f1201ed

    iget-object v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f1201ec

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x4c5de2

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v5, :cond_e

    if-ne v6, v7, :cond_f

    :cond_e
    new-instance v6, Lcom/motorola/camera/ui/compose/component/FeedbackPopupComponent$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v6, p0, v5}, Lcom/motorola/camera/ui/compose/component/FeedbackPopupComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;I)V

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v8, 0x7f1201eb

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_10

    if-ne v10, v7, :cond_11

    :cond_10
    new-instance v10, Lcom/motorola/camera/ui/compose/component/FeedbackPopupComponent$$ExternalSyntheticLambda0;

    const/4 v9, 0x1

    invoke-direct {v10, p0, v9}, Lcom/motorola/camera/ui/compose/component/FeedbackPopupComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;I)V

    invoke-virtual {p2, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_11
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v9, 0x7f1201ea

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_12

    if-ne v4, v7, :cond_13

    :cond_12
    new-instance v4, Lcom/motorola/camera/ui/compose/component/FeedbackPopupComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {v4, p0, v0}, Lcom/motorola/camera/ui/compose/component/FeedbackPopupComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;I)V

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_13
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v5, v8

    move-object v8, v4

    move-object v4, v6

    move-object v6, v10

    const/4 v10, 0x0

    move-object v9, p2

    move-object v7, v1

    invoke-static/range {v2 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkf;->TwoButtonsStackedDialog(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_9
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_14

    new-instance v0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponent;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void

    :pswitch_2
    move-object v9, p2

    const p2, -0x3ee1a88d

    invoke-virtual {v9, p2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v9, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_15

    const/4 p2, 0x4

    goto :goto_a

    :cond_15
    move p2, v0

    :goto_a
    or-int/2addr p2, p1

    and-int/lit8 v1, p2, 0x3

    if-ne v1, v0, :cond_17

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_b

    :cond_16
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_c

    :cond_17
    :goto_b
    and-int/lit8 p2, p2, 0xe

    invoke-virtual {p0, p2, v9}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->Onboard(ILandroidx/compose/runtime/ComposerImpl;)V

    :goto_c
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_18

    new-instance v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public DrawTripodPreviewSwitchComponent(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v7, p2

    const v2, -0x5c57dd44

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x3

    if-ne v2, v3, :cond_2

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_2
    :goto_1
    sget-object v2, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget-object v3, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v3

    iget v4, v2, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarIconClickSize:F

    sub-float/2addr v3, v4

    iget v4, v2, Lcom/motorola/camera/ui/compose/Dimensions;->tripodPreviewSwitchIconButtonPadding:F

    sub-float v10, v3, v4

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    iget v9, v2, Lcom/motorola/camera/ui/compose/Dimensions;->tripodPreviewSwitchPaddingStart:F

    const/4 v12, 0x0

    const/16 v13, 0xc

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    iget v8, v7, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v7, v4}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_3

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v5, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v9, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v9, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v9, :cond_4

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    invoke-static {v8, v7, v8, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_5
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v4, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v4, v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    move-object v10, v4

    check-cast v10, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;

    const v4, 0x4c5de2

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_6

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v5, v4, :cond_7

    :cond_6
    new-instance v8, Landroidx/room/RoomDatabase$closeBarrier$1;

    const/4 v15, 0x0

    const/16 v16, 0x7

    const/4 v9, 0x0

    const-class v11, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;

    const-string v12, "onToggleClicked"

    const-string v13, "onToggleClicked()V"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v16}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v5, v8

    :cond_7
    check-cast v5, Lkotlin/reflect/KFunction;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget v4, v2, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarIconClickSize:F

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    check-cast v5, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides$$Lambda$3;

    const/4 v6, 0x2

    invoke-direct {v4, v6, v0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides$$Lambda$3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21ab679

    invoke-static {v2, v4, v7}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const v8, 0x30180

    const/16 v9, 0x18

    const/4 v4, 0x1

    move-object v2, v5

    const/4 v5, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/ButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_3
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v3, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponent$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v4}, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public ExternalDisplayToast(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 10

    const v0, -0x3e324c00

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

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v5, p2

    goto/16 :goto_3

    :cond_2
    :goto_1
    const v0, 0x4c5de2

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v1, v0, :cond_4

    :cond_3
    new-instance v1, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$ExternalDisplayToast$1$1;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$ExternalDisplayToast$1$1;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;

    const v1, 0x7f110018

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;-><init>(I)V

    const/4 v1, 0x6

    invoke-static {v0, p2, v1}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt;->rememberLottieComposition(Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;Landroidx/compose/runtime/ComposerImpl;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/compose/Dimensions;

    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget v6, v1, Lcom/motorola/camera/ui/compose/Dimensions;->externalDisplayTipPaddingTop:F

    const/4 v8, 0x0

    const/16 v9, 0xd

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    const/16 v6, 0x30

    invoke-static {v5, v4, p2, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    iget v5, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {p2, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_5

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v4, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v6, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v6, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_6

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    invoke-static {v5, p2, v5, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_7
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v2, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget v7, v1, Lcom/motorola/camera/ui/compose/Dimensions;->externalDisplayTipPaddingBottom:F

    const/4 v8, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget v1, v1, Lcom/motorola/camera/ui/compose/Dimensions;->externalDisplayTipSize:F

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v0}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    const/high16 v2, 0x180000

    invoke-static {v0, v1, p2, v2}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->LottieAnimation(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1205d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v3, 0x0

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lcom/motorola/camera/ui/compose/composable/HintMessageKt;->HintMessage(Ljava/lang/String;Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/ComposerImpl;II)V

    const/4 p2, 0x1

    invoke-virtual {v5, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_3
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance v0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public FlipThePhoneTip(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 10

    const v0, 0x74da5325

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

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_4

    :cond_2
    :goto_1
    const v0, 0x4c5de2

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v1, v0, :cond_4

    :cond_3
    new-instance v1, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$FlipThePhoneTip$1$1;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$FlipThePhoneTip$1$1;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p2, v2, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    iget-object v2, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-float v8, v0

    sget-object v0, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    const/4 v7, 0x0

    const/4 v9, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->uiRotation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/motorola/camera/ui/compose/CustomModifiersKt;->animateRotation$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/16 v5, 0x36

    invoke-static {v2, v4, p2, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v2

    iget v4, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {p2, v1}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_6

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v2, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v5, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v5, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_7

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    invoke-static {v4, p2, v4, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_8
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v1, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v1, 0x7f080177

    const/4 v2, 0x6

    invoke-static {v1, p2, v2}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    iget v8, v0, Lcom/motorola/camera/ui/compose/Dimensions;->flipThePhoneTipPaddingBottom:F

    const/4 v9, 0x7

    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->flipThePhoneTipSize:F

    invoke-static {v2, v0, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v7, 0x30

    const/16 v8, 0x78

    move-object v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FLandroidx/compose/runtime/ComposerImpl;II)V

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12033f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/ui/compose/composable/HintMessageKt;->HintMessage(Ljava/lang/String;Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/ComposerImpl;II)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public LastPageSwipeDetector(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 3

    const v0, 0x5b5c1d6e

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p1, 0x6

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;

    invoke-virtual {v0}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object v0, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const v1, 0x4c5de2

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_4

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v2, v1, :cond_5

    :cond_4
    new-instance v2, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v2, v1, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v2, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p0}, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;-><init>(IILjava/lang/Object;)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public Onboard(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v12, p2

    iget-object v2, v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast v2, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;

    const v3, -0x3bba2986

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    or-int v19, p1, v3

    and-int/lit8 v3, v19, 0x3

    if-ne v3, v4, :cond_2

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v0

    goto/16 :goto_9

    :cond_2
    :goto_1
    const v3, 0x4c5de2

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_3

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v5, v3, :cond_4

    :cond_3
    new-instance v5, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v5, v0, v3}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;I)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v6, 0x36

    invoke-static {v3, v5, v12, v6, v3}, Landroidx/compose/foundation/pager/PagerStateKt;->rememberPagerState(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/foundation/pager/DefaultPagerState;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v2, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;

    iget-object v5, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v7

    const-string v8, "getLayoutManager(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v5

    const/4 v8, 0x3

    invoke-static {v5, v8}, Lcom/motorola/camera/Util;->isCLIState(Landroid/content/Context;I)Z

    move-result v5

    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v5, :cond_6

    iget-object v5, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v5, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v3, v5

    float-to-int v3, v3

    :cond_5
    int-to-float v15, v3

    invoke-virtual {v7}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v17

    const/16 v18, 0x5

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    goto :goto_2

    :cond_6
    iget-object v5, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v5, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v3, v5

    float-to-int v3, v3

    :cond_7
    int-to-float v3, v3

    const/16 v18, 0x7

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v3

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :goto_2
    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v5, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v5, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->uiRotation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v5

    invoke-static {v3, v5}, Lcom/motorola/camera/ui/compose/CustomModifiersKt;->animateRotation$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    invoke-static {v5, v4, v12, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    iget v5, v12, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v12, v3}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, v12, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_8

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v12, v4, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v12, v6, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v9, v12, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v9, :cond_9

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    invoke-static {v5, v12, v5, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_a
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v12, v3, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v2}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v11

    new-instance v2, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$Onboard$2$1;

    invoke-direct {v2, v0}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$Onboard$2$1;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;)V

    const v3, 0x2a080e31

    invoke-static {v3, v2, v12}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    move-object v3, v4

    const/16 v4, 0x6000

    move-object v9, v5

    const/16 v5, 0x3fee

    move-object v10, v13

    move-object v13, v2

    const/4 v2, 0x0

    move-object v14, v3

    const/4 v3, 0x1

    move-object v15, v6

    const/4 v6, 0x0

    move-object/from16 v16, v7

    const/4 v7, 0x0

    move-object/from16 v17, v8

    const/4 v8, 0x0

    move-object/from16 v18, v9

    const/4 v9, 0x0

    move-object/from16 v20, v10

    const/4 v10, 0x0

    move-object/from16 v21, v14

    const/4 v14, 0x0

    move-object/from16 v22, v15

    const/4 v15, 0x0

    move-object/from16 v23, v16

    const/16 v16, 0x0

    move-object/from16 v24, v17

    const/16 v17, 0x0

    move-object/from16 v25, v18

    const/16 v18, 0x0

    move-object/from16 v0, v20

    move-object/from16 v26, v21

    move-object/from16 v27, v22

    move-object/from16 v1, v23

    move-object/from16 v28, v25

    invoke-static/range {v2 .. v18}, Landroidx/compose/foundation/pager/PagerKt;->HorizontalPager--8jOkeI(FIIILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Z)V

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v4, 0x6

    invoke-static {v2, v3, v12, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    iget v3, v12, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v12, v0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v5, v12, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_b

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    :goto_4
    move-object/from16 v1, v24

    goto :goto_5

    :cond_b
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    goto :goto_4

    :goto_5
    invoke-static {v12, v2, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v14, v26

    invoke-static {v12, v4, v14}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v12, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_c

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    move-object/from16 v15, v27

    goto :goto_7

    :cond_d
    :goto_6
    move-object/from16 v9, v28

    goto :goto_8

    :goto_7
    invoke-static {v3, v12, v3, v15}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    goto :goto_6

    :goto_8
    invoke-static {v12, v0, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v0, v19, 0xe

    move-object/from16 v1, p0

    invoke-virtual {v1, v0, v12}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->PagerIndicator(ILandroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {v1, v0, v12}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->PagerButtons(ILandroidx/compose/runtime/ComposerImpl;)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_9
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v2, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    move/from16 v4, p1

    invoke-direct {v2, v1, v4, v3}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;II)V

    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

.method public OnboardItem(ILandroidx/compose/runtime/ComposerImpl;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v8, p2

    const v2, 0x3ad23df6

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, p3, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p3, v2

    goto :goto_1

    :cond_1
    move/from16 v2, p3

    :goto_1
    and-int/lit8 v3, p3, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_3
    move v12, v2

    and-int/lit8 v2, v12, 0x13

    const/16 v3, 0x12

    if-ne v2, v3, :cond_5

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v4, v0

    move-object v1, v8

    goto/16 :goto_9

    :cond_5
    :goto_3
    sget-object v13, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v2, v2, Lcom/motorola/camera/ui/compose/Dimensions;->onboardItemHeight:F

    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v14, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x0

    invoke-static {v3, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

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

    if-eqz v7, :cond_6

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v8, v3, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v8, v5, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v9, v8, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v9, :cond_7

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    invoke-static {v4, v8, v4, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_8
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v8, v2, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v2, v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast v2, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;

    iget-object v2, v2, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->onboardList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v9, 0x6f1a80b0

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget v9, v2, Lcom/motorola/camera/cli/onboard/model/Onboard;->text:I

    iget v10, v2, Lcom/motorola/camera/cli/onboard/model/Onboard;->image:I

    if-eqz v9, :cond_d

    if-eqz v10, :cond_d

    new-instance v15, Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;

    invoke-direct {v15, v10}, Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;-><init>(I)V

    move/from16 v16, v12

    const/4 v12, 0x0

    invoke-static {v15, v8, v12}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt;->rememberLottieComposition(Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;Landroidx/compose/runtime/ComposerImpl;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    move-result-object v15

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v14, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    move-object/from16 v17, v15

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    const/16 v11, 0x30

    invoke-static {v1, v15, v8, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v1

    iget v11, v8, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v8, v12}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v0, v8, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v0, :cond_9

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_5
    invoke-static {v8, v1, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v15, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v0, v8, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_a

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    invoke-static {v11, v8, v11, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_b
    invoke-static {v8, v12, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v0, v2, Lcom/motorola/camera/cli/onboard/model/Onboard;->isAnimation:Z

    if-eqz v0, :cond_c

    const v0, 0x47e757ac

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->onboardItemLottieSize:F

    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieComposition;

    const/high16 v2, 0x180000

    invoke-static {v1, v0, v8, v2}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->LottieAnimation(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v1, v8

    move v0, v9

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    const v0, 0x47ec14ab

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v10, v8, v12}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v2

    invoke-static {v9, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v3

    move v0, v9

    const/4 v9, 0x0

    const/16 v10, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FLandroidx/compose/runtime/ComposerImpl;II)V

    move-object v1, v8

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_6
    invoke-static {v0, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v5, v2, Lcom/motorola/camera/ui/compose/Dimensions;->onboardTextPadding:F

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v14

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    shl-int/lit8 v3, v16, 0x3

    and-int/lit16 v3, v3, 0x380

    move-object/from16 v4, p0

    invoke-virtual {v4, v0, v2, v1, v3}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->OnboardText(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_7
    const/4 v12, 0x0

    goto :goto_8

    :cond_d
    move-object v4, v0

    move-object v1, v8

    move/from16 v16, v12

    goto :goto_7

    :goto_8
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->matchParentSize()Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v2, v16, 0x70

    invoke-virtual {v4, v0, v1, v2}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->ClickableOverlay(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    shr-int/lit8 v0, v16, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {v4, v0, v1}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->LastPageSwipeDetector(ILandroidx/compose/runtime/ComposerImpl;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_9
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    move/from16 v3, p1

    move/from16 v11, p3

    invoke-direct {v1, v4, v3, v11, v2}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponent;III)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

.method public OnboardText(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string/jumbo v3, "text"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, -0x24b8b207

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, p4, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p4, v3

    goto :goto_1

    :cond_1
    move/from16 v3, p4

    :goto_1
    and-int/lit8 v4, p4, 0x30

    if-nez v4, :cond_3

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    and-int/lit8 v4, v3, 0x13

    const/16 v5, 0x12

    if-ne v4, v5, :cond_5

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_4

    :cond_5
    :goto_3
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->White:J

    sget-object v6, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/Dimensions;

    iget-wide v7, v7, Lcom/motorola/camera/ui/compose/Dimensions;->onboardTextFontSize:J

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/compose/Dimensions;

    iget-wide v10, v9, Lcom/motorola/camera/ui/compose/Dimensions;->onboardTextLineHeight:J

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v14, v9, Lcom/motorola/camera/ui/compose/Dimensions;->onboardTextMaxLines:I

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v9, v9, Lcom/motorola/camera/ui/compose/Dimensions;->onboardTextBackgroundRoundness:F

    invoke-static {v9}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v9

    invoke-static {v1, v9}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const v12, 0x7f0603f8

    invoke-static {v12, v2}, Landroidx/compose/ui/res/ColorResources_androidKt;->colorResource(ILandroidx/compose/runtime/ComposerImpl;)J

    move-result-wide v12

    sget-object v15, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v9, v12, v13, v15}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/4 v12, 0x1

    int-to-float v12, v12

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v13, v13, Lcom/motorola/camera/ui/compose/Dimensions;->onboardTextBackgroundWidth:F

    invoke-static {v9, v12, v13}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v12, v12, Lcom/motorola/camera/ui/compose/Dimensions;->onboardTextBackgroundPaddingHorizontal:F

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v6, v6, Lcom/motorola/camera/ui/compose/Dimensions;->onboardTextBackgroundPaddingVertical:F

    invoke-static {v9, v12, v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v6

    new-instance v9, Landroidx/compose/ui/text/style/TextAlign;

    const/4 v12, 0x3

    invoke-direct {v9, v12}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    and-int/lit8 v3, v3, 0xe

    or-int/lit16 v3, v3, 0x180

    const/16 v19, 0x30

    const v20, 0x1d1f0

    move-object v1, v6

    const/4 v6, 0x0

    move/from16 v18, v3

    move-wide v2, v4

    move-wide v4, v7

    const-wide/16 v7, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, p3

    invoke-static/range {v0 .. v20}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda11;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p4

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;Ljava/lang/String;Landroidx/compose/ui/Modifier;I)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public PagerButtons(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v7, p2

    iget-object v2, v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    move-object v10, v2

    check-cast v10, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;

    const v2, 0x7000e66d

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v11

    :goto_0
    or-int/2addr v2, v1

    const/4 v12, 0x3

    and-int/2addr v2, v12

    if-ne v2, v11, :cond_2

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_2
    :goto_1
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v13, 0x0

    invoke-static {v2, v3, v7, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    iget v3, v7, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v7, v14}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_3

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v2, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v4, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_4

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    invoke-static {v3, v7, v3, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_5
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v5, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v2, -0x718743e3

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v2

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    const v3, 0x4c5de2

    const/4 v4, 0x1

    if-lez v2, :cond_8

    sget-object v2, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v5, v5, Lcom/motorola/camera/ui/compose/Dimensions;->onboardButtonLargePadding:F

    const/4 v6, 0x0

    invoke-static {v14, v6, v5, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v2, v2, Lcom/motorola/camera/ui/compose/Dimensions;->onboardButtonSize:F

    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    int-to-float v5, v4

    sget-wide v8, Landroidx/compose/ui/graphics/Color;->White:J

    new-instance v6, Landroidx/compose/foundation/BorderStroke;

    new-instance v12, Landroidx/compose/ui/graphics/SolidColor;

    invoke-direct {v12, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    invoke-direct {v6, v5, v12}, Landroidx/compose/foundation/BorderStroke;-><init>(FLandroidx/compose/ui/graphics/Brush;)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_6

    if-ne v8, v15, :cond_7

    :cond_6
    new-instance v8, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0, v4}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;I)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v5, Lcom/motorola/camera/cli/onboard/large/ComposableSingletons$LargeCliOnboardComponentKt;->lambda$1653312013:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/high16 v9, 0xc30000

    move v5, v4

    const/4 v4, 0x0

    move v12, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move v12, v3

    move-object v3, v2

    move-object v2, v8

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/ButtonKt;->OutlinedIconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/ComposerImpl;I)V

    move-object v7, v8

    goto :goto_3

    :cond_8
    move v12, v3

    :goto_3
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v10}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v2

    invoke-virtual {v10}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v11

    if-lt v2, v3, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    move v4, v13

    :goto_4
    sget-object v2, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v3, v3, Lcom/motorola/camera/ui/compose/Dimensions;->onboardButtonSmallPadding:F

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v5, v5, Lcom/motorola/camera/ui/compose/Dimensions;->onboardButtonLargePadding:F

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v6, v6, Lcom/motorola/camera/ui/compose/Dimensions;->onboardButtonLargePadding:F

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v8, v8, Lcom/motorola/camera/ui/compose/Dimensions;->onboardButtonLargePadding:F

    invoke-static {v14, v3, v5, v6, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v2, v2, Lcom/motorola/camera/ui/compose/Dimensions;->onboardButtonSize:F

    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v2, v3}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-wide v5, Landroidx/compose/ui/graphics/Color;->White:J

    sget-object v3, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v2, v5, v6, v3}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_a

    if-ne v5, v15, :cond_b

    :cond_a
    new-instance v5, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v11}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    move-object v2, v5

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v5, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$PagerButtons$1$3;

    invoke-direct {v5, v4}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$PagerButtons$1$3;-><init>(Z)V

    const v4, 0x528f004c

    invoke-static {v4, v5, v7}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/high16 v8, 0x30000

    const/16 v9, 0x1c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/ButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v3, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v1, v4}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method

.method public PagerIndicator(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;

    const v1, -0x1c780dc5

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p1

    const/4 v3, 0x3

    and-int/2addr v1, v3

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_2
    :goto_1
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v4, v4, Lcom/motorola/camera/ui/compose/Dimensions;->onboardPagerIndicatorPaddingHorizontal:F

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v3, v3, Lcom/motorola/camera/ui/compose/Dimensions;->onboardPagerIndicatorPaddingVertical:F

    invoke-static {v2, v4, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v5, 0x6

    invoke-static {v3, v4, p2, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v3

    iget v4, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {p2, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_3

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v3, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v5, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v5, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_4

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    invoke-static {v4, p2, v4, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_5
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v2, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v2, -0x2aa18a10

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_3
    if-ge v5, v2, :cond_8

    invoke-virtual {v0}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v6

    if-ne v6, v5, :cond_6

    sget-wide v6, Landroidx/compose/ui/graphics/Color;->White:J

    goto :goto_4

    :cond_6
    sget-wide v6, Landroidx/compose/ui/graphics/Color;->LightGray:J

    :goto_4
    invoke-virtual {v0}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v8

    if-ne v8, v5, :cond_7

    const v8, 0x717fcf7e

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v8, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v8, v8, Lcom/motorola/camera/ui/compose/Dimensions;->onboardPagerIndicatorDotExpandedSize:F

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_5

    :cond_7
    const v8, 0x71814e26

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v8, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v8, v8, Lcom/motorola/camera/ui/compose/Dimensions;->onboardPagerIndicatorDotSize:F

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    sget-object v9, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v10, v10, Lcom/motorola/camera/ui/compose/Dimensions;->onboardPagerIndicatorDotPadding:F

    invoke-static {v1, v10}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v11, v11, Lcom/motorola/camera/ui/compose/Dimensions;->onboardPagerIndicatorDotSize:F

    invoke-static {v11}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v10, v6, v7, v11}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v7, v7, Lcom/motorola/camera/ui/compose/Dimensions;->onboardPagerIndicatorDotSize:F

    invoke-static {v6, v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v6, p2, v4}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_6
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_9

    new-instance v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public final getViewModel()Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponentViewModel;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/ui/compose/viewmodel/FeedbackPopupComponentViewModel;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Z)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPreviewSwitchSupportedOnCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->setVisible(Z)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public rotate(I)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->rotate(I)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->rotate(I)V

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponentViewModel;

    iput p1, p0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponentViewModel;->orientation:I

    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponentViewModel;->showFlipThePhoneTip$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI_FLIP_TOOLTIP:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponentViewModel;->dismiss()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
