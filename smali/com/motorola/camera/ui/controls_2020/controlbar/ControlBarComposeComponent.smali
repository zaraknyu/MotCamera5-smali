.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;
.super Lcom/motorola/camera/ui/compose/component/ComposeComponent;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

.field public static final DETAILS:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;


# instance fields
.field public final controlBarGuideline$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public isFirstDraw:Z

.field public final isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final launchedEffectSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public switchingLayout:Z

.field public final viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

.field public wasSuperSlowMotionEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;->DETAILS:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->DETAILS:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

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

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->controlBarGuideline$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->wasSuperSlowMotionEnabled:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    const-string v1, "getLayoutManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object p1, p1, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->launchedEffectSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isFirstDraw:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    return-void
.end method

.method public static final access$getAdaptiveHorizonPadding-ccRj1GA(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;ILandroidx/compose/runtime/ComposerImpl;)F
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x794d34d7

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x5ad3678d

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez p1, :cond_1

    sget-object p1, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/compose/Dimensions;

    iget p1, p1, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarIconButtonPadding:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    sget-object v1, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v1, v1, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarIconButtonSize:F

    mul-float/2addr v1, p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    div-float/2addr v1, p0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return v1
.end method


# virtual methods
.method public final AnimatedControlBar(ILandroidx/compose/runtime/ComposerImpl;I)V
    .locals 10

    const v0, -0x6517b3c4

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x30

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

    move-object v8, p2

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->controlBarState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    const v0, 0x6e3c21fe

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v0, v2, :cond_6

    new-instance v0, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v2, 0x17

    invoke-direct {v0, v2}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;I)V

    const v2, 0x2754c0d2

    invoke-static {v2, v0, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    const v9, 0x186180

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "ControlBarStateAnimation"

    const/4 v6, 0x0

    move-object v8, p2

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/BiasAlignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponent;III)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public final ControlBar(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v6, p1

    move-object/from16 v13, p2

    const v0, 0x733b3c6

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    or-int v8, v6, v0

    and-int/lit8 v0, v8, 0x3

    if-ne v0, v7, :cond_2

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_8

    :cond_2
    :goto_1
    const v0, 0x7f0b000b

    invoke-static {v0, v13}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->integerResource(ILandroidx/compose/runtime/ComposerImpl;)I

    move-result v3

    const v0, 0x6e3c21fe

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v0, v9, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    move-object v2, v0

    check-cast v2, Landroidx/compose/animation/core/Animatable;

    const/4 v10, 0x0

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v11, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    invoke-virtual {v11}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v4, -0x615d173a

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v5, v12

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v5, :cond_4

    if-ne v12, v9, :cond_5

    :cond_4
    new-instance v12, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;

    const/4 v5, 0x5

    invoke-direct {v12, v5, v1, v2}, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v12, v13}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_6

    invoke-static {v13}, Landroidx/compose/runtime/AnchoredGroupPath;->createCompositionCoroutineScope(Landroidx/compose/runtime/ComposerImpl;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, v11, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->onSettingsChangedFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v4, v12

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v4, :cond_7

    if-ne v12, v9, :cond_8

    :cond_7
    new-instance v12, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$2$1;

    const/4 v4, 0x0

    invoke-direct {v12, v0, v1, v4}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v13, v5, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v4, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->launchedEffectSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    const v4, -0x48fade91

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_9

    if-ne v5, v9, :cond_a

    :cond_9
    move-object v4, v0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;Landroidx/compose/animation/core/Animatable;ILkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v5, v0

    :cond_a
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v13, v12, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->controlBarGuideline$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    iget v0, v0, Landroidx/compose/ui/unit/Dp;->value:F

    const/16 v18, 0x0

    const/16 v19, 0xd

    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v16, v0

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v4, 0x4c5de2

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_b

    if-ne v5, v9, :cond_c

    :cond_b
    new-instance v5, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v4, 0x9

    invoke-direct {v5, v4, v2}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v5}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v2, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    iget v4, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v13, v0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_d

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_d
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v13, v2, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v13, v5, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v5, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_e

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    :cond_e
    invoke-static {v4, v13, v4, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_f
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v13, v0, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shl-int/lit8 v0, v8, 0x3

    and-int/lit8 v0, v0, 0x70

    invoke-virtual {v1, v3, v13, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->AnimatedControlBar(ILandroidx/compose/runtime/ComposerImpl;I)V

    iget-object v0, v11, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->controlBarState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->DETAILS:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    const/4 v4, 0x1

    if-ne v0, v2, :cond_10

    move v0, v4

    goto :goto_3

    :cond_10
    move v0, v10

    :goto_3
    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->switchingLayout:Z

    if-eqz v2, :cond_11

    sget-object v2, Landroidx/compose/animation/EnterTransitionImpl;->None:Landroidx/compose/animation/EnterTransitionImpl;

    :goto_4
    move-object v9, v2

    goto :goto_5

    :cond_11
    mul-int/lit8 v2, v3, 0x2

    sget-object v5, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v8, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v8, v2, v10, v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    invoke-static {v8, v7}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v2

    goto :goto_4

    :goto_5
    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->switchingLayout:Z

    if-eqz v2, :cond_12

    sget-object v2, Landroidx/compose/animation/ExitTransitionImpl;->None:Landroidx/compose/animation/ExitTransitionImpl;

    :goto_6
    move-object v10, v2

    goto :goto_7

    :cond_12
    mul-int/2addr v3, v7

    sget-object v2, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v5, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v5, v3, v10, v2}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    invoke-static {v5, v7}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v2

    goto :goto_6

    :goto_7
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$5$1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$5$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;I)V

    const v3, -0x48076cd8

    invoke-static {v3, v2, v13}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    const/high16 v14, 0x30000

    const/4 v8, 0x0

    const/4 v11, 0x0

    move v7, v0

    invoke-static/range {v7 .. v14}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_8
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda2;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v6, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;II)V

    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method

