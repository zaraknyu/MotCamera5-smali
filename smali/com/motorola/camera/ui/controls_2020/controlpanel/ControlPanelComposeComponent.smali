.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;
.super Lcom/motorola/camera/ui/compose/component/ComposeComponent;
.source "SourceFile"


# instance fields
.field public isSplitScreen:Z

.field public final isVisibilityHandled:Z

.field public final viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->isVisibilityHandled:Z

    iget-object p1, p2, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-object p1, p1, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    const-string p2, "getLayoutManager(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->isSplitScreen:Z

    return-void
.end method

.method public static getAnimationTransformOrigin-zey9I6w(ZLandroidx/compose/ui/unit/LayoutDirection;)J
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const v1, 0x3f666666    # 0.9f

    :goto_0
    if-eqz p0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    :cond_1
    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    int-to-float p0, p0

    sub-float v1, p0, v1

    :goto_1
    invoke-static {v1, v0}, Landroidx/compose/ui/graphics/Brush;->TransformOrigin(FF)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final ControlPanelCompose(Landroidx/compose/animation/AnimatedVisibilityScope;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p3

    const-string v0, "<this>"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewModel"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x60cffef4

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    or-int v0, p4, v0

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v0, v5

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v0, v5

    and-int/lit16 v5, v0, 0x93

    const/16 v6, 0x92

    if-ne v5, v6, :cond_4

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_4
    :goto_3
    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->visibilityAnimDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v5

    sget-object v6, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v7, Landroidx/compose/animation/core/TweenSpec;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v8, v5}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->getAnimationTransformOrigin-zey9I6w(ZLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v11

    iget-object v5, v3, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/EventListener;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getControlBarGuideline()F

    move-result v5

    sget-object v9, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v9, v9, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarHeight:F

    add-float v15, v5, v9

    const/16 v17, 0x0

    const/16 v18, 0xd

    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v7, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v9

    invoke-static {v7, v11, v12, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleIn-L8ZKh-E$default(Landroidx/compose/animation/core/TweenSpec;JI)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v9

    invoke-static {v7, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v13

    invoke-static {v7, v11, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleOut-L8ZKh-E$default(Landroidx/compose/animation/core/TweenSpec;J)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v7

    invoke-interface {v2, v5, v9, v7}, Landroidx/compose/animation/AnimatedVisibilityScope;->animateEnterExit(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v7, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v11, v7, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity85:J

    sget-object v7, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v5, v11, v12, v7}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const v5, 0x6e3c21fe

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v5, v7, :cond_5

    new-instance v5, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v7, 0x15

    invoke-direct {v5, v7}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v18, v5

    check-cast v18, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v19, 0x1c

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    iget v9, v10, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v10, v5}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v13, v10, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_6

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v10, v7, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v10, v11, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v11, v10, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v11, :cond_7

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    :cond_7
    invoke-static {v9, v10, v9, v7}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_8
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v10, v5, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x7e

    invoke-virtual {v1, v3, v10, v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->ControlPanelGrid(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V

    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->controlPanelItemExpanded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->expandAnimFadeDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v5

    new-instance v7, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v7, v5, v8, v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    invoke-static {v7, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v5

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->expandAnimFadeDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v7

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->expandAnimDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v8

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->expandAnimFadeDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v9

    sub-int/2addr v8, v9

    new-instance v9, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v9, v7, v8, v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    invoke-static {v9, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v7

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$ControlPanelCompose$2$1;

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$ControlPanelCompose$2$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;I)V

    const v6, -0x349430aa    # -1.5454038E7f

    invoke-static {v6, v4, v10}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    const/high16 v11, 0x30000

    move-object v6, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v4, v0

    invoke-static/range {v4 .. v11}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_9

    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public final ControlPanelComposeFullScreen(Landroidx/compose/animation/AnimatedVisibilityScope;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p3

    const-string v0, "<this>"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewModel"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x78773cd9

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    or-int v0, p4, v0

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v0, v5

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v0, v5

    and-int/lit16 v5, v0, 0x93

    const/16 v6, 0x92

    if-ne v5, v6, :cond_4

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_a

    :cond_4
    :goto_3
    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->visibilityAnimDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v5

    sget-object v6, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v7, Landroidx/compose/animation/core/TweenSpec;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->expandAnimDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v5

    mul-int/2addr v5, v4

    sget-object v9, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOutBack:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-static {v5, v8, v9, v4}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v5

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v12, 0x1

    invoke-static {v12, v9}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->getAnimationTransformOrigin-zey9I6w(ZLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v13

    const v9, 0x6e3c21fe

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v11, v15, :cond_5

    new-instance v11, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-direct {v11, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v11, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v12, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->onPositionChangedFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v12, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    iget-object v9, v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->lastOpenedKey$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v9, :cond_b

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v4, "mName"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v16, 0x0

    if-eqz v4, :cond_6

    sget-object v4, Lcom/motorola/camera/ui/compose/ComposablePositions;->SLOW_MOTION_FRAME_RATE_BUTTON:Lcom/motorola/camera/ui/compose/ComposablePositions;

    goto :goto_4

    :cond_6
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/motorola/camera/ui/compose/ComposablePositions;->CONTROL_PANEL_BUTTON:Lcom/motorola/camera/ui/compose/ComposablePositions;

    goto :goto_4

    :cond_7
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/motorola/camera/ui/compose/ComposablePositions;->FRAME_RATE_BUTTON:Lcom/motorola/camera/ui/compose/ComposablePositions;

    goto :goto_4

    :cond_8
    move-object/from16 v4, v16

    :goto_4
    if-eqz v4, :cond_9

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroidx/compose/ui/geometry/Rect;

    :cond_9
    if-nez v16, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    move-object/from16 v4, v16

    goto :goto_7

    :cond_b
    :goto_6
    sget-object v16, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    goto :goto_5

    :goto_7
    sget-object v9, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v12, v12, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarVerticalPaddingStart:F

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v8, v8, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarIconClickSize:F

    add-float/2addr v12, v8

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v8, v8, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelFullScreenMargin:F

    add-float/2addr v12, v8

    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move/from16 v16, v0

    const/4 v0, 0x3

    invoke-static {v8, v0}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentWidth$default(Landroidx/compose/ui/Modifier;I)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelFullScreenVerticalGridWidth:F

    invoke-static {v8, v0}, Landroidx/compose/foundation/layout/SizeKt;->requiredWidth-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v8, 0x4c5de2

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v15, :cond_c

    new-instance v8, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    move-object/from16 v17, v6

    const/16 v6, 0xb

    invoke-direct {v8, v6, v11}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_8

    :cond_c
    move-object/from16 v17, v6

    :goto_8
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v8}, Landroidx/compose/ui/layout/ScaleFactorKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v6, -0x6815fd56

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v6

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v6, v8

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_d

    if-ne v8, v15, :cond_e

    :cond_d
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda3;

    invoke-direct {v8, v12, v4, v11}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda3;-><init>(FLandroidx/compose/ui/geometry/Rect;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_e
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v8}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v7, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v6

    invoke-static {v5, v13, v14, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleIn-L8ZKh-E$default(Landroidx/compose/animation/core/TweenSpec;JI)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v5

    invoke-static {v7, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v6

    invoke-static {v7, v13, v14}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleOut-L8ZKh-E$default(Landroidx/compose/animation/core/TweenSpec;J)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v4

    invoke-interface {v2, v0, v5, v4}, Landroidx/compose/animation/AnimatedVisibilityScope;->animateEnterExit(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/ui/Modifier;

    move-result-object v19

    const v0, 0x6e3c21fe

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_f

    new-instance v0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v4, 0x15

    invoke-direct {v0, v4}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    move-object/from16 v24, v0

    check-cast v24, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v25, 0x1c

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    iget v5, v10, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v10, v0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, v10, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_10

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_10
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_9
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v10, v4, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v10, v6, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v6, v10, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_11

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    :cond_11
    invoke-static {v5, v10, v5, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_12
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v10, v0, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->matchParentSize()Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v4, v4, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonCornerShape:F

    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v4

    invoke-static {v0, v4}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v4, v4, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelFullScreenBackgroundColor:J

    sget-object v6, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v0, v4, v5, v6}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v19

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarDefaultItemsPadding:F

    const/16 v23, 0x0

    const/16 v24, 0xe

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v20, v0

    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v4, v4, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelFullScreenBlur:F

    invoke-static {v0, v4}, Landroidx/compose/ui/draw/BlurKt;->blur-F8QBwvs$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v0, v10, v6}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    shr-int/lit8 v0, v16, 0x3

    and-int/lit8 v0, v0, 0x7e

    invoke-virtual {v1, v3, v10, v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->ControlPanelGrid(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V

    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->controlPanelItemExpanded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->expandAnimFadeDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v0

    new-instance v5, Landroidx/compose/animation/core/TweenSpec;

    move-object/from16 v7, v17

    invoke-direct {v5, v0, v6, v7}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    const/4 v0, 0x2

    invoke-static {v5, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v6

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->expandAnimFadeDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v5

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->expandAnimDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v8

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->expandAnimFadeDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v9

    sub-int/2addr v8, v9

    new-instance v9, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v9, v5, v8, v7}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    invoke-static {v9, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v7

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$ControlPanelCompose$2$1;

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$ControlPanelCompose$2$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;I)V

    const v5, 0x6e1b7abb

    invoke-static {v5, v0, v10}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    const/high16 v11, 0x30000

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_a
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_13

    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method

.method public final ControlPanelComposeSplit(Landroidx/compose/animation/AnimatedVisibilityScope;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    const-string v4, "<this>"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "viewModel"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x452ff356

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int v4, p4, v4

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v4, v6

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v4, v6

    and-int/lit16 v6, v4, 0x93

    const/16 v7, 0x92

    if-ne v6, v7, :cond_4

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_4
    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->visibilityAnimDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v6

    sget-object v7, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v8, Landroidx/compose/animation/core/TweenSpec;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9, v7}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v9, v6}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->getAnimationTransformOrigin-zey9I6w(ZLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v6

    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentWidth$default(Landroidx/compose/ui/Modifier;I)Landroidx/compose/ui/Modifier;

    move-result-object v12

    iget-object v10, v3, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/EventListener;

    invoke-interface {v10}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getControlBarGuideline()F

    move-result v10

    sget-object v13, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v14, v14, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarHeight:F

    add-float/2addr v14, v10

    const/16 v16, 0x0

    const/16 v17, 0xd

    move-object v10, v13

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v8, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v13

    invoke-static {v8, v6, v7, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleIn-L8ZKh-E$default(Landroidx/compose/animation/core/TweenSpec;JI)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v13

    invoke-static {v8, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v5

    invoke-static {v8, v6, v7}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleOut-L8ZKh-E$default(Landroidx/compose/animation/core/TweenSpec;J)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v5

    invoke-interface {v2, v12, v13, v5}, Landroidx/compose/animation/AnimatedVisibilityScope;->animateEnterExit(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    const v5, 0x6e3c21fe

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v5, v6, :cond_5

    new-instance v5, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v6, 0x15

    invoke-direct {v5, v6}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v19, v5

    check-cast v19, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v20, 0x1c

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v6, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    iget v7, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v0, v5}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v13, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_6

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v0, v6, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v0, v8, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v8, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v8, :cond_7

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    invoke-static {v7, v0, v7, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_8
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v0, v5, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v5}, Landroidx/compose/foundation/layout/BoxScopeInstance;->matchParentSize()Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v6, v6, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonCornerShape:F

    invoke-static {v6}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v6, v6, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelFullScreenBackgroundColor:J

    sget-object v8, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v13, v5, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarDefaultItemsPadding:F

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v6, v6, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelFullScreenBlur:F

    invoke-static {v5, v6}, Landroidx/compose/ui/draw/BlurKt;->blur-F8QBwvs$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5, v0, v9}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    shr-int/2addr v4, v11

    and-int/lit8 v4, v4, 0x7e

    invoke-virtual {v1, v3, v0, v4}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->ControlPanelGrid(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_9

    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;

    const/4 v5, 0x3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public final ControlPanelGrid(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 13

    move/from16 v12, p3

    const-string/jumbo v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x4d899587    # 2.8853475E8f

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v12, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v12

    goto :goto_1

    :cond_1
    move v0, v12

    :goto_1
    and-int/lit8 v1, v12, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v0, v0, 0x13

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->getControlPanelItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v12, v2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_6
    sget-object v0, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->isSplitScreen:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->getDualPane()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    iget v1, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelFullScreenVerticalGridWidth:F

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_4

    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :goto_4
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroidx/compose/animation/AnimationModifierKt;->animateContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget v2, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelGridPadding:F

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelGridArrangement:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move v2, v0

    new-instance v0, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v5

    invoke-static {v2}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v4

    const v2, 0x4c5de2

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_9

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v3, v2, :cond_a

    :cond_9
    new-instance v3, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v2, 0xc

    invoke-direct {v3, v2, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/high16 v11, 0x6000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, p2

    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->LazyVerticalGrid(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_5
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v12, v2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public final Draw(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 12

    const v0, -0xb6c715f

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

    move-object v10, p2

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->visibilityAnimDuration(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v0

    sget-object v2, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v3, Landroidx/compose/animation/core/TweenSpec;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    invoke-virtual {v0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result v4

    invoke-static {v3, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v6

    invoke-static {v3, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v7

    new-instance v0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$SupportingPane$3;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$SupportingPane$3;-><init>(ILjava/lang/Object;)V

    const v1, -0x1ee48d37

    invoke-static {v1, v0, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    const/high16 v11, 0x30000

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v10, p2

    invoke-static/range {v4 .. v11}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_2
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponent;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method

.method public final getViewModel()Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    return-object p0
.end method

.method public final isVisibilityHandled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->isVisibilityHandled:Z

    return p0
.end method

.method public final onConfigurationChanged(Z)V
    .locals 5

    iget-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    const-string v0, "getLayoutManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->isSplitScreen:Z

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_COMPOSE_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "IS_SELECTED"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->isSplitScreen:Z

    :cond_0
    return-void
.end method
