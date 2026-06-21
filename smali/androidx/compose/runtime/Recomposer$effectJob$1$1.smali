.class public final Landroidx/compose/runtime/Recomposer$effectJob$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;)V
    .locals 0

    const/16 p2, 0x11

    iput p2, p0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->$r8$classId:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v2, :pswitch_data_0

    check-cast v1, Landroidx/compose/ui/node/AlignmentLinesOwner;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;

    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->isPlaced()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/LookaheadAlignmentLines;

    move-result-object v2

    iget-boolean v2, v2, Landroidx/compose/ui/node/LookaheadAlignmentLines;->dirty:Z

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->layoutChildren()V

    :cond_1
    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/LookaheadAlignmentLines;

    move-result-object v2

    iget-object v2, v2, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLineMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-result-object v5

    invoke-static {v0, v4, v3, v5}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->access$addAlignmentLine(Landroidx/compose/ui/node/LookaheadAlignmentLines;Landroidx/compose/ui/layout/HorizontalAlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    iget-object v2, v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/layout/Placeable;

    invoke-interface {v2}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getAlignmentLinesMap(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getPositionFor(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/HorizontalAlignmentLine;)I

    move-result v4

    invoke-static {v0, v3, v4, v1}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->access$addAlignmentLine(Landroidx/compose/ui/node/LookaheadAlignmentLines;Landroidx/compose/ui/layout/HorizontalAlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V

    goto :goto_2

    :cond_3
    iget-object v1, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v1, Ljava/lang/Throwable;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    iget-object v2, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    :cond_5
    iput-object v7, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/CancellableContinuationImpl;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v1, Landroid/view/MotionEvent;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->getOnTouchEvent()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v1, Landroidx/compose/ui/graphics/vector/VNode;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/GroupComponent;->markTintForVNode(Landroidx/compose/ui/graphics/vector/VNode;)V

    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/GroupComponent;->invalidateListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_6

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    iget-boolean v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->usePathForClip:Z

    if-eqz v3, :cond_7

    iget-boolean v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->clip:Z

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-virtual {v3}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    iget-object v6, v3, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    iget-object v6, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v6}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v6

    invoke-interface {v6, v2}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;)V

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawWithChildTracking(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw v0

    :cond_7
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawWithChildTracking(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    iget v2, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleX(F)V

    iget v2, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleY(F)V

    iget v2, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    iget v2, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShadowElevation(F)V

    iget v2, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setRotationZ(F)V

    iget v2, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    iget v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    cmpg-float v3, v3, v2

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    iget v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    iput v2, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    :goto_5
    iget-wide v2, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    iget-object v2, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    iget-boolean v2, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setClip(Z)V

    invoke-virtual {v1, v7}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setRenderEffect(Landroidx/compose/ui/graphics/BlurEffect;)V

    iget-wide v2, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAmbientShadowColor-8_81llA(J)V

    iget-wide v2, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setSpotShadowColor-8_81llA(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    check-cast v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;

    iget v2, v0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->elevation:F

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getDensity()F

    move-result v3

    mul-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShadowElevation(F)V

    iget-object v2, v0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    iget-boolean v2, v0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->clip:Z

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setClip(Z)V

    iget-wide v2, v0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->ambientColor:J

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAmbientShadowColor-8_81llA(J)V

    iget-wide v2, v0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->spotColor:J

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setSpotShadowColor-8_81llA(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v1, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    iget-object v2, v1, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v2, :cond_9

    sget-object v0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->SkipSubtreeAndContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    goto :goto_7

    :cond_9
    iget-object v2, v1, Landroidx/compose/ui/draganddrop/DragAndDropNode;->thisDragAndDropTarget:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    if-eqz v2, :cond_b

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzs;

    new-instance v3, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 v4, 0x16

    invoke-direct {v3, v4, v0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->ContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    if-eq v0, v4, :cond_a

    goto :goto_6

    :cond_a
    invoke-static {v2, v3}, Landroidx/compose/ui/node/HitTestResultKt;->traverseDescendants(Landroidx/compose/ui/node/TraversableNode;Lkotlin/jvm/functions/Function1;)V

    :cond_b
    :goto_6
    iput-object v7, v1, Landroidx/compose/ui/draganddrop/DragAndDropNode;->thisDragAndDropTarget:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    iput-object v7, v1, Landroidx/compose/ui/draganddrop/DragAndDropNode;->lastChildDragAndDropModifierNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    sget-object v0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->ContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    :goto_7
    return-object v0

    :pswitch_7
    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceManager;

    iget-object v2, v0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    if-nez v5, :cond_c

    new-instance v5, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {v5}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    iput-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    iget-object v6, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v6, v3, v5}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v0, v1, v4, v3, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_8
    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    iget-object v0, v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->parentSaveableStateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    if-eqz v0, :cond_d

    invoke-interface {v0, v1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->canBeSaved(Ljava/lang/Object;)Z

    move-result v8

    :cond_d
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_9
    instance-of v2, v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v2, :cond_e

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime_release(I)V

    :cond_e
    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/CompositionImpl;->recordReadOf(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;->pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result v2

    int-to-float v2, v2

    div-float v6, v1, v2

    :cond_f
    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/pager/PagerState;->coerceInPageRange(I)I

    move-result v1

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    if-eqz v0, :cond_10

    invoke-interface {v0, v1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->canBeSaved(Ljava/lang/Object;)Z

    move-result v8

    :cond_10
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_d
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    new-instance v1, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    return-object v1

    :pswitch_e
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    new-instance v1, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;

    invoke-direct {v1, v8, v0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    return-object v1

    :pswitch_f
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    neg-float v1, v1

    cmpg-float v2, v1, v6

    if-gez v2, :cond_11

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getCanScrollForward()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_11
    cmpl-float v2, v1, v6

    if-lez v2, :cond_12

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getCanScrollBackward()Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_b

    :cond_12
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_13

    goto :goto_8

    :cond_13
    const-string v2, "entered drag with non-zero pending scroll"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_8
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    add-float/2addr v2, v1

    iput v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_18

    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    iget-boolean v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->hasLookaheadOccurred:Z

    xor-int/2addr v9, v8

    invoke-virtual {v4, v3, v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v4

    if-eqz v4, :cond_14

    iget-object v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    if-eqz v9, :cond_14

    invoke-virtual {v9, v3, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v3

    if-eqz v3, :cond_15

    iput-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    :cond_14
    move-object v7, v4

    :cond_15
    if-eqz v7, :cond_16

    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->hasLookaheadOccurred:Z

    invoke-virtual {v0, v7, v3, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;ZZ)V

    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v3, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    goto :goto_9

    :cond_16
    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurement:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    :cond_17
    iget v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    :cond_18
    :goto_9
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_19

    :goto_a
    move v6, v1

    goto :goto_b

    :cond_19
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    sub-float/2addr v1, v2

    iput v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    goto :goto_a

    :cond_1a
    :goto_b
    neg-float v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_10
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState;

    neg-float v1, v1

    cmpg-float v2, v1, v6

    if-gez v2, :cond_1b

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getCanScrollForward()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_1b
    cmpl-float v2, v1, v6

    if-lez v2, :cond_1c

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getCanScrollBackward()Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_f

    :cond_1c
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_1d

    goto :goto_c

    :cond_1d
    const-string v2, "entered drag with non-zero pending scroll"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_c
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    add-float/2addr v2, v1

    iput v2, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_22

    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    iget-boolean v9, v0, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadOccurred:Z

    xor-int/2addr v9, v8

    invoke-virtual {v4, v3, v9}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v4

    if-eqz v4, :cond_1e

    iget-object v9, v0, Landroidx/compose/foundation/lazy/LazyListState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    if-eqz v9, :cond_1e

    invoke-virtual {v9, v3, v8}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v3

    if-eqz v3, :cond_1f

    iput-object v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    :cond_1e
    move-object v7, v4

    :cond_1f
    if-eqz v7, :cond_20

    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadOccurred:Z

    invoke-virtual {v0, v7, v3, v8}, Landroidx/compose/foundation/lazy/LazyListState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V

    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v3, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2, v7}, Landroidx/compose/foundation/lazy/LazyListState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    goto :goto_d

    :cond_20
    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurement:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    :cond_21
    iget v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/lazy/LazyListState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    :cond_22
    :goto_d
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_23

    :goto_e
    move v6, v1

    goto :goto_f

    :cond_23
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    sub-float/2addr v1, v2

    iput v6, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    goto :goto_e

    :cond_24
    :goto_f
    neg-float v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_11
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    iget-wide v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    return-object v0

    :pswitch_12
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    iget-wide v1, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    iget v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->latestScrollSource:I

    invoke-static {v0, v3, v1, v2, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->access$performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    move-result-wide v0

    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    return-object v2

    :pswitch_13
    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableNode;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

    iput-object v1, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->childWasMaxVisibleBeforeViewportShrunk:Z

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-wide v2, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v1

    if-nez v1, :cond_25

    iput-boolean v8, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->launchAnimation()V

    :cond_25
    iput-boolean v4, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->childWasMaxVisibleBeforeViewportShrunk:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/ScrollState;

    iget-object v2, v0, Landroidx/compose/foundation/ScrollState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v5, v0, Landroidx/compose/foundation/ScrollState;->accumulator:F

    add-float/2addr v3, v5

    iget-object v5, v0, Landroidx/compose/foundation/ScrollState;->_maxValueState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v6, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v5

    cmpg-float v3, v3, v5

    if-nez v3, :cond_26

    move v4, v8

    :cond_26
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    int-to-float v2, v3

    sub-float v2, v5, v2

    iput v2, v0, Landroidx/compose/foundation/ScrollState;->accumulator:F

    if-nez v4, :cond_27

    move v1, v5

    :cond_27
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_16
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    iget-wide v1, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/CombinedClickableNode;

    iget-boolean v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    if-eqz v1, :cond_28

    iget-object v0, v0, Landroidx/compose/foundation/AbstractClickableNode;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_28
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    iget-wide v1, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/ClickableNode;

    iget-boolean v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    if-eqz v1, :cond_29

    iget-object v0, v0, Landroidx/compose/foundation/AbstractClickableNode;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_29
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    check-cast v1, Landroidx/compose/ui/draw/CacheDrawScope;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/BorderModifierNode;

    iget v2, v0, Landroidx/compose/foundation/BorderModifierNode;->width:F

    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getDensity()F

    move-result v5

    mul-float/2addr v5, v2

    cmpl-float v2, v5, v6

    if-ltz v2, :cond_47

    iget-object v2, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v2}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_47

    iget v2, v0, Landroidx/compose/foundation/BorderModifierNode;->width:F

    invoke-static {v2, v6}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-eqz v2, :cond_2a

    move v2, v3

    goto :goto_10

    :cond_2a
    iget v2, v0, Landroidx/compose/foundation/BorderModifierNode;->width:F

    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getDensity()F

    move-result v5

    mul-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v2, v5

    :goto_10
    iget-object v5, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v5}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v5

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v5, v9

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    div-float v2, v10, v6

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v11, v5

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v13, v5

    const/16 v5, 0x20

    shl-long/2addr v11, v5

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    or-long v17, v11, v13

    iget-object v9, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v9}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v11

    shr-long/2addr v11, v5

    long-to-int v9, v11

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    sub-float/2addr v9, v10

    iget-object v11, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v11}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v11

    and-long/2addr v11, v15

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    sub-float/2addr v11, v10

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v12, v9

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    move/from16 p0, v5

    move v11, v6

    int-to-long v5, v9

    shl-long v12, v12, p0

    and-long/2addr v5, v15

    or-long/2addr v5, v12

    mul-float v20, v10, v11

    iget-object v9, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v9}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v9

    cmpl-float v9, v20, v9

    if-lez v9, :cond_2b

    move/from16 v19, v8

    goto :goto_11

    :cond_2b
    move/from16 v19, v4

    :goto_11
    iget-object v9, v0, Landroidx/compose/foundation/BorderModifierNode;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v11, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v11}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v11

    iget-object v13, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v13}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v13

    invoke-interface {v9, v11, v12, v13, v1}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Brush;

    move-result-object v9

    instance-of v11, v9, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v11, :cond_3d

    iget-object v2, v0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/Brush;

    check-cast v9, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v5, v9, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    if-eqz v19, :cond_2c

    new-instance v0, Landroidx/compose/runtime/Latch$await$2$2;

    const/4 v3, 0x7

    invoke-direct {v0, v3, v9, v2}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Lcom/google/android/gms/tasks/zza;

    move-result-object v0

    goto/16 :goto_1f

    :cond_2c
    instance-of v6, v2, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v6, :cond_2d

    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/graphics/SolidColor;

    iget-wide v10, v6, Landroidx/compose/ui/graphics/SolidColor;->value:J

    invoke-static {v3, v10, v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v10

    new-instance v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    const/4 v6, 0x5

    invoke-direct {v3, v10, v11, v6}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(JI)V

    move v6, v8

    goto :goto_12

    :cond_2d
    move v6, v4

    move-object v3, v7

    :goto_12
    move-object v10, v5

    check-cast v10, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/AndroidPath;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v10

    iget v11, v10, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v12, v10, Landroidx/compose/ui/geometry/Rect;->left:F

    iget-object v13, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    if-nez v13, :cond_2e

    new-instance v13, Landroidx/compose/foundation/BorderCache;

    invoke-direct {v13}, Landroidx/compose/foundation/BorderCache;-><init>()V

    iput-object v13, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    :cond_2e
    iget-object v13, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v14, v13, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/AndroidPath;

    if-nez v14, :cond_2f

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v14

    iput-object v14, v13, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/AndroidPath;

    :cond_2f
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    sget-object v13, Landroidx/compose/ui/graphics/Path$Direction;->$VALUES:[Landroidx/compose/ui/graphics/Path$Direction;

    iget v13, v10, Landroidx/compose/ui/geometry/Rect;->left:F

    move-wide/from16 v27, v15

    iget v15, v10, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget v7, v10, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v8, v10, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-nez v17, :cond_30

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-nez v17, :cond_30

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-nez v17, :cond_30

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-eqz v17, :cond_31

    :cond_30
    const-string v17, "Invalid rectangle, make sure no value is NaN"

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_31
    iget-object v4, v14, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    if-nez v4, :cond_32

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v14, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    :cond_32
    iget-object v4, v14, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v13, v8, v7, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget-object v7, v14, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    const/4 v4, 0x0

    invoke-virtual {v14, v14, v5, v4}, Landroidx/compose/ui/graphics/AndroidPath;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget v5, v10, Landroidx/compose/ui/geometry/Rect;->right:F

    sub-float/2addr v5, v12

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v5, v7

    float-to-int v5, v5

    iget v7, v10, Landroidx/compose/ui/geometry/Rect;->bottom:F

    sub-float/2addr v7, v11

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-int v7, v7

    move-object v8, v2

    move-object/from16 p1, v3

    int-to-long v2, v5

    shl-long v2, v2, p0

    move-wide/from16 v17, v2

    int-to-long v2, v7

    and-long v2, v2, v27

    or-long v2, v17, v2

    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iget-object v7, v0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    if-eqz v5, :cond_33

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/AndroidImageBitmap;->getConfig-_sVssgQ()I

    move-result v13

    new-instance v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    invoke-direct {v15, v13}, Landroidx/compose/ui/graphics/ImageBitmapConfig;-><init>(I)V

    goto :goto_13

    :cond_33
    const/4 v15, 0x0

    :goto_13
    if-nez v15, :cond_34

    goto :goto_14

    :cond_34
    iget v13, v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;->value:I

    if-nez v13, :cond_35

    goto :goto_17

    :cond_35
    :goto_14
    if-eqz v5, :cond_36

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/AndroidImageBitmap;->getConfig-_sVssgQ()I

    move-result v13

    new-instance v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    invoke-direct {v15, v13}, Landroidx/compose/ui/graphics/ImageBitmapConfig;-><init>(I)V

    goto :goto_15

    :cond_36
    const/4 v15, 0x0

    :goto_15
    if-nez v15, :cond_37

    goto :goto_16

    :cond_37
    iget v13, v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;->value:I

    if-eq v6, v13, :cond_38

    :goto_16
    const/16 v22, 0x0

    goto :goto_18

    :cond_38
    :goto_17
    const/16 v22, 0x1

    :goto_18
    if-eqz v5, :cond_3a

    if-eqz v7, :cond_3a

    iget-object v13, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v13}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v15

    move-wide/from16 v17, v2

    shr-long v2, v15, p0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    iget-object v3, v5, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v2, v2, v13

    if-gtz v2, :cond_3b

    iget-object v2, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v2}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v15

    move-object v13, v3

    and-long v2, v15, v27

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_3b

    if-nez v22, :cond_39

    goto :goto_19

    :cond_39
    move-object v3, v8

    goto :goto_1a

    :cond_3a
    move-wide/from16 v17, v2

    :cond_3b
    :goto_19
    shr-long v2, v17, p0

    long-to-int v2, v2

    move-object v3, v8

    and-long v7, v17, v27

    long-to-int v5, v7

    invoke-static {v2, v5, v6}, Landroidx/compose/ui/graphics/Brush;->ImageBitmap-x__-hDU$default(III)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    move-result-object v5

    iput-object v5, v0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    sget-object v2, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->EmptyCanvas:Landroid/graphics/Canvas;

    new-instance v7, Landroidx/compose/ui/graphics/AndroidCanvas;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;-><init>()V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-static {v5}, Landroidx/compose/ui/graphics/Brush;->asAndroidBitmap(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v7, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    iput-object v7, v0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    :goto_1a
    iget-object v2, v0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    if-nez v2, :cond_3c

    new-instance v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object v2, v0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    :cond_3c
    iget-object v6, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object v0, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-object/from16 v29, v2

    move-object v8, v3

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v2

    iget-object v13, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v13}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v13

    iget-object v15, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    move-object/from16 v16, v8

    iget-object v8, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v38, v10

    iget-object v10, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    iget-wide v4, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    iput-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iput-object v13, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v7, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    iput-wide v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;->save()V

    sget-wide v30, Landroidx/compose/ui/graphics/Color;->Black:J

    const/16 v36, 0x0

    const/16 v37, 0x3a

    const-wide/16 v32, 0x0

    move-wide/from16 v34, v2

    invoke-static/range {v29 .. v37}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    neg-float v2, v12

    neg-float v3, v11

    iget-object v11, v6, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v11, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    :try_start_2
    iget-object v9, v9, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    new-instance v19, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v23, 0x0

    const/16 v24, 0x1e

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v24}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    const/16 v26, 0x34

    const/16 v24, 0x0

    move-object/from16 v22, v9

    move-object/from16 v23, v16

    move-object/from16 v25, v19

    move-object/from16 v21, v29

    invoke-static/range {v21 .. v26}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v11

    shr-long v11, v11, p0

    long-to-int v9, v11

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    const/4 v11, 0x1

    int-to-float v11, v11

    add-float/2addr v9, v11

    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v12

    shr-long v12, v12, p0

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    div-float/2addr v9, v12

    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v12

    and-long v12, v12, v27

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    add-float/2addr v12, v11

    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v19

    move/from16 p0, v12

    and-long v11, v19, v27

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    div-float v12, p0, v11

    move-object/from16 p0, v14

    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v13

    move-wide/from16 v19, v4

    invoke-virtual {v6}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-virtual {v6}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v11

    invoke-interface {v11}, Landroidx/compose/ui/graphics/Canvas;->save()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v11, v6, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v11, v9, v12, v13, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->scale-0AR0LA0(FFJ)V

    const/16 v25, 0x0

    const/16 v26, 0x1c

    const/16 v24, 0x0

    move-object/from16 v22, p0

    move-object/from16 v21, v29

    invoke-static/range {v21 .. v26}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v6}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v6, v4, v5}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v4, v6, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v2, v2

    neg-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    iput-object v15, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iput-object v8, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v10, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    move-wide/from16 v2, v19

    iput-wide v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    move-object/from16 v5, v40

    iget-object v0, v5, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    move-object/from16 v0, v39

    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v21, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;

    move-object/from16 v26, p1

    move-object/from16 v23, v0

    move-wide/from16 v24, v17

    move-object/from16 v22, v38

    invoke-direct/range {v21 .. v26}, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;-><init>(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroidx/compose/ui/graphics/BlendModeColorFilter;)V

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Lcom/google/android/gms/tasks/zza;

    move-result-object v0

    goto/16 :goto_1f

    :catchall_2
    move-exception v0

    goto :goto_1b

    :catchall_3
    move-exception v0

    :try_start_5
    invoke-virtual {v6}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v6, v4, v5}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_1b
    iget-object v1, v6, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v2, v2

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    throw v0

    :cond_3d
    instance-of v3, v9, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v3, :cond_42

    iget-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/Brush;

    check-cast v9, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v4, v9, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    invoke-static {v4}, Landroidx/compose/ui/geometry/RoundRectKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v7

    if-eqz v7, :cond_3e

    iget-wide v7, v4, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    new-instance v20, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v13, 0x0

    const/16 v14, 0x1e

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, v20

    invoke-direct/range {v9 .. v14}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    new-instance v9, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;

    move v14, v2

    move-object v11, v3

    move-wide v12, v7

    move v15, v10

    move-wide/from16 v16, v17

    move/from16 v10, v19

    move-wide/from16 v18, v5

    invoke-direct/range {v9 .. v20}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;-><init>(ZLandroidx/compose/ui/graphics/Brush;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    invoke-virtual {v1, v9}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Lcom/google/android/gms/tasks/zza;

    move-result-object v0

    goto/16 :goto_1f

    :cond_3e
    move-object v2, v3

    move/from16 v8, v19

    iget-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    if-nez v3, :cond_3f

    new-instance v3, Landroidx/compose/foundation/BorderCache;

    invoke-direct {v3}, Landroidx/compose/foundation/BorderCache;-><init>()V

    iput-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    :cond_3f
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/AndroidPath;

    if-nez v3, :cond_40

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/AndroidPath;

    :cond_40
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    if-nez v8, :cond_41

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v0

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v5

    sub-float v12, v5, v10

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v5

    sub-float v13, v5, v10

    iget-wide v5, v4, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    invoke-static {v10, v5, v6}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    move-result-wide v14

    iget-wide v5, v4, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    invoke-static {v10, v5, v6}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    move-result-wide v16

    iget-wide v5, v4, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    invoke-static {v10, v5, v6}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    move-result-wide v20

    iget-wide v4, v4, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    invoke-static {v10, v4, v5}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    move-result-wide v18

    new-instance v9, Landroidx/compose/ui/geometry/RoundRect;

    move v11, v10

    invoke-direct/range {v9 .. v21}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJ)V

    invoke-static {v0, v9}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v3, v0, v4}, Landroidx/compose/ui/graphics/AndroidPath;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    :cond_41
    new-instance v0, Landroidx/compose/runtime/Latch$await$2$2;

    const/16 v4, 0x8

    invoke-direct {v0, v4, v3, v2}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Lcom/google/android/gms/tasks/zza;

    move-result-object v0

    goto :goto_1f

    :cond_42
    move-wide/from16 v16, v17

    move/from16 v8, v19

    move-wide/from16 v18, v5

    instance-of v2, v9, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v2, :cond_46

    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/Brush;

    if-eqz v8, :cond_43

    const-wide/16 v2, 0x0

    move-wide/from16 v22, v2

    goto :goto_1c

    :cond_43
    move-wide/from16 v22, v16

    :goto_1c
    if-eqz v8, :cond_44

    iget-object v2, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v2}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v5

    move-wide/from16 v24, v5

    goto :goto_1d

    :cond_44
    move-wide/from16 v24, v18

    :goto_1d
    if-eqz v8, :cond_45

    sget-object v2, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    move-object/from16 v26, v2

    goto :goto_1e

    :cond_45
    new-instance v9, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v13, 0x0

    const/16 v14, 0x1e

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v14}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    move-object/from16 v26, v9

    :goto_1e
    new-instance v20, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;

    const/16 v27, 0x0

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v27}, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;-><init>(Ljava/lang/Object;JJLjava/lang/Object;I)V

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Lcom/google/android/gms/tasks/zza;

    move-result-object v0

    goto :goto_1f

    :cond_46
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_47
    sget-object v0, Landroidx/compose/foundation/ImageKt$Image$1$1;->INSTANCE$1:Landroidx/compose/foundation/ImageKt$Image$1$1;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Lcom/google/android/gms/tasks/zza;

    move-result-object v0

    :goto_1f
    return-object v0

    :pswitch_19
    check-cast v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    check-cast v1, Landroidx/compose/animation/core/AnimationVector4D;

    iget v2, v1, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    cmpg-float v4, v2, v6

    if-gez v4, :cond_48

    move v2, v6

    :cond_48
    cmpl-float v4, v2, v3

    if-lez v4, :cond_49

    move v2, v3

    :cond_49
    iget v4, v1, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    const/high16 v7, -0x41000000    # -0.5f

    cmpg-float v8, v4, v7

    if-gez v8, :cond_4a

    move v4, v7

    :cond_4a
    cmpl-float v8, v4, v5

    if-lez v8, :cond_4b

    move v4, v5

    :cond_4b
    iget v8, v1, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    cmpg-float v9, v8, v7

    if-gez v9, :cond_4c

    goto :goto_20

    :cond_4c
    move v7, v8

    :goto_20
    cmpl-float v8, v7, v5

    if-lez v8, :cond_4d

    goto :goto_21

    :cond_4d
    move v5, v7

    :goto_21
    iget v1, v1, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    cmpg-float v7, v1, v6

    if-gez v7, :cond_4e

    goto :goto_22

    :cond_4e
    move v6, v1

    :goto_22
    cmpl-float v1, v6, v3

    if-lez v1, :cond_4f

    goto :goto_23

    :cond_4f
    move v3, v6

    :goto_23
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Oklab:Landroidx/compose/ui/graphics/colorspace/Oklab;

    invoke-static {v2, v4, v5, v3, v1}, Landroidx/compose/ui/graphics/Brush;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide v1

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    invoke-static {v1, v2, v0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide v0

    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    return-object v2

    :pswitch_1b
    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1c
    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "Recomposer effect job completed"

    invoke-static {v2, v1}, Lkotlinx/coroutines/JobKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v2

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/Recomposer;

    iget-object v3, v0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    iget-object v4, v0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    if-eqz v4, :cond_50

    iget-object v5, v0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v6, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v5, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-interface {v4, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    iput-object v7, v0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    new-instance v2, Landroidx/compose/runtime/Latch$await$2$2;

    const/16 v5, 0x19

    invoke-direct {v2, v5, v0, v1}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v2}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    goto :goto_24

    :catchall_4
    move-exception v0

    goto :goto_25

    :cond_50
    iput-object v2, v0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->ShutDown:Landroidx/compose/runtime/Recomposer$State;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_24
    monitor-exit v3

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_25
    monitor-exit v3

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