.method public final ControlBarItems(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const v0, -0x1a9b1945

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    or-int v0, p3, v0

    goto :goto_1

    :cond_1
    move/from16 v0, p3

    :goto_1
    and-int/lit8 v5, p3, 0x30

    if-nez v5, :cond_3

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v0, v5

    :cond_3
    and-int/lit8 v5, v0, 0x13

    const/16 v6, 0x12

    const/4 v12, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v14, v1

    move v7, v12

    move-object v12, v2

    goto/16 :goto_15

    :cond_5
    :goto_3
    iget-object v5, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v6, v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->controlBarItems$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v8, v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->isRecording$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    sget-object v10, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    iget-object v10, v1, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-static {v10}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getControlBarMaxItems(Lcom/motorola/camera/EventListener;)I

    move-result v10

    invoke-static {v6, v10}, Lkotlin/collections/CollectionsKt;->take(Ljava/util/List;I)Ljava/util/List;

    move-result-object v6

    move v10, v3

    new-instance v3, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v6, v13}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;

    invoke-virtual {v1, v14}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->asItem(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;)Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->controlBarSettingValues$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v13}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueModel;

    new-instance v14, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    iget-object v15, v13, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v15}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v15

    const-string v10, "getKey(...)"

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    iget-object v13, v13, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueModel;->value:Ljava/lang/Object;

    invoke-direct {v14, v15, v10, v13}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x2

    goto :goto_5

    :cond_7
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    if-eq v2, v6, :cond_9

    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_7

    :cond_9
    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    :goto_7
    const/4 v13, 0x3

    const/4 v14, 0x0

    if-eq v10, v13, :cond_b

    if-eq v10, v4, :cond_a

    const v10, 0x1fc69658

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v10, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v10, v10, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarDefaultItemsPadding:F

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_8

    :cond_a
    const v10, 0x1fc68eb2

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v10, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v10, v10, Lcom/motorola/camera/ui/compose/Dimensions;->controlBar4ItemsPadding:F

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_8

    :cond_b
    const v10, 0x1fc68772

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v10, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v10, v10, Lcom/motorola/camera/ui/compose/Dimensions;->controlBar3ItemsPadding:F

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_8
    const v15, 0x1fc6a1a9

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v15, v12, :cond_d

    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_c

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    goto :goto_9

    :cond_c
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->End:Landroidx/compose/foundation/layout/Arrangement$End$1;

    goto :goto_9

    :cond_d
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isSplitScreen$1()Z

    move-result v8

    if-eqz v8, :cond_e

    sget-boolean v8, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v8, :cond_e

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    sget-object v8, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v8, v8, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarLargeFoldableItemSpacing:F

    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-D5KLDUw(FLandroidx/compose/ui/BiasAlignment$Horizontal;)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v8

    goto :goto_9

    :cond_e
    sget-object v8, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->DETAILS:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    if-ne v2, v8, :cond_f

    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->SpaceAround:Landroidx/compose/foundation/layout/Arrangement$End$1;

    goto :goto_9

    :cond_f
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    :goto_9
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v15, 0x1fc6e1ac

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-boolean v15, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->switchingLayout:Z

    if-eqz v15, :cond_10

    move v15, v14

    goto :goto_a

    :cond_10
    const v15, 0x7f0b000b

    invoke-static {v15, v9}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->integerResource(ILandroidx/compose/runtime/ComposerImpl;)I

    move-result v15

    :goto_a
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v13, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v4, v4, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarDefaultItemsPadding:F

    sub-float/2addr v10, v4

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isVertical()Z

    move-result v4

    move-object/from16 v17, v7

    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v4, :cond_18

    const v4, -0x26e63ff0

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v4, 0x1fc70821

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-ne v2, v6, :cond_11

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v4, v4, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarLargeFoldableItemSpacing:F

    invoke-static {v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v4

    :goto_b
    move-object v8, v4

    const/4 v4, 0x0

    goto :goto_c

    :cond_11
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    goto :goto_b

    :goto_c
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v6, v10, v9, v4}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v6

    iget v4, v9, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v9, v7}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move/from16 v18, v0

    iget-boolean v0, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v0, :cond_12

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    :cond_12
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_d
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v9, v6, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v9, v10, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v6, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_13

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    :cond_13
    invoke-static {v4, v9, v4, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_14
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v9, v7, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarSize:F

    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->minVerticalHeight-chRvn1I(Landroidx/compose/runtime/ComposerImpl;)F

    move-result v4

    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(FF)Landroidx/compose/ui/Modifier;

    move-result-object v19

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarVerticalPaddingTop:F

    const/16 v23, 0x0

    const/16 v24, 0xd

    const/16 v20, 0x0

    const/16 v22, 0x0

    move/from16 v21, v0

    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v25

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarVerticalPaddingStart:F

    const/16 v29, 0x0

    const/16 v30, 0xe

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v26, v0

    invoke-static/range {v25 .. v30}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v4, v4, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarDefaultItemsPadding:F

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v0, v6, v4, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const v0, -0x48fade91

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit8 v4, v18, 0xe

    const/4 v6, 0x4

    if-ne v4, v6, :cond_15

    const/4 v4, 0x1

    goto :goto_e

    :cond_15
    const/4 v4, 0x0

    :goto_e
    or-int/2addr v0, v4

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_17

    if-ne v4, v12, :cond_16

    goto :goto_f

    :cond_16
    move-object v14, v1

    goto :goto_10

    :cond_17
    :goto_f
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;

    const/4 v6, 0x0

    move-object v4, v5

    move v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;Ljava/util/ArrayList;Ljava/util/List;II)V

    move-object v14, v1

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_10
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v0, v10

    const/high16 v10, 0xc30000

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v8

    move-object v8, v4

    move-object/from16 v4, v17

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    const/4 v7, 0x1

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v12, p1

    const/4 v7, 0x1

    goto/16 :goto_15

    :cond_18
    move/from16 v18, v0

    move-object v14, v1

    move-object v4, v5

    move v5, v15

    const/4 v15, 0x0

    const v0, -0x26d73c4d

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v0, v1, v9, v15}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v0

    iget v1, v9, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v9, v7}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move-object/from16 v17, v8

    iget-boolean v8, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_19

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    :cond_19
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_11
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v9, v0, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v9, v2, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v2, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_1a

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    invoke-static {v1, v9, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_1b
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v9, v6, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarHeight:F

    invoke-static {v7, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v1, v1, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarDefaultItemsPadding:F

    const/4 v2, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v1, v6, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v14}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isSplitScreen$1()Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v1, :cond_1c

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentWidth$default(Landroidx/compose/ui/Modifier;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_1c
    move-object v8, v0

    const/4 v13, 0x0

    const/4 v0, 0x3

    invoke-static {v7, v13, v0}, Landroidx/compose/animation/AnimationModifierKt;->animateContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v10}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)V

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    const v0, -0x48fade91

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit8 v1, v18, 0xe

    const/4 v6, 0x4

    if-ne v1, v6, :cond_1d

    const/4 v1, 0x1

    goto :goto_12

    :cond_1d
    const/4 v1, 0x0

    :goto_12
    or-int/2addr v0, v1

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1f

    if-ne v1, v12, :cond_1e

    goto :goto_13

    :cond_1e
    move-object/from16 v12, p1

    goto :goto_14

    :cond_1f
    :goto_13
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object v1, v14

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;Ljava/util/ArrayList;Ljava/util/List;II)V

    move-object v12, v2

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_14
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move v0, v10

    const/high16 v10, 0xc30000

    move v2, v0

    move-object v0, v8

    move-object v8, v1

    const/4 v1, 0x0

    move v3, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v7

    const/4 v7, 0x0

    move-object v11, v4

    move-object v4, v15

    move v15, v3

    move-object/from16 v3, v17

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    const/4 v0, 0x3

    invoke-static {v11, v13, v0}, Landroidx/compose/animation/AnimationModifierKt;->animateContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v15}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)V

    const/4 v7, 0x1

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_15
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v1, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;

    move/from16 v11, p3

    invoke-direct {v1, v14, v12, v11, v7}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponent;Ljava/lang/Object;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method

