.class public final Landroidx/compose/material3/ButtonKt$Button$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $content:Ljava/lang/Object;

.field public final synthetic $contentPadding:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$r8$classId:I

    iput-object p3, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$contentPadding:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$content:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$contentPadding:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$content:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p3, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$content:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$contentPadding:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$r8$classId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v6, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$content:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$contentPadding:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p0, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    iget-wide p0, p0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    new-instance p2, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    invoke-direct {p2, p0, p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    return-object p2

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    check-cast p0, Lcom/airbnb/lottie/LottieComposition;

    check-cast v6, Landroidx/compose/ui/Modifier;

    const p2, 0x180001

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, v6, p1, p2}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->LottieAnimation(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    return-object v5

    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v4}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, v6, p1, p2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->ProvideAndroidCompositionLocals(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    return-object v5

    :pswitch_2
    check-cast p1, Landroidx/compose/ui/graphics/Canvas;

    check-cast p2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->drawBlockCanvas:Landroidx/compose/ui/graphics/Canvas;

    iput-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->drawBlockParentLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object p1

    sget-object p2, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    sget-object p2, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE$3:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    check-cast v6, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

    invoke-virtual {p1, p0, p2, v6}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iput-boolean v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    :goto_0
    return-object v5

    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    and-int/2addr p2, v4

    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p2

    if-eqz p2, :cond_7

    check-cast p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->activeState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->startReusableGroup(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result p0

    if-eqz p2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v6, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    iget p2, p1, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    const-string p2, "No nodes can be emitted before calling dactivateToEndGroup"

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :goto_2
    iget-boolean p2, p1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez p2, :cond_5

    if-nez p0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    goto :goto_3

    :cond_4
    iget-object p0, p1, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget p2, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget p0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    iget-object v0, p1, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v0, v0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v3, Landroidx/compose/runtime/changelist/Operation$DeactivateCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$DeactivateCurrentGroup;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget-object v0, p1, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/ArrayList;

    invoke-static {p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(IILjava/util/List;)V

    iget-object p0, p1, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    :cond_5
    :goto_3
    iget-boolean p0, p1, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz p0, :cond_6

    iget-object p0, p1, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget p0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    iget p2, p1, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-ne p0, p2, :cond_6

    iput v1, p1, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    iput-boolean v2, p1, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    :cond_6
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_4
    return-object v5

    :pswitch_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Landroidx/compose/ui/semantics/SemanticsNode;

    check-cast v6, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    check-cast p0, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    iget-object p0, p0, Landroidx/compose/ui/platform/SemanticsNodeCopy;->children:Landroidx/collection/MutableIntSet;

    iget v0, p2, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntSet;->contains(I)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {v6, p1, p2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->updateBuffersOnAppeared(ILandroidx/compose/ui/semantics/SemanticsNode;)V

    iget-object p0, v6, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v5

    :pswitch_5
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    check-cast p0, Landroidx/compose/ui/text/TextStyle;

    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v4}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, v6, p1, p2}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    return-object v5

    :pswitch_6
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    if-ne p2, v3, :cond_a

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_6

    :cond_a
    :goto_5
    check-cast p0, Landroidx/compose/material3/Typography;

    iget-object p0, p0, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {p0, v6, p1, v2}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_6
    return-object v5

    :pswitch_7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    iget p2, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr p1, p2

    check-cast v6, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;

    iget-object p2, v6, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;->this$0:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/gestures/ScrollScope;

    invoke-interface {p2, p1}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    move-result p1

    iget p2, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    add-float/2addr p2, p1

    iput p2, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    return-object v5

    :pswitch_8
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_b

    move v0, v4

    goto :goto_7

    :cond_b
    move v0, v2

    :goto_7
    and-int/2addr p2, v4

    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p2

    if-eqz p2, :cond_c

    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v6, p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_c
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_8
    return-object v5

    :pswitch_9
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    iget-wide v0, p2, Landroidx/compose/ui/unit/Constraints;->value:J

    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    invoke-direct {p2, p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeMeasureScope;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    new-instance p0, Landroidx/compose/ui/unit/Constraints;

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    invoke-interface {v6, p2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/MeasureResult;

    return-object p0

    :pswitch_a
    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    move-object p2, v6

    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    and-int/lit8 v0, p1, 0x3

    if-eq v0, v3, :cond_d

    move v0, v4

    goto :goto_9

    :cond_d
    move v0, v2

    :goto_9
    and-int/2addr p1, v4

    invoke-virtual {v10, p1, v0}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->itemProvider:Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;

    invoke-virtual {p1}, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;->invoke()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    iget p1, p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->index:I

    iget-object v0, p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->key:Ljava/lang/Object;

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    move-result v3

    if-ge p1, v3, :cond_f

    invoke-interface {v6, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_b

    :cond_e
    :goto_a
    move v8, p1

    goto :goto_c

    :cond_f
    :goto_b
    invoke-interface {v6, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getIndex(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v1, :cond_e

    iput p1, p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->index:I

    goto :goto_a

    :goto_c
    if-eq v8, v1, :cond_10

    const p1, -0x275cf883

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v7, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->saveableStateHolder:Landroidx/compose/runtime/saveable/SaveableStateHolder;

    iget-object v9, p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->key:Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->access$SkippableItem-JVlU9Rs(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_d

    :cond_10
    const p0, -0x2759648f

    invoke-virtual {v10, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_d
    invoke-virtual {v10, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_11

    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne p1, p0, :cond_12

    :cond_11
    new-instance p1, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 p0, 0xe

    invoke-direct {p1, p0, p2}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    goto :goto_e

    :cond_13
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_e
    return-object v5

    :pswitch_b
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    iget-wide v0, p2, Landroidx/compose/ui/unit/Constraints;->value:J

    new-instance p2, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    invoke-direct {p2, p1, v0, v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;-><init>(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)V

    new-instance v2, Landroidx/compose/material3/ButtonKt$Button$2$1;

    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {v2, v6, p2, v3}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;I)V

    new-instance p2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x73eea2c7

    invoke-direct {p2, v2, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    invoke-interface {p1, v5, p2}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object p2

    check-cast p0, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-interface {p0, p1, p2, v0, v1}, Landroidx/compose/ui/layout/MeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_14

    move v0, v4

    goto :goto_f

    :cond_14
    move v0, v2

    :goto_f
    and-int/2addr p2, v4

    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p2

    if-eqz p2, :cond_15

    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    check-cast p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v6, p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_15
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_10
    return-object v5

    :pswitch_d
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    iget-wide v0, p2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    check-cast p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    check-cast v6, Landroidx/compose/foundation/gestures/ScrollableNode;

    iget-object p0, v6, Landroidx/compose/foundation/gestures/ScrollableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    if-eqz p0, :cond_16

    new-instance p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    invoke-direct {p1, v0, v1}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(J)V

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v5

    :pswitch_e
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    if-ne p2, v3, :cond_18

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_11

    :cond_17
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_13

    :cond_18
    :goto_11
    sget p2, Landroidx/compose/material3/ButtonDefaults;->MinWidth:F

    sget v0, Landroidx/compose/material3/ButtonDefaults;->MinHeight:F

    invoke-static {p2, v0}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(FF)Landroidx/compose/ui/Modifier;

    move-result-object p2

    check-cast p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {p2, p0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValuesImpl;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    sget-object p2, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/16 v1, 0x36

    invoke-static {p2, v0, p1, v1}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object p2

    iget v0, p1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-static {p1, p0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v3, p1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v3, :cond_19

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_19
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_12
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p1, p2, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p1, v1, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v1, p1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_1a

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_1a
    invoke-static {v0, p1, v0, p2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_1b
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p1, p0, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 p0, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object p2, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-virtual {v6, p2, p1, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_13
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
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
