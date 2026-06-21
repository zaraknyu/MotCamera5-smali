.class public final Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;
.super Lcom/motorola/camera/ui/compose/component/ComposeComponent;
.source "SourceFile"


# instance fields
.field public final iconDelay:J

.field public final viewModel:Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponentViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponentViewModel;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponentViewModel;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;->viewModel:Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponentViewModel;

    const-wide/16 p1, 0x9c4

    iput-wide p1, p0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;->iconDelay:J

    return-void
.end method


# virtual methods
.method public final Draw(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 3

    const v0, -0x60ad610d

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
    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;->viewModel:Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponentViewModel;

    iget-object v0, v0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponentViewModel;->showPantoneIcon$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    const v1, 0x1526c35a

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

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

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$Draw$1;-><init>(ILjava/lang/Object;)V

    const v2, 0x304a2ece

    invoke-static {v2, v1, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, p2, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :cond_4
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public final PantoneIcon(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v5, p2

    const v2, -0x31dc8655    # -6.8566496E8f

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

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

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_2
    :goto_1
    const v2, 0x7f0b006c

    invoke-static {v2, v5}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->integerResource(ILandroidx/compose/runtime/ComposerImpl;)I

    move-result v2

    const v8, 0x6e3c21fe

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v3, v9, :cond_3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    move-object v10, v3

    check-cast v10, Landroidx/compose/runtime/MutableState;

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v12, 0x0

    const/4 v13, 0x6

    if-eqz v4, :cond_5

    invoke-static {v2, v11, v12, v13}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    goto :goto_3

    :cond_5
    invoke-static {v2, v11, v12, v13}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    :goto_3
    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v4, 0x0

    move/from16 v20, v3

    move-object v3, v2

    move/from16 v2, v20

    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/runtime/State;

    move-result-object v2

    const v3, -0x615d173a

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_6

    if-ne v4, v9, :cond_7

    :cond_6
    new-instance v4, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$PantoneIcon$1$1;

    invoke-direct {v4, v0, v10, v12}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$PantoneIcon$1$1;-><init>(Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v5, v3, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    if-ne v3, v9, :cond_8

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v6, v6, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v6, v4

    sget-object v4, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v7, v7, Lcom/motorola/camera/ui/compose/Dimensions;->pantoneTop:F

    add-float/2addr v6, v7

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v15, v7, Lcom/motorola/camera/ui/compose/Dimensions;->pantoneStart:F

    const v7, -0x2cd3c653

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v6, v3, Lcom/motorola/camera/ui/compose/Dimensions;->foldPantonePaddingTop:F

    :cond_9
    move/from16 v16, v6

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v18, 0x0

    const/16 v19, 0xc

    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v6, v6, Lcom/motorola/camera/ui/compose/Dimensions;->pantoneWidth:F

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v4, v4, Lcom/motorola/camera/ui/compose/Dimensions;->pantoneHeight:F

    invoke-static {v3, v6, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v4, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    iget v6, v5, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v5, v3}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v10, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_a

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v4, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v7, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v7, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_b

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    :cond_b
    invoke-static {v6, v5, v6, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_c
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v3, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v3, 0x7f08032d

    invoke-static {v3, v5, v13}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    const v6, 0x4c5de2

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_d

    if-ne v7, v9, :cond_e

    :cond_d
    new-instance v7, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v7, v2, v6}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/State;I)V

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_e
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v4, v7}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v9, 0x6030

    const/16 v10, 0x68

    move-object v2, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroidx/compose/ui/layout/ContentScale$Companion;->FillBounds:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    const/4 v7, 0x0

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FLandroidx/compose/runtime/ComposerImpl;II)V

    move-object v5, v8

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_f

    new-instance v3, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v4}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public final getViewModel()Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;->viewModel:Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponentViewModel;

    return-object p0
.end method

.method public final rotate(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->rotate(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;->viewModel:Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponentViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