.method public final DetailsString(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const v3, 0x516b8667

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    or-int/2addr v3, v1

    const/4 v5, 0x3

    and-int/2addr v3, v5

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_9

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isVertical()Z

    move-result v3

    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v12, 0x0

    if-eqz v3, :cond_3

    const v3, -0x1030d8e6

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->minVerticalHeight-chRvn1I(Landroidx/compose/runtime/ComposerImpl;)F

    move-result v3

    int-to-float v13, v4

    div-float v8, v3, v13

    sget-object v3, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v7, v7, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarVerticalPaddingStart:F

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v9, v9, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarIconClickSize:F

    add-float/2addr v7, v9

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v9, v9, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarIconButtonPadding:F

    add-float/2addr v7, v9

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v8, v8, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarIconButtonSize:F

    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v8, v8, Lcom/motorola/camera/ui/compose/CustomColors;->dropShadowColor:J

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v3, v3, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarTextPadding:F

    div-float/2addr v3, v13

    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    invoke-static {v7, v8, v9, v3}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_3
    const v3, -0x1027ba36

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v3, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v7, v7, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarDescriptionPaddingTop:F

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v3, v3, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarDescriptionHeight:F

    invoke-static {v7, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v3, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v9, 0x36

    invoke-static {v7, v8, v2, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v7

    iget v8, v2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v2, v3}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_4

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v7, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v9, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v9, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v9, :cond_5

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    invoke-static {v8, v2, v8, v7}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_6
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v3, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v7, v7, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarTextPadding:F

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    iget-object v7, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v7, v7, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->controlBarSettingValues$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const v8, 0x736a26e0

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const-string v4, ""

    goto/16 :goto_8

    :cond_7
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueModel;

    iget-object v8, v7, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v8

    const-string v9, "getKey(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v7, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueModel;->value:Ljava/lang/Object;

    iget-object v9, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    const-string v10, "context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    const-string/jumbo v11, "setting"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Lcom/motorola/camera/settings/Setting;->getString(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "getValue(...)"

    if-nez v11, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got null description res for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BaseControlBarItem"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget v15, v10, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "getString(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v16, v5

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v10, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v11

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120546

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_9
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120549

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_a
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120548

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_b
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120547

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_c
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    invoke-static {v11}, Lcom/motorola/camera/VideoHelper;->getSameRatioInAllowedSupported(Lcom/motorola/camera/settings/Setting;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v4, :cond_13

    iget-object v4, v11, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/motorola/camera/VideoFormat;

    invoke-static {v9, v4}, Lcom/motorola/camera/settings/VideoResolutionFrameRateFactoryHelper;->getVideoResolutionFrameRateDescription(Landroid/content/Context;Lcom/motorola/camera/VideoFormat;)Ljava/lang/String;

    goto/16 :goto_6

    :cond_d
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    invoke-static {v11}, Lcom/motorola/camera/VideoHelper;->getSameRatioInAllowedSupported(Lcom/motorola/camera/settings/Setting;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v4, :cond_13

    iget-object v4, v11, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/motorola/camera/VideoFormat;

    invoke-static {v9, v4}, Lcom/motorola/camera/settings/VideoResolutionFrameRateFactoryHelper;->getVideoResolutionFrameRateDescription(Landroid/content/Context;Lcom/motorola/camera/VideoFormat;)Ljava/lang/String;

    goto :goto_6

    :cond_e
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_f
    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-eq v7, v4, :cond_12

    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_PHOTO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-eq v7, v4, :cond_12

    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_PHOTO_ALT:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-ne v7, v4, :cond_10

    goto :goto_4

    :cond_10
    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-eq v7, v4, :cond_11

    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_VIDEO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-ne v7, v4, :cond_13

    :cond_11
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12055f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    :goto_4
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12055e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    :goto_5
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f120545

    filled-new-array {v14, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v8, v4}, Lcom/motorola/camera/settings/SettingsManager$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/motorola/camera/VideoFormat;

    invoke-static {v4}, Lcom/motorola/camera/settings/VideoResolutionFrameRateFactoryHelper;->getVideoResolutionFrameRateIcon(Lcom/motorola/camera/VideoFormat;)I

    goto :goto_7

    :cond_14
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v8, v4}, Lcom/motorola/camera/settings/SettingsManager$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/motorola/camera/VideoFormat;

    invoke-static {v4}, Lcom/motorola/camera/settings/VideoResolutionFrameRateFactoryHelper;->getVideoResolutionFrameRateIcon(Lcom/motorola/camera/VideoFormat;)I

    goto :goto_7

    :cond_15
    invoke-virtual {v10, v7}, Lcom/motorola/camera/settings/Setting;->getAndroidIcon(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "getAndroidIcon(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    iget-object v4, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget v4, v10, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    invoke-static {v4, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_8
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->White:J

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    iget-wide v9, v3, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarTextSize:J

    const/16 v21, 0x0

    const v22, 0x1fff0

    move-object v2, v4

    move-wide v4, v7

    const/4 v8, 0x0

    move-object v3, v6

    move-wide v6, v9

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x180

    move-object/from16 v19, p2

    invoke-static/range {v2 .. v22}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    move-object/from16 v2, v19

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_9
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_16

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda2;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v1, v4}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public final Draw(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 3

    const v0, -0x709e8e6c

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

    goto :goto_4

    :cond_2
    :goto_1
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isSplitScreen$1()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/ui/compose/DimensionsKt;->DimensionsFoldableSplit:Lcom/motorola/camera/ui/compose/Dimensions;

    goto :goto_2

    :cond_3
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->getDualPane()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/ui/compose/DimensionsKt;->DimensionsFoldableFull:Lcom/motorola/camera/ui/compose/Dimensions;

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/motorola/camera/ui/compose/Dimensions;

    invoke-direct {v0}, Lcom/motorola/camera/ui/compose/Dimensions;-><init>()V

    :goto_2
    const v1, 0x3ccbabcb

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    goto :goto_3

    :cond_5
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/LayoutDirection;

    :goto_3
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v2, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    filled-new-array {v0, v1}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$Draw$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$Draw$1;-><init>(ILjava/lang/Object;)V

    const v2, 0x2ab434d4

    invoke-static {v2, v1, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, p2, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public final ListItem(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;II)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p3

    move/from16 v8, p4

    const v0, -0x71ce20d5

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v8, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v3, p5, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    :cond_2
    move-object/from16 v4, p2

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v8, 0x30

    if-nez v4, :cond_2

    move-object/from16 v4, p2

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v0, v5

    :goto_3
    and-int/lit16 v5, v8, 0x180

    if-nez v5, :cond_6

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_4

    :cond_5
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v0, v5

    :cond_6
    and-int/lit16 v0, v0, 0x93

    const/16 v5, 0x92

    if-ne v0, v5, :cond_8

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v14, v1

    move-object v15, v2

    move-object v3, v4

    goto/16 :goto_9

    :cond_8
    :goto_5
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v3, :cond_9

    move-object v9, v0

    goto :goto_6

    :cond_9
    move-object v9, v4

    :goto_6
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v3, v7, :cond_a

    invoke-static {v6}, Landroidx/compose/runtime/AnchoredGroupPath;->createCompositionCoroutineScope(Landroidx/compose/runtime/ComposerImpl;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    sget-object v4, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v4, v4, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarIconClickSize:F

    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v4, v5}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v5, v1, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->uiRotation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v5

    invoke-static {v4, v5}, Lcom/motorola/camera/ui/compose/CustomModifiersKt;->animateRotation$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-interface {v9, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v5, -0x6815fd56

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v5, v10

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v5, v10

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_b

    if-ne v10, v7, :cond_c

    :cond_b
    new-instance v10, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v10, v1, v2, v3, v5}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v10}, Landroidx/compose/ui/layout/ScaleFactorKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v4, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const v0, 0x6e3c21fe

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_d
    move-object v4, v0

    check-cast v4, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v12, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v13, v12, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->onStartBlinkAnimationFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    const v0, -0x48fade91

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_f

    if-ne v5, v7, :cond_e

    goto :goto_7

    :cond_e
    move-object v14, v1

    move-object v15, v2

    goto :goto_8

    :cond_f
    :goto_7
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;

    const/4 v5, 0x0

    move-object/from16 v16, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    move-object v14, v2

    move-object v15, v3

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_8
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v6, v13, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->getClickEnabled()Z

    move-result v2

    const v0, -0x615d173a

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_10

    if-ne v1, v7, :cond_11

    :cond_10
    new-instance v1, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {v1, v0, v14, v15}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_11
    move-object v0, v1

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;

    const/4 v3, 0x0

    invoke-direct {v1, v15, v4, v14, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v3, -0x1e1b07d2

    invoke-static {v3, v1, v6}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/high16 v6, 0x30000

    const/16 v7, 0x18

    const/4 v3, 0x0

    move-object/from16 v5, p3

    move-object v1, v10

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/ButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    move-object v3, v9

    :goto_9
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_12

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;

    const/4 v6, 0x0

    move/from16 v5, p5

    move v4, v8

    move-object v1, v14

    move-object v2, v15

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public final ListStateItem(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 9

    const v0, 0x43d1d550

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x13

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v6, p2

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->getClickEnabled()Z

    move-result v3

    sget-object v0, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarIconClickSize:F

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v1}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->uiRotation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/camera/ui/compose/CustomModifiersKt;->animateRotation$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v0, -0x615d173a

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_4

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v1, v0, :cond_5

    :cond_4
    new-instance v1, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {v1, v0, p0, p1}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides$$Lambda$3;

    const/4 v4, 0x1

    invoke-direct {v0, v4, p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides$$Lambda$3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v4, 0x6681dcad

    invoke-static {v4, v0, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const/high16 v7, 0x30000

    const/16 v8, 0x18

    const/4 v4, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/ButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    :goto_3
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1, p0, p1}, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public final SplitScreenSecondLine(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v6, p1

    move-object/from16 v3, p2

    const v1, 0x390f982

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int v7, v6, v1

    and-int/lit8 v1, v7, 0x3

    const/4 v8, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_8

    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-static {v1}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getControlBarMaxItems(Lcom/motorola/camera/EventListener;)I

    move-result v4

    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v9, v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->controlBarItems$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->controlBarItems$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v9, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v5, v10}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;

    invoke-virtual {v0, v10}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->asItem(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;)Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isSplitScreen$1()Z

    move-result v5

    const/4 v10, 0x0

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v5, :cond_4

    move v5, v8

    goto :goto_3

    :cond_4
    move v5, v10

    :goto_3
    sget-object v11, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v12, v12, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarHeight:F

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v13, v13, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarTopPadding:F

    add-float v16, v12, v13

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v15, v12, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarDefaultItemsPadding:F

    int-to-float v12, v4

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v13, v13, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarIconClickSize:F

    mul-float/2addr v12, v13

    const v13, 0x6339115f

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v5, :cond_5

    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v13, v13, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarLargeFoldableItemSpacing:F

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v13, v14}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-D5KLDUw(FLandroidx/compose/ui/BiasAlignment$Horizontal;)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v13

    goto :goto_4

    :cond_5
    sget-object v13, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v13, v13, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v14

    iget v14, v14, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v13, v14

    int-to-float v14, v2

    mul-float/2addr v14, v15

    sub-float/2addr v13, v12

    sub-float/2addr v13, v14

    const/4 v14, 0x5

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-static {v13}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v13

    :goto_4
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v14, 0x6339522a

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v5, v5, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    iget v15, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v5, v1

    sub-int/2addr v4, v8

    int-to-float v1, v4

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v4, v4, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarLargeFoldableItemSpacing:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v12

    sub-float/2addr v5, v1

    int-to-float v1, v2

    div-float v15, v5, v1

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v17, v15

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_5

    :cond_6
    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v17, v15

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :goto_5
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v2, v2, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarHeight:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v4, 0x30

    invoke-static {v13, v2, v3, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    iget v4, v3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v3, v1}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_7

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_6
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v3, v2, v11}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v3, v5, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v5, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_8

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    invoke-static {v4, v3, v4, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_9
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v1, 0x6d1d8b71

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    shl-int/lit8 v2, v7, 0x6

    and-int/lit16 v4, v2, 0x380

    const/4 v5, 0x2

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->ListItem(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;II)V

    goto :goto_7

    :cond_a
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_8
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v6, v8}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;II)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public final asItem(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;)Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;
    .locals 4

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v1

    const-string v2, "getKey(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Landroid/content/Context;Ljava/lang/Object;I)V

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isPrimaryTint:Z

    iput-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isPrimaryTint:Z

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->unspecifiedColor:Z

    iput-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->unspecifiedColor:Z

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAlwaysOn:Z

    iput-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isAlwaysOn:Z

    iget p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->values:I

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->areMultiValuesEnabled:Z

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0600af

    goto :goto_1

    :cond_1
    const p0, 0x7f0603f8

    :goto_1
    iput p0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->backgroundTint:I

    return-object v0
.end method

.method public final getViewModel()Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    return-object p0
.end method

.method public final isSplitScreen$1()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isVertical()Z
    .locals 1

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->getDualPane()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isSplitScreen$1()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final items(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;Ljava/util/ArrayList;Ljava/util/List;I)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlBarState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    const/4 v1, 0x1

    const v2, -0x25b7f321

    if-ne p2, v0, :cond_0

    new-instance p2, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 p4, 0x16

    invoke-direct {p2, p4}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-instance v0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;

    const/16 v3, 0xa

    invoke-direct {v0, v3, p2, p3}, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;

    const/4 v3, 0x5

    invoke-direct {p2, v3, p3}, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;-><init>(ILjava/util/ArrayList;)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$4;

    invoke-direct {v3, p3, p0, p5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$4;-><init>(Ljava/util/ArrayList;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {p0, v3, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->intervals:Lcom/google/common/base/Splitter;

    new-instance p3, Landroidx/compose/foundation/lazy/LazyListInterval;

    invoke-direct {p3, v0, p2, p0}, Landroidx/compose/foundation/lazy/LazyListInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-virtual {p1, p4, p3}, Lcom/google/common/base/Splitter;->addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    return-void

    :cond_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    new-instance p3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$7;

    const/4 p5, 0x0

    invoke-direct {p3, p4, p5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$7;-><init>(Ljava/util/List;I)V

    new-instance p5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$8;

    const/4 v0, 0x0

    invoke-direct {p5, p4, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$8;-><init>(Ljava/util/List;Ljava/lang/Object;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {p0, p5, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->intervals:Lcom/google/common/base/Splitter;

    new-instance p4, Landroidx/compose/foundation/lazy/LazyListInterval;

    const/4 p5, 0x0

    invoke-direct {p4, p5, p3, p0}, Landroidx/compose/foundation/lazy/LazyListInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-virtual {p1, p2, p4}, Lcom/google/common/base/Splitter;->addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    return-void
.end method

.method public final minVerticalHeight-chRvn1I(Landroidx/compose/runtime/ComposerImpl;)F
    .locals 4

    const v0, 0x7232224b

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getControlBarMaxItems(Lcom/motorola/camera/EventListener;)I

    move-result p0

    sget-object v0, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v1, v1, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarVerticalPaddingTop:F

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v2, v2, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarIconClickSize:F

    int-to-float v3, p0

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v1, v1, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarDefaultItemsPadding:F

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarLargeFoldableItemSpacing:F

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return v0
.end method

.method public final onConfigurationChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->controlBarGuideline$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iput-boolean p1, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->shouldUpdateItemOnIdle:Z

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    const-string v3, "getLayoutManager(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->launchedEffectSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isFirstDraw:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateControlBarState(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;)V

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getControlBarGuideline()F

    move-result p0

    new-instance p1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {p1, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getControlBarGuideline()F

    move-result p0

    new-instance p1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {p1, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
