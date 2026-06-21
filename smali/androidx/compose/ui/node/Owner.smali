.class public interface abstract Landroidx/compose/ui/node/Owner;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createLayer$default(Landroidx/compose/ui/node/Owner;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;ZI)Landroidx/compose/ui/node/OwnedLayer;
    .locals 8

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p3, v1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move p4, v0

    :cond_1
    move-object v5, p0

    check-cast v5, Landroidx/compose/ui/platform/AndroidComposeView;

    if-eqz p3, :cond_2

    new-instance p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    move-object p5, p2

    const/4 p2, 0x0

    move-object p4, p1

    move-object p1, p3

    move-object p3, v5

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    return-object p0

    :cond_2
    move-object v6, p1

    move-object p5, p2

    move-object p3, v5

    if-nez p4, :cond_8

    iget-object p0, p3, Landroidx/compose/ui/platform/AndroidComposeView;->layerCache:Lcom/tinder/StateMachine;

    :cond_3
    iget-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/ReferenceQueue;

    iget-object p2, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    :cond_4
    if-nez p1, :cond_3

    :cond_5
    iget p0, p2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz p0, :cond_6

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/Reference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    move-object v1, p0

    :cond_6
    check-cast v1, Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v1, :cond_7

    invoke-interface {v1, v6, p5}, Landroidx/compose/ui/node/OwnedLayer;->reuseLayer(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    return-object v1

    :cond_7
    new-instance v2, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    invoke-virtual {p3}, Landroidx/compose/ui/platform/AndroidComposeView;->getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/graphics/GraphicsContext;->createGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v3

    invoke-virtual {p3}, Landroidx/compose/ui/platform/AndroidComposeView;->getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object v4

    move-object v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    return-object v2

    :cond_8
    invoke-virtual {p3}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result p0

    if-eqz p0, :cond_9

    iget-boolean p0, p3, Landroidx/compose/ui/platform/AndroidComposeView;->isRenderNodeCompatible:Z

    if-eqz p0, :cond_9

    :try_start_0
    new-instance p0, Landroidx/compose/ui/platform/RenderNodeLayer;

    invoke-direct {p0, p3, v6, p5}, Landroidx/compose/ui/platform/RenderNodeLayer;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    iput-boolean v0, p3, Landroidx/compose/ui/platform/AndroidComposeView;->isRenderNodeCompatible:Z

    :cond_9
    iget-object p0, p3, Landroidx/compose/ui/platform/AndroidComposeView;->viewLayersContainer:Landroidx/compose/ui/platform/DrawChildContainer;

    if-nez p0, :cond_c

    sget-boolean p0, Landroidx/compose/ui/platform/ViewLayer;->hasRetrievedMethod:Z

    if-nez p0, :cond_a

    new-instance p0, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroidx/compose/ui/platform/InvertMatrixKt;->updateDisplayList(Landroid/view/View;)V

    :cond_a
    sget-boolean p0, Landroidx/compose/ui/platform/ViewLayer;->shouldUseDispatchDraw:Z

    if-eqz p0, :cond_b

    new-instance p0, Landroidx/compose/ui/platform/DrawChildContainer;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/DrawChildContainer;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_b
    new-instance p0, Landroidx/compose/ui/platform/ViewLayerContainer;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/DrawChildContainer;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object p0, p3, Landroidx/compose/ui/platform/AndroidComposeView;->viewLayersContainer:Landroidx/compose/ui/platform/DrawChildContainer;

    const/4 p1, -0x1

    invoke-virtual {p3, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->addView(Landroid/view/View;I)V

    :cond_c
    new-instance p0, Landroidx/compose/ui/platform/ViewLayer;

    iget-object p1, p3, Landroidx/compose/ui/platform/AndroidComposeView;->viewLayersContainer:Landroidx/compose/ui/platform/DrawChildContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p3, p1, v6, p5}, Landroidx/compose/ui/platform/ViewLayer;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/DrawChildContainer;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method
