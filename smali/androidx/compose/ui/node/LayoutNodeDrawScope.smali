.class public final Landroidx/compose/ui/node/LayoutNodeDrawScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/drawscope/DrawScope;


# instance fields
.field public final canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field public drawNode:Landroidx/compose/ui/node/DrawModifierNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    return-void
.end method


# virtual methods
.method public final drawArc-yD3GUKo(JFFJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual/range {p0 .. p9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawArc-yD3GUKo(JFFJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    return-void
.end method

.method public final drawCircle-VaOC9Bg(JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual/range {p0 .. p7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawCircle-VaOC9Bg(JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    return-void
.end method

.method public final drawContent()V
    .locals 11

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawNode:Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz p0, :cond_f

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    iget-object v2, v1, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    const/4 v9, 0x0

    const/4 v10, 0x4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget v4, v2, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr v4, v10

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    iget v4, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_4
    :goto_1
    move-object v2, v9

    :goto_2
    if-eqz v2, :cond_d

    move-object p0, v9

    :goto_3
    if-eqz v2, :cond_c

    instance-of v1, v2, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v1, :cond_5

    move-object v7, v2

    check-cast v7, Landroidx/compose/ui/node/DrawModifierNode;

    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {v7, v10}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v6

    iget-wide v1, v6, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v4

    iget-object v1, v6, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSharedDrawScope()Landroidx/compose/ui/node/LayoutNodeDrawScope;

    move-result-object v2

    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawDirect-eZhPAX0$ui_release(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/DrawModifierNode;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_6

    :cond_5
    iget v1, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v1, v10

    if-eqz v1, :cond_b

    instance-of v1, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_b

    move-object v1, v2

    check-cast v1, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v1, v1, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v4, 0x0

    :goto_4
    const/4 v5, 0x1

    if-eqz v1, :cond_a

    iget v6, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v6, v10

    if-eqz v6, :cond_9

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_6

    move-object v2, v1

    goto :goto_5

    :cond_6
    if-nez p0, :cond_7

    new-instance p0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v5, 0x10

    new-array v5, v5, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {p0, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v2, v9

    :cond_8
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_4

    :cond_a
    if-ne v4, v5, :cond_b

    goto :goto_3

    :cond_b
    :goto_6
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_3

    :cond_c
    return-void

    :cond_d
    invoke-static {p0, v10}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    if-ne v2, v1, :cond_e

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_e
    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p0, v3, v0}, Landroidx/compose/ui/node/NodeCoordinator;->performDraw(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void

    :cond_f
    const-string p0, "Attempting to drawContent for a `null` node. This usually means that a call to ContentDrawScope#drawContent() has been captured inside a lambda, and is being invoked outside of the draw pass. Capturing the scope this way is unsupported - if you are trying to record drawContent with graphicsLayer.record(), make sure you are using the GraphicsLayer#record function within DrawScope, instead of the member function on GraphicsLayer."

    invoke-static {p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final drawDirect-eZhPAX0$ui_release(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/DrawModifierNode;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawNode:Landroidx/compose/ui/node/DrawModifierNode;

    iput-object p5, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawNode:Landroidx/compose/ui/node/DrawModifierNode;

    iget-object v1, p4, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object v4, v3, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v4, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v5, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iget-object v4, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v3}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    iget-object v2, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v6

    iget-object v8, v2, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v2, p4}, Landroidx/core/view/MenuHostHelper;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v2, v1}, Landroidx/core/view/MenuHostHelper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v2, p1}, Landroidx/core/view/MenuHostHelper;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v2, p2, p3}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    iput-object p6, v2, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    invoke-interface {p5, p0}, Landroidx/compose/ui/node/DrawModifierNode;->draw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v2, v5}, Landroidx/core/view/MenuHostHelper;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v2, v4}, Landroidx/core/view/MenuHostHelper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v2, v3}, Landroidx/core/view/MenuHostHelper;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v2, v6, v7}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    iput-object v8, v2, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawNode:Landroidx/compose/ui/node/DrawModifierNode;

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v2, v5}, Landroidx/core/view/MenuHostHelper;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v2, v4}, Landroidx/core/view/MenuHostHelper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v2, v3}, Landroidx/core/view/MenuHostHelper;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v2, v6, v7}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    iput-object v8, v2, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    throw p0
.end method

.method public final drawImage-AZ2fEMs(Landroidx/compose/ui/graphics/AndroidImageBitmap;JJJFLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual/range {p0 .. p10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawImage-AZ2fEMs(Landroidx/compose/ui/graphics/AndroidImageBitmap;JJJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public final drawImage-gbVJVH8(Landroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawImage-gbVJVH8(Landroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/ui/graphics/ColorFilter;)V

    return-void
.end method

.method public final drawLine-NGM6Ib0(FJJJ)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual/range {p0 .. p7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawLine-NGM6Ib0(FJJJ)V

    return-void
.end method

.method public final drawPath-GBMwjPU(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual/range {p0 .. p5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawPath-GBMwjPU(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    return-void
.end method

.method public final drawPath-LG529CI(Landroidx/compose/ui/graphics/Path;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object p0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x3

    move-wide v1, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-2qPWKa0$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FI)Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->drawPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/AndroidPaint;)V

    return-void
.end method

.method public final drawRect-n-J9OG0(JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual/range {p0 .. p8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawRect-n-J9OG0(JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    return-void
.end method

.method public final getCenter-F1C5BW0()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDensity()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDensity()F

    move-result p0

    return p0
.end method

.method public final getDrawContext()Landroidx/core/view/MenuHostHelper;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    return-object p0
.end method

.method public final getFontScale()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getFontScale()F

    move-result p0

    return p0
.end method

.method public final getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object p0
.end method

.method public final getSize-NH-jbRc()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final roundToPx-0680j_4(F)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    return p0
.end method

.method public final toDp-GaN1DYA(J)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toDp-GaN1DYA(J)F

    move-result p0

    return p0
.end method

.method public final toDp-u2uoSUM(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDensity()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public final toDp-u2uoSUM(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p0

    return p0
.end method

.method public final toPx--R2X_6o(J)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result p0

    return p0
.end method

.method public final toPx-0680j_4(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDensity()F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method

.method public final toSize-XkaWNTQ(J)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toSize-XkaWNTQ(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final toSp-0xMU5do(F)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toSp-0xMU5do(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final toSp-kPz2Gy4(F)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toSp-kPz2Gy4(F)J

    move-result-wide p0

    return-wide p0
.end method
