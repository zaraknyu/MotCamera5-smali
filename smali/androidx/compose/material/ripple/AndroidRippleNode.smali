.class public final Landroidx/compose/material/ripple/AndroidRippleNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material/ripple/RippleHostKey;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;


# instance fields
.field public final bounded:Z

.field public final color:Landroidx/compose/ui/graphics/ColorProducer;

.field public hasValidSize:Z

.field public final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final pendingInteractions:Landroidx/collection/MutableObjectList;

.field public final radius:F

.field public final rippleAlpha:Lkotlin/jvm/internal/Lambda;

.field public rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

.field public rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

.field public rippleSize:J

.field public stateLayer:Landroidx/compose/material/ripple/StateLayer;

.field public targetRadius:F


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iput-boolean p2, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->bounded:Z

    iput p3, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->radius:F

    iput-object p4, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->color:Landroidx/compose/ui/graphics/ColorProducer;

    check-cast p5, Lkotlin/jvm/internal/Lambda;

    iput-object p5, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleAlpha:Lkotlin/jvm/internal/Lambda;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleSize:J

    new-instance p1, Landroidx/collection/MutableObjectList;

    invoke-direct {p1}, Landroidx/collection/MutableObjectList;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->pendingInteractions:Landroidx/collection/MutableObjectList;

    return-void
.end method


# virtual methods
.method public final draw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 7

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->stateLayer:Landroidx/compose/material/ripple/StateLayer;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->targetRadius:F

    iget-object v2, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->color:Landroidx/compose/ui/graphics/ColorProducer;

    invoke-interface {v2}, Landroidx/compose/ui/graphics/ColorProducer;->invoke-0d7_KjU()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Landroidx/compose/material/ripple/StateLayer;->drawStateLayer-mxwnekA(Landroidx/compose/ui/node/LayoutNodeDrawScope;FJ)V

    :cond_0
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object p1, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleSize:J

    iget v3, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->targetRadius:F

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    iget-object v4, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->color:Landroidx/compose/ui/graphics/ColorProducer;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/ColorProducer;->invoke-0d7_KjU()J

    move-result-wide v4

    iget-object p0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleAlpha:Lkotlin/jvm/internal/Lambda;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/ripple/RippleAlpha;

    iget v6, p0, Landroidx/compose/material/ripple/RippleAlpha;->pressedAlpha:F

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material/ripple/RippleHostView;->setRippleProperties-biQXAtU(JIJF)V

    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/compose/material/ripple/RippleHostView;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final getShouldAutoInvalidate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final handlePressInteraction(Landroidx/compose/foundation/interaction/PressInteraction;)V
    .locals 11

    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz v0, :cond_1

    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    iget-wide v4, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleSize:J

    iget p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->targetRadius:F

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/compose/material/ripple/Ripple_androidKt;->access$findNearestViewGroup(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/material/ripple/Ripple_androidKt;->access$createAndAttachRippleContainerIfNeeded(Landroid/view/ViewGroup;)Landroidx/compose/material/ripple/RippleContainer;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/compose/material/ripple/RippleContainer;->getRippleHostView(Landroidx/compose/material/ripple/RippleHostKey;)Landroidx/compose/material/ripple/RippleHostView;

    move-result-object v1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    iget-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->color:Landroidx/compose/ui/graphics/ColorProducer;

    invoke-interface {p1}, Landroidx/compose/ui/graphics/ColorProducer;->invoke-0d7_KjU()J

    move-result-wide v7

    iget-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleAlpha:Lkotlin/jvm/internal/Lambda;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/ripple/RippleAlpha;

    iget v9, p1, Landroidx/compose/material/ripple/RippleAlpha;->pressedAlpha:F

    new-instance v10, Landroidx/compose/runtime/Pending$keyMap$2;

    const/16 p1, 0xd

    invoke-direct {v10, p1, p0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    iget-boolean v3, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->bounded:Z

    invoke-virtual/range {v1 .. v10}, Landroidx/compose/material/ripple/RippleHostView;->addRipple-KOepWvA(Landroidx/compose/foundation/interaction/PressInteraction$Press;ZJIJFLkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void

    :cond_1
    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    iget-object p0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleHostView;->removeRipple()V

    return-void

    :cond_2
    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    iget-object p0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleHostView;->removeRipple()V

    :cond_3
    return-void
.end method

.method public final onAttach()V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Landroidx/compose/material/ripple/AndroidRippleNode;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onDetach()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/material/ripple/AndroidRippleNode;->onResetRippleHostView()V

    iget-object v1, v0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Lcom/motorola/camera/CameraKpi;

    iget-object v2, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material/ripple/RippleHostView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/material/ripple/RippleHostView;->disposeRipple()V

    iget-object v3, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material/ripple/RippleHostView;

    if-eqz v4, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material/ripple/RippleHostKey;

    :cond_0
    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Landroidx/compose/material/ripple/RippleContainer;->unusedRippleHosts:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onRemeasured-ozmzZPI(J)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->hasValidSize:Z

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleSize:J

    iget p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->radius:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->bounded:Z

    iget-wide v1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleSize:J

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/material/ripple/RippleAnimationKt;->getRippleEndRadius-cSwnlzA(Landroidx/compose/ui/unit/Density;ZJ)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p1

    :goto_0
    iput p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->targetRadius:F

    iget-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->pendingInteractions:Landroidx/collection/MutableObjectList;

    iget-object p2, p1, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    iget v0, p1, Landroidx/collection/MutableObjectList;->_size:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    check-cast v2, Landroidx/compose/foundation/interaction/PressInteraction;

    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/AndroidRippleNode;->handlePressInteraction(Landroidx/compose/foundation/interaction/PressInteraction;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/collection/MutableObjectList;->clear()V

    return-void
.end method

.method public final onResetRippleHostView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method
