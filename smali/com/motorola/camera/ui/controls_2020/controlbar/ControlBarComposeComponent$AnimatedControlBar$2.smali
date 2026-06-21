.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $animDuration:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2;->$animDuration:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    move-object v4, p3

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-string p4, "$this$AnimatedContent"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "controlBarState"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/compose/animation/AnimatedContentScopeImpl;->$$delegate_0:Landroidx/compose/animation/AnimatedVisibilityScope;

    invoke-interface {p1}, Landroidx/compose/animation/AnimatedVisibilityScope;->getTransition()Landroidx/compose/animation/core/Transition;

    move-result-object v0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2$scale$1;

    iget p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2;->$animDuration:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    invoke-direct {p1, p0, p4}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2$scale$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;I)V

    sget-object p4, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/animation/EnterExitState;

    const v1, 0x7089cd62

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-eqz p4, :cond_0

    if-eq p4, v8, :cond_2

    if-ne p4, v3, :cond_1

    :cond_0
    move p4, v5

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    move p4, v2

    :goto_0
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    iget-object v6, v0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/EnterExitState;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v8, :cond_5

    if-ne v1, v3, :cond_4

    :cond_3
    move v2, v5

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    :goto_1
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v4, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2$scale$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/high16 v5, 0x30000

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object p1

    const p4, 0x4c5de2

    invoke-virtual {v4, p4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v4, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p4

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    if-nez p4, :cond_6

    sget-object p4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v0, p4, :cond_7

    :cond_6
    new-instance v0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/State;I)V

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    sget-object p4, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {p4, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object p4

    iget v0, v4, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v4, p1}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v5, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_8

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v4, p4, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v4, v2, p4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v2, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_9

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    invoke-static {v0, v4, v0, p4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_a
    sget-object p4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v4, p1, p4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 p1, p3, 0x3

    and-int/lit8 p1, p1, 0xe

    invoke-virtual {p0, p2, v4, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->ControlBarItems(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;Landroidx/compose/runtime/ComposerImpl;I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    const p3, -0x3c99bee5

    invoke-virtual {v4, p3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isSplitScreen$1()Z

    move-result p3

    if-eqz p3, :cond_b

    sget-object p3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    if-ne p2, p3, :cond_b

    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->controlBarItems$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sget-object p3, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    iget-object p3, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-static {p3}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getControlBarMaxItems(Lcom/motorola/camera/EventListener;)I

    move-result p3

    if-le p2, p3, :cond_b

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->isControlPanelOpen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    const/4 p1, 0x0

    invoke-static {p1, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v2

    invoke-static {p1, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v3

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$5$1;

    invoke-direct {p1, p0, v8}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$5$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;I)V

    const p0, -0x5aa4d47

    invoke-static {p0, p1, v4}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const v7, 0x30d80

    const/4 v1, 0x0

    move-object v6, v4

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    move-object v4, v6

    :cond_b
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
